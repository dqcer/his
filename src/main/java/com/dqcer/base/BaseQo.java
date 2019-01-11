package com.dqcer.base;

/**
 * 基础查询
 *
 * @author su.hongjun
 */
public class BaseQo {
    private int begin;        // 开始 eg:limit #{begin} , #{size}
    private int size;         // 取的条数 eg:limit #{begin} , #{size}
    private int pageSize;     // 每页条数，用在前端页面
    private int currentPageNo; // 当前页，用在前端页面

    public int getBegin() {
        return begin;
    }

    public void setBegin(int begin) {
        this.begin = begin;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getCurrentPageNo() {
        return currentPageNo;
    }

    public void setCurrentPageNo(int currentPageNo) {
        this.currentPageNo = currentPageNo;
    }
}
