package com.springboot.citybycountry.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.citybycountry.model.City;

@Transactional
@Repository
public class CityDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<City> getCitiesByCountry(int countryId) {
		String sql = "select * from city where country_id = ?";

		RowMapper<City> rowMapper = new CityRowMapper();
		List<City> list = jdbcTemplate.query(sql, rowMapper, countryId);

		return list;
	}

	class CityRowMapper implements RowMapper<City> {

		@Override
		public City mapRow(ResultSet rs, int rowNum) throws SQLException {
			City city = new City();
			city.setId(rs.getInt("id"));
			city.setName(rs.getString("name"));
			return city;
		}
	}
}