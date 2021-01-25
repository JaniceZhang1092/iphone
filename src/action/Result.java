package action;

import java.util.ArrayList;

/**
 * @Auther: zj
 * @Date: 2021/1/13
 * @Description: action
 * @Version: 1.0
 */
public class Result{
    private int size;
    private int[] q1;
    private int[] q2;
    private int[] q3;
    private ArrayList<String> q17;

    public Result(){
        size = 0;
        q1 = new int[4];
        q2 = new int[7];
        q3 = new int[5];
        q17 = new ArrayList<String>(10);
    }

    public Result( Qs qs ){
        size = 0;
        q1 = new int[4];
        q2 = new int[7];
        q3 = new int[5];
        q17 = new ArrayList<String>(10);

        setsSize();
        setsq1(qs.getQ1());
        setsq2(qs.getQ2());
        setsq3(qs.getQ3());
        setsq17(qs.getQ17());
    }

    public void setQs( Qs qs ){
        setsSize();
        setsq1(qs.getQ1());
        setsq2(qs.getQ2());
        setsq3(qs.getQ3());
        setsq17(qs.getQ17());
    }

    public void setsSize() {
        this.size +=1;
    }

    public void setsq1(String q) {
        switch ( q ){
            case "q11":
                q1[0] +=1;
                break;
            case "q12":
                q1[1] +=1;
                break;
            case "q13":
                q1[2] +=1;
                break;
            case "q14":
                q1[3] +=1;
                break;
        }
    }
    public void setsq2(String[] qs) {
        if ( qs == null )
            return;
        for ( String q : qs ){
            switch ( q ){
                case "q21":
                    q2[0] +=1;
                    break;
                case "q22":
                    q2[1] +=1;
                    break;
                case "q23":
                    q2[2] +=1;
                    break;
                case "q24":
                    q2[3] +=1;
                    break;
                case "q25":
                    q2[4] +=1;
                    break;
                case "q26":
                    q2[5] +=1;
                    break;
                case "q27":
                    q2[6] +=1;
                    break;
            }
        }
    }
    public void setsq3(String q) {
        switch ( q ){
            case "q31":
                q3[0] +=1;
                break;
            case "q32":
                q3[1] +=1;
                break;
            case "q33":
                q3[2] +=1;
                break;
            case "q34":
                q3[3] +=1;
                break;
            case "q35":
                q3[4] +=1;
                break;
        }
    }
    public void setsq17(String q) {
        if ( q != null && q != "" && !q.equals(""))
            q17.add(q);
    }
}

