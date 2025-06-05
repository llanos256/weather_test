package com.weathertest.weather.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.weathertest.weather.models.RequestLogs;

@Repository
public interface RequestLogsRepository extends JpaRepository<RequestLogs, Long>{
     
	@Query("select r from RequestLogs r order by r.date desc")
	List<RequestLogs> getHistory();
}
