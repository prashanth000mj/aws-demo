import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.web.bind.annotation.*;

@RestController
@EnableAutoConfiguration
public class Example {

	@RequestMapping("/api/")
	String home() {
		return "Hello From Spring boot Application!";
	}

	public static void main(String[] args) {
		SpringApplication.run(Example.class, args);
	}

}
