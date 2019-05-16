package ndp.Dao;

import ndp.Entity.BookTour;
import ndp.Entity.Time;
import ndp.Entity.Tour;

public interface TourDAO {
int postTour(Tour tour);

int bookTour(BookTour bookTour,Time time);
}
