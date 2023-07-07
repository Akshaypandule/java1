package springmvcsearch;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class form_Controller {
	@RequestMapping("/complex")
	public String showform()
	{
		return"Complex_form";
	}
/*@RequestMapping(path="handleform",method = RequestMethod.POST)
	public String formhandler(@RequestParam("name") String name,@RequestParam("id") long id )
	{
		System.out.println(name);
		System.out.println(id);
		return"success";
	}*/
@RequestMapping(path="handleform",method = RequestMethod.POST)
public String formhandler(@ModelAttribute("student") Student student,BindingResult result)
	{
		if(result.hasErrors())
		{
			return "Complex_form";
		}
		System.out.println(student);
		System.out.println(student.getAddress());
		return"success";
	}
}
