package cn.edu.zust.service.impl;

import cn.edu.zust.dao.BaseDaoI;
import cn.edu.zust.entity.TypeEntity;
import cn.edu.zust.model.Type;
import cn.edu.zust.service.TypeServiceI;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by King on 2016/9/19 0019.
 */
@Service
@Transactional
public class TypeServiceImpl implements TypeServiceI {
    @Autowired
    BaseDaoI<TypeEntity> typeDao;

    @Override
    public List<Type> getTypes() {
        String hql = "from TypeEntity";
        List<TypeEntity> typeEntities = typeDao.find(hql);
        List<Type> types = new ArrayList<>();
        for(TypeEntity typeEntity : typeEntities) {
            types.add(toModel(typeEntity));
        }
        return types;
    }

    @Override
    public Type get(Integer id) {
        return toModel(typeDao.get(TypeEntity.class, id));
    }

    private TypeEntity toEntity(Type model) {
        TypeEntity entity;
        if(model.getId() == null || model.getId() == 0) {
            entity = new TypeEntity();
        } else {
            entity = typeDao.get(TypeEntity.class, model.getId());
        }
        BeanUtils.copyProperties(model, entity);
        return entity;
    }

    private Type toModel(TypeEntity entity) {
        Type model = new Type();
        BeanUtils.copyProperties(entity, model);
        return model;
    }
}
