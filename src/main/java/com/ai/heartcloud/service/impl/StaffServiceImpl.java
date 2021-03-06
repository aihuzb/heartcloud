package com.ai.heartcloud.service.impl;

import com.ai.heartcloud.dao.StaffMapper;
import com.ai.heartcloud.bean.Staff;
import com.ai.heartcloud.service.StaffService;
import com.ai.heartcloud.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/02/10.
 */
@Service
@Transactional
public class StaffServiceImpl extends AbstractService<Staff> implements StaffService {
    @Resource
    private StaffMapper staffMapper;

}
