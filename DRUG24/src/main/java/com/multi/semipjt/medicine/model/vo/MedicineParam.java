package com.multi.semipjt.medicine.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

public class MedicineParam {
		private String searchValue; 
		private String searchValue1; 
		private String searchValue2;
		private String searchValue3;
		private String searchValue4; 
		
		private String searchType2; 
		private String searchType3; 
		private String searchType4; 

		private int page = 1;
		private int limit;
		private int offset;
		
		
		public MedicineParam() {
			super();
		}
		
		public MedicineParam(String searchValue, String searchValue1, String searchValue2, String searchValue3,
				String searchValue4, String searchType2, String searchType3, String searchType4, int page, int limit,
				int offset) {
			super();
			this.searchValue = searchValue;
			this.searchValue1 = searchValue1;
			this.searchValue2 = searchValue2;
			this.searchValue3 = searchValue3;
			this.searchValue4 = searchValue4;
			this.searchType2 = searchType2;
			this.searchType3 = searchType3;
			this.searchType4 = searchType4;
			this.page = page;
			this.limit = limit;
			this.offset = offset;
		}

		@Override
		public String toString() {
			return "MedicineParam [searchValue=" + searchValue + ", searchValue1=" + searchValue1 + ", searchValue2="
					+ searchValue2 + ", searchValue3=" + searchValue3 + ", searchValue4=" + searchValue4
					+ ", searchType2=" + searchType2 + ", searchType3=" + searchType3 + ", searchType4=" + searchType4
					+ ", page=" + page + ", limit=" + limit + ", offset=" + offset + "]";
		}
		public String getSearchValue() {
			return searchValue;
		}
		public void setSearchValue(String searchValue) {
			this.searchValue = searchValue;
		}
		public String getSearchValue1() {
			return searchValue1;
		}
		public void setSearchValue1(String searchValue1) {
			this.searchValue1 = searchValue1;
		}
		public String getSearchValue2() {
			return searchValue2;
		}
		public void setSearchValue2(String searchValue2) {
			this.searchValue2 = searchValue2;
		}
		public String getSearchValue3() {
			return searchValue3;
		}
		public void setSearchValue3(String searchValue3) {
			this.searchValue3 = searchValue3;
		}
		public String getSearchValue4() {
			return searchValue4;
		}
		public void setSearchValue4(String searchValue4) {
			this.searchValue4 = searchValue4;
		}
		public String getSearchType2() {
			return searchType2;
		}
		public void setSearchType2(String searchType2) {
			this.searchType2 = searchType2;
		}
		public String getSearchType3() {
			return searchType3;
		}
		public void setSearchType3(String searchType3) {
			this.searchType3 = searchType3;
		}
		public String getSearchType4() {
			return searchType4;
		}
		public void setSearchType4(String searchType4) {
			this.searchType4 = searchType4;
		}
		public int getPage() {
			return page;
		}
		public void setPage(int page) {
			this.page = page;
		}
		public int getLimit() {
			return limit;
		}
		public void setLimit(int limit) {
			this.limit = limit;
		}
		public int getOffset() {
			return offset;
		}
		public void setOffset(int offset) {
			this.offset = offset;
		}
		

		
		
}
