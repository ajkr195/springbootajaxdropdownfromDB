package com.springboot.citybycountry.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.citybycountry.model.Country;

@Transactional
@Repository
public class CountryDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Country> getCountriesList() {
		String sql = "select * from country";

		RowMapper<Country> rowMapper = new CountryRowMapper();
		List<Country> list = jdbcTemplate.query(sql, rowMapper);

		return list;
	}

	class CountryRowMapper implements RowMapper<Country> {

		@Override
		public Country mapRow(ResultSet rs, int rowNum) throws SQLException {
			Country country = new Country();
			country.setId(rs.getInt("id"));
			country.setName(rs.getString("name"));
			return country;
		}
	}
}