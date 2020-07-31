<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="resources/dist/css/qlttdn.css">
<script src="resources/model/ban_hang/ajax_danh_sach_hoa_don.js"></script>
<script src="resources/pages/quan_ly_ban_hang/ajax_danh_sach_hoa_don.js"></script>

<!-- Main content -->
<section class="content">
    <div class="buifmaop">
        <div class="buifmaoptitle">
            <span class="page-title">Danh sách hóa đơn</span>
        </div>
        <div class="buifmaopct">
            <div class="row">
                <div class="col-md-6">
                    <div class="caifop1li form-group">
                        <label for="bimo1">Mã hóa đơn:</label>
                        <input type="text" class="form-control" id="bimo1">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="caifop1li form-group">
                        <label for="bimo1">Tên khách hàng:</label>
                        <input type="text" class="form-control" id="bimo2">
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="caifop1li form-group">
                        <label for="bimo1">Tên nhân viên:</label>
                        <input type="text" class="form-control" id="bimo3">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="caifop1li">
                        <label>Trạng Thái:</label>
                        <select class="js-example-basic-multiple" name="state" id="bimo4">
                            <option value="-1">Tất cả</option>
                            <option value="0">Lưu tạm</option>
                            <option value="1">Chưa hoàn thành</option>
                            <option value="2">Hoàn thành</option>
                        </select>
                        <span class="help-block">Help block with success</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="caifop1li form-group">
                        <label class="control-label">Từ ngày:</label>
                        <div class="input-group date">
                            <input type="text" class="form-control border-gray date-vn" id="bimo5">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                        </div>
                        <span class="help-block">Help block with success</span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="caifop1li form-group">
                        <label class="control-label">Đến ngày:</label>
                        <div class="input-group date">
                            <input type="text" class="form-control border-gray date-vn" id="bimo6">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar" aria-hidden="true"></i>
                            </div>
                        </div>
                        <span class="help-block">Help block with success</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 text-center">
                    <label style="opacity: 0">btn</label>
                    <button class="btn btn-primary" id="btn-search">Tìm Kiếm</button>
                </div>
                <div class="col-xs-6 text-center">
                    <label style="opacity: 0">btn</label>
                    <button class="btn btn-primary" id="btn-excel">In danh sách hóa đơn</button>
                </div>
            </div>
        </div>
    </div>
    <div class="buifmaoptb table-responsive">
        <table class="table table-hover" id="table-hoa-don">
            <tbody>
            <tr>
                <th>STT</th>
                <th>Mã hóa đơn</th>
                <th>Thời gian</th>
                <th>Tên nhân viên</th>
                <th>Tên khách hàng</th>
                <th>Tổng tiền</th>
                <th>Trạng thái</th>
            </tr>
            <tr>
                <td>1</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>2</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>3</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>4</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>5</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>6</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>
        <div class="page-link">
            <a href="chi-tiet-hoa-don?id=0" target="_blank"><i class="fas fa-plus-circle" ></i></a>
        </div>
    </div>
    <div class="receivepagi">
        <div class="pagi" id="pagination">
            <div class="paginationjs">
            </div>
        </div>
    </div>
</section>
<!-- /.content -->
<script>
    $(document).ready(function () {
        $('.js-example-basic-single').select2({ width: 'resolve' });
        $('.js-example-basic-multiple').select2({ width: 'resolve' });
    });
</script>