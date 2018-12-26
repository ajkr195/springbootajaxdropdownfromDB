package com.springboot.citybycountry.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.citybycountry.model.City;
import com.springboot.citybycountry.model.CountryCriteria;
import com.springboot.citybycountry.model.Country;
import com.springboot.citybycountry.model.CustomForm;
import com.springboot.citybycountry.service.CityService;
import com.springboot.citybycountry.service.CountryService;

@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private CityService cityService;

	@Autowired
	private CountryService countryService;

	@RequestMapping(value = { "/", "" }, method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView model = new ModelAndView();

		CustomForm customForm = new CustomForm();
		List<Country> countries = countryService.getCountriesList();
		List<City> cities = new ArrayList<City>();

		model.addObject("countries", countries);
		model.addObject("cities", cities);
		model.addObject("customForm", customForm);

		model.setViewName("home");
		return model;
	}

	@RequestMapping(value = "/loadCityByCountry", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<City> loadCityByCountry(@RequestBody CountryCriteria countryCriteria) {
		List<City> cities = cityService.getCitiesByCountry(countryCriteria.getCountryId());

		return cities;
	}
}