package com.niit.controller;


import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Product;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	
	private static final String Product = null;
	@Autowired
	ProductService productService;
	
	@RequestMapping("/allProducts")
	public String getAllProducts(Model model)
	{
		List<Product> allProducts = productService.getAllProducts();
		model.addAttribute("products", allProducts);
		return "productList";
		
	}
	
	@RequestMapping("/viewProduct/{pid}")
	public String getProductById(@PathVariable("pid") int pid, Model model )
	{
		Product product=productService.getProductById(pid);
		model.addAttribute("product",product);
		return "viewProduct";
		
	}

	@RequestMapping(value="/admin/deleteProduct/{pid}")
	public String deleteProduct(@PathVariable("pid") int pid,Model model,HttpServletRequest request)
	{
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + pid + ".png");

        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (Exception ex){
                ex.printStackTrace();
            }
        }

        Product product = productService.getProductById(pid);
        productService.deleteProduct(product);

        return "productList";
	}
	
	@RequestMapping(value="/admin/updateProductForm/{pid}")
	public String updateProduct(@PathVariable("pid") int pid,  Model model) {
		
		Product product=productService.getProductById(pid);
		model.addAttribute("product", product);
		return "updateProductForm";
	}
	
	@RequestMapping(value="/admin/updateProductForm/{pid}", method=RequestMethod.POST)
	public String update(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request) {
		
		if(result.hasErrors()){
            return "updateProductForm";
        }
		
		MultipartFile productImage = product.getImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getPid() + ".png");

        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }

        productService.updateProduct(product);

        return "redirect:/admin/productList";

		
	}
	
	@RequestMapping(value="/admin/addProduct")
	public String viewAddProductPage(Model model)
	{
		Product product=new Product();
		model.addAttribute("product", product);
		return "addProduct";	
	}
	
	private Path path;
	@RequestMapping(value="/admin/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request)
	{
		String filename=null; 
		  int res = 0; 
		  if(result.hasErrors()){
				return "addProduct";
			}
		  productService.addProduct(product);
		  MultipartFile productImage =product.getImage();
		  String rootDirectory= request.getSession().getServletContext().getRealPath("/");
		  path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getPid() + ".png"); 
		  System.out.println("Path = "+ path); 
		  System.out.println("File name = "+product.getImage().getOriginalFilename()); 
		  
		  if(!product.getImage().isEmpty()) 
		  { 
			  try 
			   { 
			     
				  productImage.transferTo(new File(path.toString())); 
				    System.out.println("Image uploaded"); 
		  
			   	    return "redirect:/allProducts";
			    
			   }catch(Exception ex)
			  {
				   ex.printStackTrace();
			  }
	
		  }
		  else
		  {
			  res=0;
		  }
		return "redirect:/admin/productList";
       

}
}
