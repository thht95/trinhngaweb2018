package com.nvtcracker.btl;

import java.io.Serializable;

/**
 * Created by NVTCracker on 11/14/2017.
 */

public class ManagerHighScore implements Serializable {
    int id;
    int score;
    String name;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


}
