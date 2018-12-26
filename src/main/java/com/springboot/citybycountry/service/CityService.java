package com.springboot.citybycountry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.citybycountry.dao.CityDao;
import com.springboot.citybycountry.model.City;

@Service
public class CityService {

	@Autowired
	private CityDao cityDao;

	public List<City> getCitiesByCountry(int countryId) {
		return cityDao.getCitiesByCountry(countryId);
	}
}