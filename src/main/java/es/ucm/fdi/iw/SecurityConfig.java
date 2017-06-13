package es.ucm.fdi.iw;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
        		.antMatchers("/static/**", "/logout", "/403", "/test", "/reg", "/reg-rest", "/registrar", "/registrarRest").permitAll()
        		      		
				.antMatchers("/admin", "/admin/**").hasRole("ADMIN")
        		.antMatchers("/photoUser/{id}").hasAnyRole("USER", "ADMIN", "RESTAURANT")
				.antMatchers("/user").hasAnyRole("USER", "ADMIN")
				.antMatchers("/user/**").hasRole("ADMIN")
				
				.antMatchers("/rest/add").hasRole("ADMIN")
				
				.antMatchers("/actualizar-user").hasAnyRole("USER", "ADMIN")
				//.antMatchers("/actualizar-user").hasRole("ADMIN")
				.antMatchers("/anyadirFavoritos").hasRole("USER")
				
				.antMatchers("/actualizar-res").hasRole("RESTAURANT")
				.antMatchers("modifica-plato").hasRole("RESTAURANT")
				.antMatchers("modificaPlato").hasRole("RESTAURANT")
				
				.antMatchers("/carta-restaurante").hasRole("RESTAURANT")
				
				.antMatchers("/user-restaurant").hasRole("RESTAURANT")
				.antMatchers("/crearPlato").hasRole("RESTAURANT")
				
				.antMatchers("/all").hasRole("ADMIN")
				
				.antMatchers("/add").hasRole("ADMIN")
				.antMatchers("/addRes").hasRole("ADMIN")
				
				.antMatchers("/buscarUser").hasRole("ADMIN")
				
				.antMatchers("/borrarPlato").hasRole("RESTAURANT")
				
				.antMatchers("/restaurant").hasAnyRole("RESTAURANT","ADMIN")
				.antMatchers("/restaurant/**").hasAnyRole("RESTAURANT","ADMIN")
				
        		.anyRequest().authenticated()
				.and()
			.formLogin()
				.permitAll()
	            .loginPage("/index")
	            .loginProcessingUrl("/login")
	            .defaultSuccessUrl("/home")
	            .and()
			.logout()
				.logoutUrl("/logout")
				.logoutSuccessUrl("/index")
	            .permitAll();
			
			
	}
	
	@Bean
	public IwUserDetailsService springDataUserDetailsService() {
		return new IwUserDetailsService();
	}
	
	@Bean
	public PasswordEncoder passEnconder(){
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
	private Environment env;
	
    @Bean(name="localData")
    public LocalData getLocalData() {
    	return new LocalData(new File(env.getProperty("es.ucm.fdi.base-path")));
    }    
}