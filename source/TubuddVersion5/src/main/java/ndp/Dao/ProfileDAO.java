package ndp.Dao;

import ndp.Entity.TourGuide;
import ndp.Entity.Tourist;
import ndp.Entity.User;

public interface ProfileDAO {
int saveTourist(User user,Tourist tourist);
int saveTourGuide(User user, TourGuide tourguide);
void saveUser(User user);
}
