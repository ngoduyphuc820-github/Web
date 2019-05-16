package ndp.Dao;

import java.util.List;

import ndp.Entity.Town;

public interface PlaceDAO {
List<Town> listTownWithCity(int idCity);
}
