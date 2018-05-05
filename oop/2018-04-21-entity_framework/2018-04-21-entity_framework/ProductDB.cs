using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2018_04_21_entity_framework
{
    public class ProductDB
    {
        public List<Product> GetAllProducts()
        {
            using (ProductsEntities ctx = new ProductsEntities())
            {
                return ctx.Products.ToList();
            }

        }
        public bool CreateProduct(Product product)
        {
            try
            {
                using (ProductsEntities ctx = new ProductsEntities())
                {
                   ctx.Products.Add(product);
                   ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                Console.WriteLine("Couldn't create product.");
                return false;
            }

        }
        public Product GetProductById(int id)
        {
            using (ProductsEntities ctx = new ProductsEntities())
            {
                Product product = ctx.Products.SingleOrDefault(x => x.ProductID.Equals(id));
                if (product != null)
                {
                    return product;
                }
                else
                {
                    Console.WriteLine("This a a new product not yet in the database.");
                    return product;
                }
            }
        }
        public bool UpdateProduct(Product product)
        {
            try
            {
                using (ProductsEntities ctx = new ProductsEntities())
                {
                    ctx.Products.Attach(product);
                    ctx.Entry(product).State = System.Data.Entity.EntityState.Modified;
                    ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                Console.WriteLine("Couldn't update the product.");
                return false;
            }

        }
        public bool DeleteProduct(Product product)
        {
            try
            {
                using (ProductsEntities ctx = new ProductsEntities())
                {
                   ctx.Products.Attach(product);
                   ctx.Products.Remove(product);
                   ctx.SaveChanges();
                }
                return true;
            }
            catch (Exception)
            {
                Console.WriteLine("Couldn't delete objet.");
                return false;
            }
        }
    }
}
