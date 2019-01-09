package phonePackage;

import java.util.List;


public interface CityDAO {
    public List<City> getCities();
    public List<City> getCitiesByName(City city);
}
