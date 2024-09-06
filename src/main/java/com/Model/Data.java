package com.Model;

public class Data {

		private Integer UserId;
		private String FirstName;
		private String LastName;
		private String Email;
		private String Password;
		private Long MobileNo;
		private String Gender;
		public Integer getUserId() {
			return UserId;
		}
		public void setUserId(Integer userId) {
			UserId = userId;
		}
		public String getFirstName() {
			return FirstName;
		}
		public void setFirstName(String firstName) {
			FirstName = firstName;
		}
		public String getLastName() {
			return LastName;
		}
		public void setLastName(String lastName) {
			LastName = lastName;
		}
		public String getEmail() {
			return Email;
		}
		public void setEmail(String email) {
			Email = email;
		}
		public String getPassword() {
			return Password;
		}
		public void setPassword(String password) {
			Password = password;
		}
		public Long getMobileNo() {
			return MobileNo;
		}
		public void setMobileNo(Long mobileNo) {
			MobileNo = mobileNo;
		}
		public String getGender() {
			return Gender;
		}
		public void setGender(String gender) {
			Gender = gender;
		}
		@Override
		public String toString() {
			return "Data [UserId=" + UserId + ", FirstName=" + FirstName + ", LastName=" + LastName + ", Email=" + Email
					+ ", Password=" + Password + ", MobileNo=" + MobileNo + ", Gender=" + Gender + "]";
		}
		
		
	
	
}
