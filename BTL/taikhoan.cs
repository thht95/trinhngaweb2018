using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL
{
    public class taikhoan
    {
        string tendangnhap;
        string matkhau;
        string nguoidung;

        public string Tendangnhap
        {
            get
            {
                return tendangnhap;
            }

            set
            {
                tendangnhap = value;
            }
        }

        public string Matkhau
        {
            get
            {
                return matkhau;
            }

            set
            {
                matkhau = value;
            }
        }

        public string Nguoidung
        {
            get
            {
                return nguoidung;
            }

            set
            {
                nguoidung = value;
            }
        }

        public taikhoan() { }
        public taikhoan(string taikhoan, string matkhau,string nguoidung)
        {
            this.Tendangnhap = taikhoan;
            this.Matkhau = matkhau;
            this.Nguoidung = nguoidung;
	//final_test
        }

    }
 
}

