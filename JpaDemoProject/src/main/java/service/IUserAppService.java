package service;

import java.util.List;

import model.UserApp;

public interface IUserAppService {
	int count();

	List<UserApp> findByUsername(String userName);

	List<UserApp> findAll(int page, int pageSize);

	List<UserApp> findAllUserApp();

	UserApp findUserAppById(int id);

	void delete(int id) throws Exception;

	void update(UserApp userApp);

	void insert(UserApp userApp);

}
