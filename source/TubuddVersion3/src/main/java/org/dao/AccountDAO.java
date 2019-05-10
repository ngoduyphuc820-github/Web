package org.dao;
import org.model.Account;

public interface AccountDAO {
int registry(Account acc);
boolean checkAvailable(Account acc);
Account getAccount(String username, String password);
void getListAccount();
}
