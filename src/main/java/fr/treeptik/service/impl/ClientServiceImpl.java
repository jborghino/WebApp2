package fr.treeptik.service.impl;

import java.util.List;

import javax.annotation.security.RolesAllowed;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.ClientDAO;
import fr.treeptik.exception.DAOException;
import fr.treeptik.exception.ServiceException;
import fr.treeptik.model.Client;
import fr.treeptik.service.ClientService;

@Service
public class ClientServiceImpl implements ClientService {

	@Autowired
	private ClientDAO clientDAO;

	@Override
	@Transactional
	@RolesAllowed(value = { "ROLE_ADMIN" })
	public Client save(Client client) throws ServiceException {

		try {
			return clientDAO.save(client);
		} catch (DAOException e) {
			throw new ServiceException("Erreur save client service ", e);
		}
	}
	
	@Override
	@Transactional
	public Client update(Client client) throws ServiceException {

		try {
			return clientDAO.update(client);
		} catch (DAOException e) {
			throw new ServiceException("Erreur update client service ", e);
		}
	}
	
	@Override
	@Transactional
	public void remove(Client client) throws ServiceException {

		try {
			Client findOneClient = clientDAO.findOneClient(client);
			clientDAO.remove(findOneClient);
		} catch (DAOException e) {
			throw new ServiceException("Erreur remove client service ", e);
		}
	}

	@Override
	public List<Client> findAll() throws ServiceException {
		try {
			return clientDAO.findAll();
		} catch (DAOException e) {
			throw new ServiceException("Erreur findAll client service", e);
		}
	}
	
	@Override
	public Client findOneClient(Client client) throws ServiceException {
		try {
			return clientDAO.findOneClient(client);
		} catch (DAOException e) {
			throw new ServiceException("Erreur findOneClient client service", e);
		}
	}

}
