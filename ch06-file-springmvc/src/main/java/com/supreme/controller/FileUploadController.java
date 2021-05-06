package com.supreme.controller;

import com.pojo.FileDomain;
import com.pojo.MultiFileDomain;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
public class FileUploadController {
    // 得到一个用来记录日志的对象，这样在打印信息时能够标记打印的是哪个类的信息
    private static final Log logger = LogFactory.getLog(FileUploadController.class);
    /**
     * 单文件上传
     */
    @RequestMapping("/onefile")
    public String oneFileUpload(@ModelAttribute FileDomain fileDomain,
                                HttpServletRequest request) {
        /*
         * 文件上传到服务器的位置“/uploadfiles”,该位置是指
         * workspace\.metadata\.plugins\org.eclipse
         * .wst.server.core\tmp0\wtpwebapps, 发布后使用
         */
        String realpath = request.getServletContext()
                .getRealPath("uploadfiles");
        String fileName = fileDomain.getMyfile().getOriginalFilename();
        File targetFile = new File(realpath, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        // 上传
        try {
            fileDomain.getMyfile().transferTo(targetFile);
            logger.info("成功");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "showOne";
    }

    @RequestMapping("/multifile")
    public String multiFileUpload(@ModelAttribute MultiFileDomain multiFileDomain, HttpServletRequest request) {
        String realpath = request.getServletContext().getRealPath("uploadfiles");
        File targetDir = new File(realpath);
        if (!targetDir.exists()) {
            targetDir.mkdirs();
        }
        List<MultipartFile> files = multiFileDomain.getMyfile();
        for (int i = 0; i < files.size(); i++) {
            MultipartFile file = files.get(i);
            String fileName = file.getOriginalFilename();
            File targetFile = new File(realpath, fileName);
            // 上传
            try {
                file.transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        logger.info("成功");
        return "showMulti";
    }

    @RequestMapping("/oneFile")
    public String oneFile(){
        return "oneFile";
    }

    @RequestMapping("/multiFiles")
    public String multiFiles(){
        return "multiFiles";
    }
}

