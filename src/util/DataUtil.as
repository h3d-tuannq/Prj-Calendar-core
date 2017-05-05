package util
{
	import mx.collections.ArrayList;
	
	import model.Nghiphep;
	import model.NhanVien;
	
	import net.fproject.core.TimeUnit;
	import net.fproject.utils.DateTimeUtil;

	public class DataUtil
	{
		public function DataUtil()
		{
		}
		 
		public static function initUser():NhanVien{
				var user:NhanVien = new NhanVien();
				user.id = "001";
				user.hoVaTen = "Nguyen Thi Lan Anh";
				return user;
		}
		
		public static function formatDate(item:Date):String
		{
			return DateTimeUtil.formatDate(item);
		}
		
		public static function soNgayNghi(item:Object):String
		{
			var nghiPhep:Nghiphep;
			nghiPhep = item as Nghiphep;
			return (nghiPhep && nghiPhep.toiNgay && nghiPhep.tuNgay) ? 
				String((nghiPhep.toiNgay.time  - nghiPhep.tuNgay.time) / TimeUnit.DAY.milliseconds + 1): "0";
		}
		
		public static function caNghi(item:Object):String
		{
			switch(item.caNghi)
			{
				case 1:
				{
					return "Nghi Buoi Sang";
					break;
				}
				case 2:
				{
					return "Nghi Buoi Chieu";
					break;
				}
					
				default:
				{
					return "Nghi Ca Ngay";
					break;
				}
			}
		}
		
		
		public static function initDataTest():Object{
			
			var dataModel:Object = new Object;
			var ycNghiList:ArrayList = new ArrayList();
			var i:int = 0;
			var ycNghi:Nghiphep = new Nghiphep();
		    ycNghi.id = 1;
			ycNghi.nhanVien = DataUtil.initUser();
			ycNghi.tenNV = "Nguyen Thi Lan Anh";
			ycNghi.nhanVienId = "001";
			ycNghi.lydo = "Thich thi nghi";
			ycNghi.soNgay = "1";
			ycNghi.tuNgay = new Date();
			ycNghi.toiNgay = new Date();
			ycNghi.trangThai = "Da duoc chap nhan";
			ycNghiList.addItem(ycNghi);
			ycNghi.id = 2;
			ycNghiList.addItem(ycNghi);
			
			dataModel.ycNghiList = ycNghiList;
			return dataModel;
		}	
	}
}