package org.cqupt.DeFiServerProject.service;

import org.cqupt.DeFiServerProject.entity.Exchange;

import java.util.List;

public interface ExchangeService {

	 List<Exchange> findAll();

	 void save(Exchange exchange);
}
