/**
 * 
 */
package cn.bc.example.struts2;

import cn.bc.test.Example;
import cn.bc.web.struts2.StrutsCRUDAction;

/**
 * @author dragon
 * 
 */
public class ExampleAction extends StrutsCRUDAction<Example> {
	private static final long serialVersionUID = 1L;
	private String name;
	private String msg;

	@Override
	protected Class<Example> getEntityClass() {
		return Example.class;
	}

	public String getMsg() {
		return msg;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String execute() {
		setName(getId() + "|" + getName());
		return SUCCESS;
	}

	@Override
	protected Example create() {
		Example e = super.create();
		e.setCode(e.hashCode() + "");
		return e;
	}

	@Override
	public String save() {
		this.msg = "save ok.";
		return super.save();
	}

	// public void validate() {
	// logger.debug("In method validate. accountBean's state is "
	// + accountBean);
	//
	// if (accountBean.length() == 0) {
	// addFieldError("accountBean", "accountBean is required.");
	// }
	// }

}
