package mypackage.service;

import mypackage.domain.User;
import mypackage.shared.AbstractCRUD;

public interface UserService extends AbstractCRUD<User> {
	User getUserByEmail(String email);
}
