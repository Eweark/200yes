package com.cykj.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class Tblrole {

  private int roleId;
  private String roleName;
  private String roleDesc;
  private List<Integer> powerIds;


}
