

async function bieuDoDoanhThuTong(ngayDau, ngayCuoi){
    return ajaxGet(`v1/admin/hoa-don/doanh-thu?ngay-dau=${ngayDau}&ngay-cuoi=${ngayCuoi}`);
}

async function bieuDoDoanhThuThang(year,month){
    return ajaxGet(`v1/admin/hoa-don/doanh-thu-thang/${year}/${month}`);
}

async function bieuDoDoanhThuNam(year){
    return ajaxGet(`v1/admin/hoa-don/doanh-thu-nam/${year}`);
}