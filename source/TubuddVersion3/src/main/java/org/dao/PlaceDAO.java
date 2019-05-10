package org.dao;

import java.util.List;

import org.model.Town;

public interface PlaceDAO {
List<Town> listTownWithCity(int idCity);
}
