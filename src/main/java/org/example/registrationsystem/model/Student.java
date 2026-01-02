package org.example.registrationsystem.model;

public class Student {
    private int id;
    private String name;
    private String email;
    private String year;

    public Student() { }

    public Student(int id, String name, String email, String year) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.year = year;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getYear() { return year; }
    public void setYear(String year) { this.year = year; }
}
