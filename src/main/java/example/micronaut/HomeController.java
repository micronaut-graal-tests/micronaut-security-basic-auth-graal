package example.micronaut;

import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.security.annotation.Secured;
import io.micronaut.security.rules.SecurityRule;

import java.security.Principal;

@Secured(SecurityRule.IS_AUTHENTICATED)
@Controller("/")
public class HomeController {

    @Get(value = "/", produces = MediaType.TEXT_PLAIN)
    String index(Principal principal) {
        return principal.getName();
    }
}
