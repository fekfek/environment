package com.see.config;
/*package com.environment.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	
	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication().withUser("Fekade").password("fekade").roles("USER");
       auth.inMemoryAuthentication().withUser("Admin").password("admin").roles("ADMIN","USER");
       auth.inMemoryAuthentication().withUser("Manager").password("manager").roles("ADMIN","MANAGER","USER");

    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        http.authorizeRequests()
       .antMatchers("/", "/home").permitAll()	//requests accessed by all
//     .antMatchers("/apply","/*update","delete").hasAnyRole("USER")	//accessed by USER and those
       .antMatchers("/showvolunteers").hasAnyRole("USER")					//having user role:Admin & Manager
       .antMatchers("/admin").access("hasRole('ADMIN') and hasRole('USER')")
       .antMatchers("/manager").access("hasRole('ADMIN') and hasRole('MANAGER') and hasRole('USER')")
       .and().formLogin()
       .and().logout().logoutUrl("/logout")
       .and().exceptionHandling().accessDeniedPage("/Access_Denied");
        }



}
*/