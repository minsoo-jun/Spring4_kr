package sample.customer.config;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

@Configuration
@ComponentScan("sample.customer.biz.service")   //<----(1)
public class BizConfig {

    @Bean                                       //<----(2)
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource
                = new ReloadableResourceBundleMessageSource();
        messageSource.setBasename("classpath:/META-INF/messages"); //<----(3)

        return messageSource;
    }

	// 밑의 4, 5설정은 5.2.3.4절에서 스프링 MVC의 JavaConfig로 이동
	@Bean                                       //<----(4)
	public Validator globalValidator(MessageSource messageSource) {
		LocalValidatorFactoryBean validatorBean 
				= new LocalValidatorFactoryBean();
		validatorBean.setValidationMessageSource(messageSource);  //<----(5)

		return validatorBean;
	}
}
