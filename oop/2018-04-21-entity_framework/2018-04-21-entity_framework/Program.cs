using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_04_21_entity_framework

{
    class Program
    {
        static void Main(string[] args)
        {
            ProductDB dataaccess = new ProductDB();

            List<Product> products = dataaccess.GetAllProducts();
            foreach (var product in products)
            {
                Console.WriteLine(product.ProductName);
            }

            Product evilPad = dataaccess.GetProductById(7);
            if (evilPad != null)
            {
                Console.WriteLine(evilPad.ProductName);
            }
            dataaccess.DeleteProduct(evilPad);

            Product ipad = new Product();
            ipad.ProductName = "iPad Pro";
            ipad.CategoryID = 1;
            ipad.Description = "Simply and iPad nothing special";
            dataaccess.CreateProduct(ipad);

            ProductsEntities ctx = new ProductsEntities();
            Product numberEight = ctx.GetNumberEight().Single();
            Console.WriteLine(numberEight.Description);
            Console.ReadKey();
        }
    }
}
