package fr.treeptik.dao.impl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceException;

import org.springframework.stereotype.Repository;

import fr.treeptik.dao.ClientDAO;
import fr.treeptik.exception.DAOException;
import fr.treeptik.model.Client;

@Repository
public class ClientJPADAO implements ClientDAO {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	public Client save(Client client) throws DAOException {

		try {
			entityManager.persist(client);
		} catch (PersistenceException e) {
			throw new DAOException("error save client", e);
		}

		return client;
	}

	@Override
	public Client update(Client client) throws DAOException {
		try {
			client = entityManager.merge(client);
		} catch (PersistenceException e) {
			throw new DAOException("error update client", e);
		}

		return client;
	}

	@Override
	public List<Client> findAll() throws DAOException {
		try {
			return entityManager.createQuery("select c from Client c",
					Client.class).getResultList();
		} catch (PersistenceException e) {
			throw new DAOException("error findAll client", e);
		}

	}

	@Override
	public void remove(Client client) throws DAOException {
		try {
			entityManager.remove(client);
		} catch (PersistenceException e) {
			throw new DAOException("error remove client", e);
		}

	}

	@Override
	public Client findOneClient(Client client) throws DAOException {
		try {
			return entityManager.find(Client.class, client.getId());
		} catch (PersistenceException e) {
			throw new DAOException("error findOneClient client", e);
		}

	}
}
