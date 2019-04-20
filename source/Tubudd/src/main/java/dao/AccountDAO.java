package dao;

import org.springframework.stereotype.Repository;

import model.Account;
@Repository
public interface AccountDAO {
int registry(Account acc);
}
