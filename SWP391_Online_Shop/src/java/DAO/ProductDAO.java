/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBcontext.DBContext {

    public List<Product> getAll() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getTop3Product() {
        String sql = "select top 3 Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int productId) {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID where Product.ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );

            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public List<Product> searchProductBySubCate(int subcate) {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID where Product.SubCategoryID = ?";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, subcate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Product> sortProductByNameAsc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.ProductName";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> sortProductByNameDesc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.ProductName desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> sortProductByPriceAsc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.OriginalPrice";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> sortProductByPriceDesc() {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID order by Product.OriginalPrice desc";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL")
                );
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> pagingProduct(int index) {
        String sql = "select Product.*,ProductImgURL from product inner join ProductImg on product.ProductID = ProductImg.ProductID "
                + "order by productID OFFSET ? ROWS FETCH NEXT 3 ROWS ONLY";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 3);
            //ps.setInt(2, entry);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
               Product p = new Product(rs.getInt("productID"),
                        rs.getString("ProductName"),
                        rs.getString("Description"),
                        rs.getDouble("OriginalPrice"),
                        rs.getDouble("SalePrice"),
                        rs.getInt("SubCategoryID"),
                        rs.getInt("Amount"),
                        rs.getInt("BrandID"),
                        rs.getInt("sell_id"),
                        rs.getString("ProductImgURL"));
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }
      public int count() {
        String query = "select COUNT (*) from product inner join ProductImg on product.ProductID = ProductImg.ProductID";
        try {

            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {

        }
        return 0;
    }

    public static void main(String[] args) {
        ProductDAO pdao = new ProductDAO();
        List<Product> list = pdao.searchProductBySubCate(2);
        for (Product product : list) {
            System.out.println(product);
        }
    }

}
