package mypackage.dao;

import mypackage.domain.User;
import mypackage.shared.AbstractCRUD;

public interface UserDao extends AbstractCRUD<User>{
	User getUserByEmail(String email);
}
