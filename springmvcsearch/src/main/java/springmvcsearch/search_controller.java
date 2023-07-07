package springmvcsearch;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.view.RedirectView;
@Controller
public class search_controller {
	
	@RequestMapping("/user/{userid}/{username}")
	public String getuserdeta(@PathVariable("userid") int userid,@PathVariable("username")
			String username)
	{
		System.out.println(userid);
		return"home";
	}
	@RequestMapping("/home")
	public String home()
	{
		String str=null;
		System.out.println(str.length());
		System.out.println("Going to home view");
		return"home";
	}
	@RequestMapping("/search")
	public RedirectView search(@RequestParam("querybox") String query)
	{
		String url="https://www.google.com/search?q=" +query;
		RedirectView redirectview=new RedirectView();
		redirectview.setUrl(url);
		return redirectview;
	}
	// Handling Exception in MVC 
	/*@ExceptionHandler({NullPointerException.class,NumberFormatException.class})
	public String exceptionhadling()
	{
		return "null_page";
	}
	
	// All Exception is handling in Single line
	// Send status code by using below line
	@ResponseStatus(value=HttpStatus.INTERNAL_SERVER_ERROR)
	@ExceptionHandler(value=Exception.class)
	public String GeneralException()
	{
		return"null_page";
	}*/
}
