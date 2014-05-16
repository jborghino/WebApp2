package fr.treeptik.service;

import java.util.List;

import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Client;

public interface ClientService {

	public Client save(Client client) throws ServiceException;

	List<Client> findAll() throws ServiceException;

	void remove(Client client) throws ServiceException;

	Client update(Client client) throws ServiceException;

	Client findOneClient(Client client) throws ServiceException;


}
