package br.edu.unoesc.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = { "br.edu.unoesc.dao", "br.edu.unoesc.service" })
public class SpringConfig {

}