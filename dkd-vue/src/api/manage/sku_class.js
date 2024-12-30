import request from '@/utils/request'

// 查询商品类型列表
export function listSku_class(query) {
  return request({
    url: '/manage/sku_class/list',
    method: 'get',
    params: query
  })
}

// 查询商品类型详细
export function getSku_class(classId) {
  return request({
    url: '/manage/sku_class/' + classId,
    method: 'get'
  })
}

// 新增商品类型
export function addSku_class(data) {
  return request({
    url: '/manage/sku_class',
    method: 'post',
    data: data
  })
}

// 修改商品类型
export function updateSku_class(data) {
  return request({
    url: '/manage/sku_class',
    method: 'put',
    data: data
  })
}

// 删除商品类型
export function delSku_class(classId) {
  return request({
    url: '/manage/sku_class/' + classId,
    method: 'delete'
  })
}
