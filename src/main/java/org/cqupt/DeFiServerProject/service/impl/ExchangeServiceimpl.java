package org.cqupt.DeFiServerProject.service.impl;

import org.cqupt.DeFiServerProject.entity.Exchange;
import org.cqupt.DeFiServerProject.mapper.ExchangeMapper;
import org.cqupt.DeFiServerProject.service.ExchangeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("markService")
public class ExchangeServiceimpl implements ExchangeService {

    @Autowired
    private ExchangeMapper exchangeMapper;

    @Override
    public List<Exchange> findAll() {
        return exchangeMapper.findAll();
    }

    @Override
    public void save(Exchange exchange) {
        exchangeMapper.insert(exchange);
    }

}
