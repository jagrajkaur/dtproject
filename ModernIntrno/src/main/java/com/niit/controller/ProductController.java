package com.niit.controller;


import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Locale.Category;

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

	@RequestMapping(value="/addProduct")
	public String viewAddProductPage(Model model)
	{
		Product product=new Product();
		model.addAttribute("product", product);
		return "addProduct";	
	}
	
	private Path path;
	@RequestMapping(value="/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request)
	{
		String filename=null; 
		  int res = 0; 
		  if(result.hasErrors()){
				return "addProduct";
			}
		  /*ServletContext context=context.getServletContext(); 
		  System.out.println(context);
		  String path=context+"/resources/images/"+product.getPid()+".jpg"; 
		  System.out.println("Path = "+path); 
		  System.out.println("File name = "+product.getImage().getOriginalFilename()); 
		  File f=new File(path); */
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
			    //filename=p.getImage().getOriginalFilename(); 
			   // byte[] bytes=product.getImage().getBytes(); 
			   /* BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f)); 
			    bs.write(bytes); 
			    bs.close(); 
			    System.out.println("Image uploaded"); */  
				  
				  productImage.transferTo(new File(path.toString())); 
				    System.out.println("Image uploaded"); 
		  
		
			    //if(result.hasErrors()){
			    //return "addProduct";
			    //}
		
			   
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
		return "viewProduct";
       

}
}
