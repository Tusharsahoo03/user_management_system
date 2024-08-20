package com.org;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {

	EntityManagerFactory entityManagerFactory = getEntityManagerFactory();
	EntityManager entityManager = entityManagerFactory.createEntityManager();

	private EntityManagerFactory getEntityManagerFactory() {
		return Persistence.createEntityManagerFactory("karthik");
	}

	@RequestMapping("/register")
	public ModelAndView register(HttpServletRequest req, HttpServletResponse resp, @ModelAttribute User user) {
		ModelAndView mvc = new ModelAndView("form.jsp");
		mvc.addObject("fail", "invalid credentials");

		EntityManagerFactory entityManagerFactory = getEntityManagerFactory();
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();

		transaction.begin();
		entityManager.persist(user);
		transaction.commit();

		

		return mvc;
	}

	@RequestMapping("/first")
	public ModelAndView login(HttpServletRequest req, HttpServletResponse resp, @ModelAttribute User user) {

		Query query = entityManager
				.createQuery("SELECT e FROM User e WHERE e.email = :email AND e.password = :password");
		query.setParameter("email", user.getEmail());
		query.setParameter("password", user.getPassword());

		List<User> resultList = query.getResultList();
		ModelAndView mvc;

		if (resultList.isEmpty()) {
			mvc = new ModelAndView("login.jsp");
		} else {
			mvc = new ModelAndView("sweetHome");
			
		}

		

		return mvc;
	}

	@RequestMapping("/update")
	public String update(@ModelAttribute User user, Model model) {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();

		transaction.begin();
		entityManager.merge(user);
		transaction.commit();


		 Query fetchAll = entityManager.createQuery("SELECT u FROM User u");
	        List<User> users = fetchAll.getResultList();
	        model.addAttribute("users", users);

	        return "home.jsp";

		

	}

	@RequestMapping("/updatePage")
	public ModelAndView updatePage(HttpServletRequest req, HttpServletResponse resp,@ModelAttribute User user) {
		String userId = req.getParameter("id");

		EntityManagerFactory entityManagerFactory = getEntityManagerFactory();
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		User user1 = entityManager.find(User.class, Integer.parseInt(userId));

		ModelAndView mvc = new ModelAndView("update.jsp");
		mvc.addObject("user", user1);
		return mvc;
	}

	@RequestMapping("/delete")
	public String delete(HttpServletRequest req, @ModelAttribute User user1) {
		int id = Integer.parseInt(req.getParameter("id"));

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("karthik");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		EntityTransaction transaction = entityManager.getTransaction();

		User user = entityManager.find(User.class, id);

		transaction.begin();
		System.out.println("id " + user + "has been removed");
		entityManager.remove(user);

		transaction.commit();

        return "redirect:/sweetHome";
	}
	
	@RequestMapping("/sweetHome")
	public ModelAndView m1() {
		ModelAndView mav = new ModelAndView("home.jsp");
		Query fetchAll = entityManager.createQuery("SELECT u FROM User u");
		List<User> users = fetchAll.getResultList();
		mav.addObject("users", users);
		return mav;
		
	}

	
	
}
