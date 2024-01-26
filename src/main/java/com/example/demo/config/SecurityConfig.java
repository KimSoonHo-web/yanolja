package com.example.demo.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.header.writers.frameoptions.XFrameOptionsHeaderWriter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration //Bean 으로 등록하기 위해서 선언
@EnableWebSecurity	//웹 보안을 활성화
public class SecurityConfig {



	  @Bean // 패스워드 암호화 관련 메소드
	  public PasswordEncoder passwordEncoder(){
	      return new BCryptPasswordEncoder();
	  }

		@Bean // 시큐리티 대부분의 설정을 담당하는 메소드
		public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

			        http
			            .authorizeHttpRequests((authorizeHttpRequests) -> authorizeHttpRequests
			                .requestMatchers(new AntPathRequestMatcher("/**")).permitAll())
			            .csrf((csrf) -> csrf
			                .ignoringRequestMatchers(new AntPathRequestMatcher("/**")))
			            .headers((headers) -> headers
			                .addHeaderWriter(new XFrameOptionsHeaderWriter(
			                    XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN)))
			        ;
			        return http.build();
			    }
			
			
			
			//			http
//				.authorizeHttpRequests((authorizeHttpRequests) -> authorizeHttpRequests
//				//모든경로
//				.requestMatchers(new AntPathRequestMatcher("/**")).permitAll());
//				//허용한다
////			
//			http.formLogin(formLogin -> formLogin
//			        .loginPage("/member/login")
//			        .loginProcessingUrl("/login")
//			        .usernameParameter("email")
//			        .passwordParameter("password")
//			        .permitAll());
//				return http.build();
//		}
//			  http
//	            .authorizeHttpRequests((authorizeHttpRequests) -> authorizeHttpRequests
//	                .requestMatchers(new AntPathRequestMatcher("/**")).permitAll())
//	            .csrf((csrf) -> csrf
//	                .ignoringRequestMatchers(new AntPathRequestMatcher("/user")))
//	            .headers((headers) -> headers
//	                .addHeaderWriter(new XFrameOptionsHeaderWriter(
//	                    XFrameOptionsHeaderWriter.XFrameOptionsMode.SAMEORIGIN)))
//	            .formLogin((formLogin) -> formLogin
//	                .loginPage("/member/login")
//	                .defaultSuccessUrl("/main"))
//	        ;
//	        return http.build();
//			http.csrf(csrf -> csrf.disable());
//			
//			http
//			.securityMatcher("/resources/**")                            
//			.authorizeHttpRequests(authorize -> authorize
//				.requestMatchers(new AntPathRequestMatcher("/user/**")).hasRole("USER")       
//				.requestMatchers(new AntPathRequestMatcher("/admin/**")).hasRole("ADMIN")     
//				.anyRequest().authenticated()                      
//			);
//			// Form 로그인을 활용하는경우 (JWT에는 필요없음)
//			http.formLogin(formLogin -> formLogin
//			        .loginPage("/member/login")
//			        .loginProcessingUrl("/login")
//			        .usernameParameter("email")
//			        .passwordParameter("password")
//			        .permitAll());
//			
//			return http.build();
//			}
			

////			authenticated
////			리소스의 접근을 인증절차를 통해 허용한다.
////			requestMatchers
////			특정 리소스에 대해서 권한을 설정한다.
////			permitAll
////			리소스의 접근을 인증절차 없이 허용한다.
////			hasAnyRole
////			해당 권한을 가진 사용자만 접근을 허용한다.
////			anyRequest
////			모든 리소스를 의미하며, anyMatcher로 설정하지 않은 리소스를 말한다.
//			http.authorizeHttpRequests(authorizeRequest -> authorizeRequest
//				    .requestMatchers (new AntPathRequestMatcher("/**")).permitAll()
////				    .requestMatchers(new AntPathRequestMatcher("/admin/**")).hasAnyRole("ADMIN")
////				    .requestMatchers(new AntPathRequestMatcher("/order/**")).hasAnyRole("USER")
//				    .anyRequest().authenticated()
//				);
//			// Form 로그인을 활용하는경우 (JWT에는 필요없음)
//			http.formLogin(formLogin -> formLogin
//			        .loginPage("/member/login")
//			        .loginProcessingUrl("/login")
//			        .usernameParameter("email")
//			        .passwordParameter("password")
//			        .permitAll());
//			
//			return http.build();
//		}

		// Spring Security에서 기본 HTTP 방화벽 객체를 생성하여 사용하도록 설정하는 역할
		@Bean
		public HttpFirewall defaultHttpFirewall() {
			return new DefaultHttpFirewall();
		}
	}
//		@Bean
//		public WebSecurityCustomizer webSecurityCustomizer() {
//			// 정적 자원에 스프링 시큐리티 필터 규칙을 적용하지 않도록 설정
//			return (web) -> web.httpFirewall(defaultHttpFirewall()).ignoring()
//					.requestMatchers(PathRequest.toStaticResources().atCommonLocations());
//		}
//	}
