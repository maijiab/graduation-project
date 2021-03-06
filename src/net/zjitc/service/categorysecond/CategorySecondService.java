package net.zjitc.service.categorysecond;

import net.zjitc.domain.categorysecond.Categorysecond;
import net.zjitc.service.category.CategoryService;
import net.zjitc.utils.PageBean;

import java.util.List;

/**
 * Created by fyl1997 on 2017/11/27.
 */
public interface CategorySecondService  {
    List findByCid(Integer cid);

    List<Categorysecond> findAll();

    void save(Categorysecond model);


    Categorysecond findById(Integer csid);

    void update(Categorysecond cs);

    void delete(Categorysecond cs) throws CategorySecondException;

    PageBean<Categorysecond> findPage(Integer page, Integer limit);


}
