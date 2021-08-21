package co.leaf.fit.vo;

public class WishlistVO extends ProgramVO{
	
	private int wisProId;
	private String wisMemEmail;
	
	public WishlistVO() {
	}

	public int getWisProId() {
		return wisProId;
	}

	public void setWisProId(int wisProId) {
		this.wisProId = wisProId;
	}

	public String getWisMemEmail() {
		return wisMemEmail;
	}

	public void setWisMemEmail(String wisMemEmail) {
		this.wisMemEmail = wisMemEmail;
	}

	@Override
	public String toString() {
		return "WishlistVO [wisProId=" + wisProId + ", wisMemEmail=" + wisMemEmail + "]";
	}
	
}
