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
            using (ProductsEntities ctx = new ProductsEntities())
            {
                foreach (Category c in ctx.Categories)
                {
                    Console.WriteLine("---- " + c.CategoryName + " ----");
                    foreach (Product p in c.Products)
                    {
                        Console.WriteLine(p.ProductName);
                    }
                }
                

//                Category category = new Category();
//                category.CategoryName = "Neue Kategory";
//
//                Product product = new Product();
//                product.ProductName = "Neues Produkt";
//                product.Category = category;
//                product.Description = "Ein neues Produkt";
//
//                ctx.Products.Add(product);
//
//                ctx.SaveChanges();
            }
            Console.ReadKey();
        }
    }
}
