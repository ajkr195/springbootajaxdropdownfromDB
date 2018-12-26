package com.springboot.citybycountry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.citybycountry.dao.CountryDao;
import com.springboot.citybycountry.model.Country;

@Service
public class CountryService {

	@Autowired
	private CountryDao countryDao;

	public List<Country> getCountriesList() {
		return countryDao.getCountriesList();
	}
}
