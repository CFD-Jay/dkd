package com.dkd.manage.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.dkd.common.exception.ServiceException;
import com.dkd.manage.domain.ExportRequest;
import com.dkd.manage.domain.Vo.SkuVo;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.dkd.common.annotation.Log;
import com.dkd.common.core.controller.BaseController;
import com.dkd.common.core.domain.AjaxResult;
import com.dkd.common.enums.BusinessType;
import com.dkd.manage.domain.Sku;
import com.dkd.manage.service.ISkuService;
import com.dkd.common.utils.poi.ExcelUtil;
import com.dkd.common.core.page.TableDataInfo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 商品管理Controller
 * 
 * @author yk
 * @date 2024-12-26
 */
@RestController
@RequestMapping("/manage/sku")
public class SkuController extends BaseController
{
    @Autowired
    private ISkuService skuService;

    /**
     * 查询商品管理列表
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:list')")
    @GetMapping("/list")
    public TableDataInfo list(Sku sku)
    {
        startPage();
        List<SkuVo> listVos = skuService.selectSkuVoList(sku);
        return getDataTable(listVos);
    }

    /**
     * 导出商品管理列表
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:export')")
    @Log(title = "商品管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Sku sku,@RequestParam(value = "res[ids]",required = false)Long[] ids) {

        //如果是选择部分商品进行导出。
        if (ids!=null) {
            List<Sku> list = skuService.selectSkuListBySkuIds(ids);
            ExcelUtil<Sku> util = new ExcelUtil<Sku>(Sku.class);
            //util.exportExcel(response, list, "商品管理数据");
            util.exportEasyExcel(response, list, "商品管理数据");
        }
        else
        {
            List<Sku> list = skuService.selectSkuList(sku);
            ExcelUtil<Sku> util = new ExcelUtil<Sku>(Sku.class);
            //util.exportExcel(response, list, "商品管理数据");
            util.exportEasyExcel(response, list, "商品管理数据");
        }
    }
    /**
     * 获取商品管理详细信息
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:query')")
    @GetMapping(value = "/{skuId}")
    public AjaxResult getInfo(@PathVariable("skuId") Long skuId)
    {
        return success(skuService.selectSkuBySkuId(skuId));
    }

    /**
     * 新增商品管理
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:add')")
    @Log(title = "商品管理", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Sku sku)
    {
        return toAjax(skuService.insertSku(sku));
    }

    /**
     * 修改商品管理
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:edit')")
    @Log(title = "商品管理", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Sku sku)
    {
        return toAjax(skuService.updateSku(sku));
    }

    /**
     * 删除商品管理
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:remove')")
    @Log(title = "商品管理", businessType = BusinessType.DELETE)
	@DeleteMapping("/{skuIds}")
    public AjaxResult remove(@PathVariable Long[] skuIds)
    {
        return toAjax(skuService.deleteSkuBySkuIds(skuIds));
    }

    /**
     * @@@excel文件上传
     */
    @PreAuthorize("@ss.hasPermi('manage:sku:add')")
    @Log(title = "商品管理", businessType = BusinessType.INSERT)
    @PostMapping("/importExcel")
    public AjaxResult excelImport(MultipartFile file) throws Exception {
        ExcelUtil<Sku>util=new ExcelUtil<>(Sku.class);
        //apache原生
        //List<Sku>skuList=util.importExcel(file.getInputStream());


        //easyexcel excel导出同理
       try{
           List<Sku>skuList=util.importEasyExcel(file.getInputStream());
           return toAjax(skuService.insertSkus(skuList));
       }catch (Exception e)
       {
           //@@@单防easyexcel的导入，数据异常时抛出的错无法被全局异常处理器捕捉，只能手动抛出
           throw new ServiceException("您的数据异常！");
       }

    }
}
