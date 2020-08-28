package org.cqupt.DeFiServerProject.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.cqupt.DeFiServerProject.entity.Exchange;

import java.util.List;

@Mapper
public interface ExchangeMapper {
	List<Exchange> findAll();

	void insert(Exchange exchange);
}
