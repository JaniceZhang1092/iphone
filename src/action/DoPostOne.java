package action;

/**
 * @Auther: zj
 * @Date: 2021/1/13
 * @Description: action
 * @Version: 1.0
 */
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;

public class DoPostOne extends ActionSupport implements ModelDriven {
    private Qs qs = new Qs();
    private Result r;
    @Override
    public Object getModel() {
        return qs;
    }

    public Result getR() {
        return r;
    }

    public void setR(Result r) {
        this.r = r;
    }

    public String execute(){

        if ( ServletActionContext.getServletContext().getAttribute( "result" ) != null ){
            r = (Result) ServletActionContext.getServletContext().getAttribute( "result" );
            r.setQs(qs);
            //System.out.println( "Application有\t" + r.getSize());
        }else{
            r = new Result(qs);
            //System.out.println( "Application没有" );
        }

        //将总的结果存储在application中
        ServletActionContext.getServletContext().setAttribute( "result", r );

        return SUCCESS;
    }
}
