package com.thinktwice.utils;

public class TreeBean {
	private String id;

    private String pId="0";

    private String name;
    
    private String code;

    private boolean checked = false;
    
    private boolean  open = true;

    private boolean  nocheck = false;
    
    private String isParent  = "false";
    
	public String getIsParent() {
		return isParent;
	}

	public void setIsParent(String isParent) {
		this.isParent = isParent;
	}

	public boolean isNocheck() {
        return nocheck;
    }

    public void setNocheck(boolean nocheck) {
        this.nocheck = nocheck;
    }

    public boolean isOpen() {
        return open;
    }

    public void setOpen(boolean open) {
        this.open = open;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getPId() {
        return pId;
    }

    public void setPId(String id) {
        this.pId = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isChecked() {
        return checked;
    }

    public void setChecked(boolean checked) {
        this.checked = checked;
    }

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}
    
}
