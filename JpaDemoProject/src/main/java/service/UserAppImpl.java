package service;

import java.util.List;

import model.UserApp;

public class UserAppImpl implements IUserAppService {

	private DAO.UserAppDAOImpl userAppDAO = new DAO.UserAppDAOImpl();

	//@Inject
	//private IUserAppDAO userAppDAO;

	@Override
	public int count() {
		// TODO 自動生成されたメソッド・スタブ
		return userAppDAO.count();
	}

	@Override
	public List<UserApp> findByUsername(String userName) {
		// TODO 自動生成されたメソッド・スタブ
		return userAppDAO.findByUsername(userName);
	}

	@Override
	public List<UserApp> findAll(int page, int pageSize) {
		// TODO 自動生成されたメソッド・スタブ
		return userAppDAO.findAll(page, pageSize);
	}

	@Override
	public List<UserApp> findAllUserApp() {
		// TODO 自動生成されたメソッド・スタブ
		return userAppDAO.findAllUserApp();
	}

	@Override
	public UserApp findUserAppById(int id) {
		// TODO 自動生成されたメソッド・スタブ
		return userAppDAO.findUserAppById(id);
	}

	@Override
	public void delete(int id) throws Exception {
		userAppDAO.delete(id);

	}

	@Override
	public void update(UserApp userApp) {
		userAppDAO.update(userApp);

	}

	@Override
	public void insert(UserApp userApp) {
		userAppDAO.insert(userApp);

	}

}
