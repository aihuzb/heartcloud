package com.ai.heartcloud.service.impl;

import com.ai.heartcloud.dao.DepartmentMapper;
import com.ai.heartcloud.bean.Department;
import com.ai.heartcloud.service.DepartmentService;
import com.ai.heartcloud.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/02/10.
 */
@Service
@Transactional
public class DepartmentServiceImpl extends AbstractService<Department> implements DepartmentService {
    @Resource
    private DepartmentMapper departmentMapper;

}
