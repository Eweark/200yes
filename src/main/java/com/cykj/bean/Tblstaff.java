package com.cykj.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class Tblstaff {
  private int staffId;
  private String acc;
  private String pwd;
  private int roleId;
  private String name;
  private String address;
  private int age;
  private String headImg;

  private int currentPage;
  private int pageSize;



}
