<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryRef" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="点位名称" prop="nodeName">
        <el-input
          v-model="queryParams.nodeName"
          placeholder="请输入点位名称"
          clearable
          @keyup.enter="handleQuery"
        />
      </el-form-item>
      <el-form-item label="区域名称" prop="regionName">
       <el-select
       v-model="queryParams.regionId"
       placeholder="请选择区域"
       clearable
       @mousedown="getRegionList">
      <el-option
        v-for="item in regionOptions"
        :key="item.regionName"
        :label="item.regionName"
        :value="item.id"
      />
    </el-select>
  </el-form-item>
  <el-form-item label="合作商" prop="partnerName">
       <el-select
       v-model="queryParams.partnerId"
       placeholder="请选择合作商"
       clearable
    >
      <el-option
        v-for="item in partnerOptions"
        :key="item.partnerName"
        :label="item.partnerName"
        :value="item.id"
      />
    </el-select>
  </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="Search" @click="handleQuery">搜索</el-button>
        <el-button icon="Refresh" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="Plus"
          @click="handleAdd"
          v-hasPermi="['manage:node:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
         
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['manage:node:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
         
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['manage:node:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="Download"
          @click="handleExport"
          v-hasPermi="['manage:node:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar v-model:showSearch="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="nodeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="序号" type="index" align="center" prop="id" />
      <el-table-column label="点位名称" align="center" prop="nodeName" />
     
      <el-table-column label="商圈类型" align="center" prop="businessCircleType">
        <template #default="scope">
          <dict-tag :options="business_type" :value="scope.row.businessCircleType"/>
        </template>
      </el-table-column>
      <el-table-column label="所在区域名" align="center" prop="region.regionName"/>
      <el-table-column label="合作商" align="center" prop="partner.partnerName" />
      <el-table-column label="详细地址" align="center" prop="addressDetail" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button link type="primary"  @click="handleUpdate(scope.row)" v-hasPermi="['manage:node:edit']">修改</el-button>
          <el-button link type="primary"  @click="handleDelete(scope.row)" v-hasPermi="['manage:node:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      v-model:page="queryParams.pageNum"
      v-model:limit="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改点位管理对话框 -->
    <el-dialog :title="title" v-model="open" width="500px" append-to-body>
      <el-form ref="nodeRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="点位名称" prop="nodeName">
          <el-input v-model="form.nodeName" placeholder="请输入点位名称" />
        </el-form-item>
        <el-form-item label="商圈类型" prop="businessCircleType">
          <el-select v-model="form.businessCircleType" placeholder="请选择商圈类型">
            <el-option
              v-for="dict in business_type"
              :key="dict.value"
              :label="dict.label"
              :value="parseInt(dict.value)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="区域名称" prop="regionName">
            <el-select
            v-model="form.regionId"
            placeholder="请选择区域"
            clearable
            @mousedown="getRegionList">
            <el-option
              v-for="item in regionOptions"
              :key="item.regionName"
              :label="item.regionName"
              :value="item.id"
            />
          </el-select>
      </el-form-item>
      <el-form-item label="合作商" prop="partnerName">
            <el-select
            v-model="form.partnerId"
            placeholder="请选择合作商"
            clearable
            @mousedown="getPartnerList">
            <el-option
              v-for="item in partnerOptions"
              :key="item.partnerName"
              :label="item.partnerName"
              :value="item.id"
            />
          </el-select>
      </el-form-item>
      <el-form-item label="详细地址" prop="addressDetail">
          <el-input v-model="form.addressDetail" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <template #footer>
        <div class="dialog-footer">
          <el-button type="primary" @click="submitForm">确 定</el-button>
          <el-button @click="cancel">取 消</el-button>
        </div>
      </template>
    </el-dialog>
  </div>
</template>

<script setup name="Node">
import { listNode, getNode, delNode, addNode, updateNode } from "@/api/manage/node";
import {listRegion} from "@/api/manage/region"
import { listPartner } from "@/api/manage/partner";
import { ref } from "vue";
import { nodeListByRegionId } from "@/api/manage/node";
const { proxy } = getCurrentInstance();
const { business_type } = proxy.useDict('business_type');
import {loadAllParams} from "@/api/page";
const nodeList = ref([]);
const open = ref(false);
const loading = ref(true);
const showSearch = ref(true);
const ids = ref([]);
const single = ref(true);
const multiple = ref(true);
const total = ref(0);
const title = ref("");
const regionOptions=ref([]);
const partnerOptions=ref([]);
const data = reactive({
  form: {},
  queryParams: {
    pageNum: 1,
    pageSize: 10,
    nodeName: null,
    regionId: null,
    partnerId: null,
  },
  rules: {
    nodeName: [
      { required: true, message: "点位名称不能为空", trigger: "blur" }
    ],
    addressDetail: [
      { required: true, message: "详细地址不能为空", trigger: "blur" }
    ],
    businessCircleType: [
      { required: true, message: "商圈类型不能为空", trigger: "change" }
    ],
    regionId: [
      { required: true, message: "区域ID不能为空", trigger: "blur" }
    ],
    partnerId: [
      { required: true, message: "合作商ID不能为空", trigger: "blur" }
    ],
  }
});

const { queryParams, form, rules } = toRefs(data);

/** 查询点位管理列表 */
function getList() {
  loading.value = true;
  console.log(JSON.stringify(queryParams.value, null, 2));
  listNode(queryParams.value).then(response => {
    nodeList.value = response.rows;
    total.value = response.total;
    loading.value = false;
  });
  console.log(JSON.stringify(nodeList.value, null, 2));
}

// 取消按钮
function cancel() {
  open.value = false;
  reset();
}

// 表单重置
function reset() {
  form.value = {
    id: null,
    nodeName: null,
    addressDetail: null,
    businessCircleType: null,
    regionId: null,
    partnerId: null,
    createTime: null,
    updateTime: null,
    createBy: null,
    updateBy: null,
    remark: null
  };
  proxy.resetForm("nodeRef");
}


/**
 * 当点击区域名称下拉框时，搜索所有区域
 */
function getRegionList(){
  
  listRegion(loadAllParams).then(response => {
    regionOptions.value = response.rows;
    
  });
  //console.log(JSON.stringify(regionOptions.value, null, 2)); // 格式化输出
 
}
function getPartnerList(){
  
  listPartner(loadAllParams.value).then(response => {
    partnerOptions.value = response.rows;
  });

}

/** 搜索按钮操作 */
function handleQuery() {
  // regionOptions.value.pageNum = 1;
  // partnerOptions.value.pageNum = 1;
  getList();
}

/** 重置按钮操作 */
function resetQuery() {
  proxy.resetForm("queryRef");
  queryParams.value.regionId=null;
  queryParams.value.partnerId=null;
  queryParams.value.nodeName=null;
  queryParams.value.pageNum=1;
  //regionOptions.value=[];
  getList();
}

// 多选框选中数据
function handleSelectionChange(selection) {
  ids.value = selection.map(item => item.id);
  single.value = selection.length != 1;
  multiple.value = !selection.length;
}

/** 新增按钮操作 */
function handleAdd() {
  reset();
  open.value = true;
  title.value = "添加点位管理";
}

/** 修改按钮操作 */
function handleUpdate(row) {
  reset();
  const _id = row.id || ids.value
  getNode(_id).then(response => {
    form.value = response.data;
    open.value = true;
    title.value = "修改点位管理";
  });
}

/** 提交按钮 */
function submitForm() {
  proxy.$refs["nodeRef"].validate(valid => {
    if (valid) {
      if (form.value.id != null) {
        updateNode(form.value).then(response => {
          proxy.$modal.msgSuccess("修改成功");
          open.value = false;
          getList();
        });
      } else {
        addNode(form.value).then(response => {
          proxy.$modal.msgSuccess("新增成功");
          open.value = false;
          getList();
        });
      }
    }
  });
}

/** 删除按钮操作 */
function handleDelete(row) {
  const _ids = row.id || ids.value;
  proxy.$modal.confirm('是否确认删除点位管理编号为"' + _ids + '"的数据项？').then(function() {
    return delNode(_ids);
  }).then(() => {
    getList();
    proxy.$modal.msgSuccess("删除成功");
  }).catch(() => {});
}

/** 导出按钮操作 */
function handleExport() {
  proxy.download('manage/node/export', {
    ...queryParams.value
  }, `node_${new Date().getTime()}.xlsx`)
}
//要么在下拉框加上@mousedown=getPartnerList 要么直接在脚本最后写，也会执行。
getPartnerList();
getList();
</script>
