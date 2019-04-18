using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// make sure to include this namespace
using System.Data;

namespace Ch15Cart
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Product selectedProduct = GetSelectedProduct();
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductID];

                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("Cart.aspx");
            }
        }

        private Product GetSelectedProduct()
        {
            // get row from SqlDataSource based on value in dropdownlist
            DataView productsTable = (DataView)
                SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            DataRowView row = productsTable[0];

            // create a new product object and load with data from row
            Product p = new Product();
            p.ProductID = row["ProductID"].ToString();
            p.ModelNo = row["ModelNo"].ToString();
            p.ShortDescription = row["ShortDesc"].ToString();
            p.LongDescription = row["LongDesc"].ToString();
            p.VarPrice = (decimal)row["VarPrice"];
            p.image = row["image"].ToString();
            return p;
        }
    }
}