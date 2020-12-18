package fpt.edu.controller;


import fpt.edu.dao.ItemDao;
import fpt.edu.dao.ItemTypeDao;
import fpt.edu.entity.Item;
import fpt.edu.entity.ItemType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import java.io.File;
import java.util.ArrayList;

@Controller
public class UploadController {
    @Autowired
    ServletContext servletContext;

    @RequestMapping(value = "/uploadItem", method = RequestMethod.POST)
    public ModelAndView uploadFile(@RequestParam(value = "id", required = true) String ID,
                                   @RequestParam(value = "name", required = true) String name,
                                   @RequestParam(value = "price", required = true) int price,
                                   @RequestParam(value = "image", required = true) MultipartFile image,
                                   @RequestParam(value = "content", required = true) String content,
                                   @RequestParam(value = "itemType", required = true) String itemType) {
        ModelAndView model = new ModelAndView("admin");
        try {
            String imageName = image.getOriginalFilename();
            String dir = servletContext.getRealPath("");
            String projectDir = dir.substring(0,dir.length()-32).replace('\\','/');
            File file = new File(projectDir+"/src/main/webapp/WEB-INF/template/images",imageName);
            image.transferTo(file);
            new ItemDao().insertItem(new Item(ID,name,price,content,imageName,new ItemTypeDao().getByName(itemType).getId()));
            model.addObject("message","Thêm sản phẩm thành công!");
            ArrayList<ItemType> itemTypes= new ItemTypeDao().getAll();
            model.addObject("itemTypes",itemTypes);
        } catch (Exception e) {
            e.printStackTrace();
            model.addObject("message","Sai!");
        }
        return model;
    }

}
