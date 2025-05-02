package com.weathertest.weather.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.weathertest.weather.models.RequestLogs;

@Repository
public interface RequestLogsRepository extends JpaRepository<RequestLogs, Long>{

}
