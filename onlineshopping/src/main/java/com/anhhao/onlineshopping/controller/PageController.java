package com.anhhao.onlineshopping.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.anhhao.shoppingbackend.dao.CategoryDao;
import com.anhhao.shoppingbackend.dto.Category;

@Controller
public class PageController {

	@Autowired
	private CategoryDao categoryDao;

//	@RequestMapping(value = "/test")
//	public ModelAndView test(@RequestParam(value = "greeting", required = false) String greet) {
//		if(greet == null) {
//			greet = "Hello nhe !";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greet);
//		return mv;
//	}

//	@RequestMapping(value = "/test/{greeting}")
//	public ModelAndView test(@PathVariable("greeting") String greeting) {
//		if (greeting == null) {
//			greeting = "Hello nhe !";
//		}
//		ModelAndView mv = new ModelAndView("page");
//		mv.addObject("greeting", greeting);
//		return mv;
//	}

	@RequestMapping(value = { "/", "/home", "/index" })
	public String index(HttpServletRequest request) {
		request.setAttribute("title", "Home");
		request.setAttribute("userClickHome", true);
		request.setAttribute("categories", categoryDao.listCategories());

		return "page";
	}

	@RequestMapping(value = "/about")
	public String about(HttpServletRequest request) {
		request.setAttribute("title", "About Us");
		request.setAttribute("userClickAbout", true);
		return "page";
	}

	@RequestMapping(value = "/contact")
	public String contact(HttpServletRequest request) {
		request.setAttribute("title", "Contact");
		request.setAttribute("userClickContact", true);
		return "page";
	}

	@RequestMapping(value = "/show-all-products")
	public String showAllProducts(HttpServletRequest request) {
		request.setAttribute("title", "All Products");
		request.setAttribute("categories", categoryDao.listCategories());
		request.setAttribute("userClickAllProducts", true);
		return "page";
	}

	@RequestMapping(value = "/show-category-{id}-products")
	public String showCategoryProducts(HttpServletRequest request, @PathVariable("id") int id) {

		Category category = null;
		category = categoryDao.getId(id);
		request.setAttribute("title", category.getName());
		request.setAttribute("categories", categoryDao.listCategories());
		request.setAttribute("category", category);
		request.setAttribute("userClickCategoryProducts", true);
		return "page";
	}

}
