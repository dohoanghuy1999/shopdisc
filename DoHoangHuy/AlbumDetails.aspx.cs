using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DoHoangHuy.Models;
using System.Web.ModelBinding;

namespace DoHoangHuy
{
    public partial class AlbumDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Album> GetDetails([QueryString("bookID")] int? bookId)
        {
            var _db = new DoHoangHuy.Models.AlbumContext();
            IQueryable<Album> query = _db.Albums;
            if (bookId.HasValue && bookId > 0)
            {
                query = query.Where(p => p.MaDia == bookId);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}