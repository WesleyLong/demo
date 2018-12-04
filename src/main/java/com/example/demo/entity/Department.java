package com.example.demo.entity;
public class Department {
  private static final long serialVersionUID = 1L;
  private long id;
  private String name;
  private String descr;


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getDescr() {
    return descr;
  }

  public void setDescr(String descr) {
    this.descr = descr;
  }

}
