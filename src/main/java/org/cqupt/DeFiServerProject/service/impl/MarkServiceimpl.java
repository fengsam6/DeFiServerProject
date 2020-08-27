package org.cqupt.DeFiServerProject.service.impl;

import org.cqupt.DeFiServerProject.entity.Mark;
import org.cqupt.DeFiServerProject.mapper.MarkMapper;
import org.cqupt.DeFiServerProject.service.MarkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("markService")
public class MarkServiceimpl implements MarkService {

    @Autowired
    private MarkMapper markMapper;

    @Override
    public List<Mark> findAll() {
        return markMapper.findAll();
    }

    @Override
    public void save(Mark mark) {
        markMapper.insert(mark);
    }

}
