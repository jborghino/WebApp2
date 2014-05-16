package fr.treeptik.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import fr.treeptik.model.Client;

@Component
public class ClientValidator implements Validator {

	@Override
	public boolean supports(Class<?> client) {
		return client.getClass().equals(Client.class);
	}

	@Override
	public void validate(Object client, Errors error) {
		Client cl = (Client) client;
		if (cl.getAge() < 0 || cl.getAge() > 90) {
			error.rejectValue("age", "error.age");
		}
	}

}
