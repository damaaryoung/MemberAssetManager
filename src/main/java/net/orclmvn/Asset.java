package net.orclmvn;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity // This tells Hibernate to make a table out of this class
@Table(name= "TBL_ASSET")

public class Asset {
	    @Id
	    @GeneratedValue(strategy=GenerationType.AUTO)
	    
	    
	    private Integer assetid;
	    private String asset_number;
	    private String asset_name;
	    private String category;
	    
        
		public Integer getAssetid() {
			return assetid;
		}

		public void setAssetid(Integer assetid) {
			this.assetid = assetid;
		}

		
		public String getCategory() {
			return category;
		}

		public void setCategory(String category) {
			this.category = category;
		}

		public String getAsset_number() {
			return asset_number;
		}

		public void setAsset_number(String asset_number) {
			this.asset_number = asset_number;
		}

		public String getAsset_name() {
			return asset_name;
		}

		public void setAsset_name(String asset_name) {
			this.asset_name = asset_name;
		}


	}
	   