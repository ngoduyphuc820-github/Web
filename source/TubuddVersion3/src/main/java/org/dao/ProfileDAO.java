package org.dao;

import org.model.TourGuide;
import org.model.Tourist;
import org.model.User;

public interface ProfileDAO {
int saveTourist(User user,Tourist tourist);
int saveTourGuide(User user, TourGuide tourguide);
}
