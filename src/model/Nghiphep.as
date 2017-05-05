package model
{	
	import net.fproject.mvc.model.AbstractModel;
	
	[RemoteClass(alias="FNghiphep")]
	public class Nghiphep extends AbstractModel
	{
		[Bindable]
		public var id:int;
		
		private var _nhanVienId:String;

		[Bindable]
		public function get nhanVienId():String
		{
			return nhanVien ? nhanVien.id : _nhanVienId;
		}

		public function set nhanVienId(value:String):void
		{
			_nhanVienId = value;
		}

		private var _tenNV:String;

		[Bindable]
		public function get tenNV():String
		{
			return nhanVien ? nhanVien.hoVaTen : _tenNV;
		}

		public function set tenNV(value:String):void
		{
			_tenNV = value;
		}

		
		[Bindable]
		public var lydo:String;
		
		[Bindable]
		public var tuNgay:Date;
		
		[Bindable]
		public var toiNgay:Date;

		private var _soNgay:String;

		[Bindable]
		public function get soNgay():String
		{
			return _soNgay = "1";
		}

		public function set soNgay(value:String):void
		{
			_soNgay = value;
		}

		
		[Bindable]
		public var caNghi:String;
		
		[Bindable]
		public var trangThai:String;
		
		private var _convertTT:String;

		[Bindable]
		public function get convertTT():String
		{
			if(trangThai!= null && trangThai!= "" && trangThai == "0")
				return "Chưa được chấp nhận";
			else
				return "Được chấp nhận";
		}

		public function set convertTT(value:String):void
		{
			_convertTT = value;
		}

		
		private var _nhanVien:NhanVien;

		[Bindable]
		public function get nhanVien():NhanVien
		{
			return _nhanVien;
		}

		public function set nhanVien(value:NhanVien):void
		{
			_nhanVien = value;
		}
		
		[Bindable]
		public var status:int;

		
		public function Nghiphep()
		{
			super();
		}
	}
}