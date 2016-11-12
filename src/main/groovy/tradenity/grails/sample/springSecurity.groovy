package tradenity.grails.sample

import com.tradenity.sdk.model.Customer
import com.tradenity.sdk.services.CustomerService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.AuthorityUtils
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException;

class User implements Serializable, UserDetails{
    String customerId
    String firstName
    String lastName
    String email
    String username
    String password
    String confirmPassword

    public User() {}
    public User(Customer customer) {
        this.customerId = customer.id
        this.firstName = customer.getFirstName();
        this.lastName = customer.getLastName();
        this.email = customer.getEmail();
        this.username = customer.getUsername();
        this.password = customer.getPassword();
    }

    def valid(){
        //return true
        return firstName != null && lastName !=null && email !=null && username != null && password != null && password == confirmPassword
    }

    String getFirstName() {
        return firstName
    }

    void setFirstName(String firstName) {
        this.firstName = firstName
    }

    String getLastName() {
        return lastName
    }

    void setLastName(String lastName) {
        this.lastName = lastName
    }

    String getEmail() {
        return email
    }

    void setEmail(String email) {
        this.email = email
    }

    String getUsername() {
        return username
    }

    void setUsername(String username) {
        this.username = username
    }

    String getPassword() {
        return password
    }

    void setPassword(String password) {
        this.password = password
    }

    String getConfirmPassword() {
        return confirmPassword
    }

    void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword
    }

    @Override
    Collection<? extends GrantedAuthority> getAuthorities() {
        return AuthorityUtils.createAuthorityList("ROLE_USER");
    }

    @Override
    boolean isAccountNonExpired() {
        return true
    }

    @Override
    boolean isAccountNonLocked() {
        return true
    }

    @Override
    boolean isCredentialsNonExpired() {
        return true
    }

    @Override
    boolean isEnabled() {
        return true
    }

    Customer toCustomer(){
        def c = new Customer(firstName, lastName, email, username, password, "active" )
        c.id = this.customerId
        c
    }
}

class CustomerDetailsService implements UserDetailsService{
    @Autowired
    CustomerService customerService
    @Override
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Customer customer = customerService.findByUsername(username);
        if(customer == null) {
            throw new UsernameNotFoundException("Could not find user " + username);
        }else {
            return new User(customer);
        }
    }
}