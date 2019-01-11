package com.dqcer.util;

import java.util.List;

public class Paging {
	public static final int DEFAULT_PAGE_SIZE = 10;
	public static final int MAX_PAGE_SIZE = 1000;
	private int pageSize = DEFAULT_PAGE_SIZE;// 每页大小
	private int totalSize;// 总记录数
	private int currentPageNo;
	private int totalPageCount;// 总页数
	private List<?> pagingValueList;
	private int start;// 开始
	private int end;
	private int size;
	private boolean hasNextPage = false;
	private boolean hasPreviousPage = false;

	public Paging() {
	}

	/**
	 * Set record size every page
	 * 
	 * @param pageSize
	 *            int
	 */
	public void setPageSize(int pageSize) {
		if (pageSize != 0)
			this.pageSize = pageSize;
	}

	/**
	 * Set current page number in all pages
	 * 
	 * @param currentPageNo
	 *            int
	 */
	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	/**
	 * Set total page count
	 * 
	 * @param totalPageCount
	 *            int
	 */
	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	/**
	 * Set data contains current page
	 * 
	 * @param data
	 *            Object
	 */
	public void setPagingValueList(List<?> pagingValueList) {
		this.pagingValueList = pagingValueList;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public List<?> getPagingValueList() {
		return pagingValueList;
	}

	public int getStart() {
		return start;
	}

	public int getEnd() {
		return end;
	}

	public boolean isHasNextPage() {
		this.hasNextPage = (this.getCurrentPageNo() < this.getTotalPageCount());
		return this.hasNextPage;
	}

	public boolean isHasPreviousPage() {
		this.hasPreviousPage = (this.getCurrentPageNo() > 1);
		return this.hasPreviousPage;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

}
