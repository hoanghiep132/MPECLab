package com.tavi.tavi_mrs.service_impl.hoa_don;

import com.tavi.tavi_mrs.entities.hoa_don.HoaDon;
import com.tavi.tavi_mrs.repository.hoa_don.HoaDonRepo;
import com.tavi.tavi_mrs.service.hoa_don.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;

@Service
public class HoaDonServiceImpl implements HoaDonService {
    private static final java.util.logging.Logger LOGGER = Logger.getLogger(HoaDonServiceImpl.class.getName());

    @Autowired
    private HoaDonRepo hoaDonRepo;


    @Override
    public Optional<HoaDon> findById(int id) {
        return Optional.empty();
    }


    @Override
    public Optional<HoaDon> findById(int id, boolean xoa) {
        try {
            return hoaDonRepo.findById(id, xoa);
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "find-all-thuong-hieu-error : " + ex);
            ex.printStackTrace();
            return Optional.empty();
        }
    }

    @Override
    public Page<HoaDon> findAllToPage(Pageable pageable) {
        try {
            return hoaDonRepo.findAllToPage(pageable);
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "find-all-thuong-hieu-error : " + ex);
            ex.printStackTrace();
            return null;
        }
    }


    @Override
    public boolean setTrangThai(int id, int trangThai) {
        try {
            return hoaDonRepo.setTrangThai(id, trangThai) > 0;
        } catch (Exception ex) {
            ex.printStackTrace();
            LOGGER.log(Level.SEVERE, "set trang thai error : " + ex);
            return false;
        }
    }

    @Override
    public Optional<HoaDon> save(HoaDon hoaDon) {
        try {
            return Optional.ofNullable(hoaDonRepo.save(hoaDon));
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "save hoa don  error : " + ex);
            return Optional.empty();
        }
    }

    @Override
    public Page<HoaDon> findByMaHoaDonAndThoiGianAndTrangThai(String maHoaDon,String tenKhachHang, String tenNhanVien, Date ngayDau, Date ngayCuoi, int trangThai, Pageable pageable){
        try {
            return hoaDonRepo.findByMaHoaDonAndThoiGianAndTrangThai(maHoaDon,tenKhachHang,tenNhanVien, ngayDau, ngayCuoi, trangThai, pageable);
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "find-all-thuong-hieu-error : " + ex);
            ex.printStackTrace();
            return null;
        }
    }

    @Override
    public Page<HoaDon> findByChiNhanhAndText(int chiNhanhId, String text, Pageable pageable) {
        try {
            return hoaDonRepo.findByChiNhanhAndText(chiNhanhId, text, pageable);
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "findByChiNhanhAndText : " + ex);
            ex.printStackTrace();
            return null;
        }
    }

}
