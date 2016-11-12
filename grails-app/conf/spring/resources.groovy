import tradenity.grails.sample.CustomerDetailsService
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder

beans = {
    userDetailsService(CustomerDetailsService)
    passwordEncoder(BCryptPasswordEncoder)
}
