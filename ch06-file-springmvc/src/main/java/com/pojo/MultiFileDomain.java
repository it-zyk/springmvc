package com.pojo;

import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public class MultiFileDomain {
    private List<String> description;
    private List<MultipartFile> myFile;
    // 省略setter和getter方法

    public List<String> getDescription() {
        return description;
    }

    public void setDescription(List<String> description) {
        this.description = description;
    }

    public List<MultipartFile> getMyFile() {
        return myFile;
    }

    public void setMyFile(List<MultipartFile> myFile) {
        this.myFile = myFile;
    }
}