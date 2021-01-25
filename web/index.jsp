<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/13
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>主修专业满意度调查</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 引入 jQuery Mobile 样式 -->
  <link rel="stylesheet" href="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.css">
  <!-- 引入 jQuery 库 -->
  <script src="http://apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <!-- 引入 jQuery Mobile 库 -->
  <script src="http://apps.bdimg.com/libs/jquerymobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $("#submit").click(function(){
        $.ajax({
          type: "POST",
          url: "dopostOne",
          data: $('#form1').serialize(),
          async: false,
          success : function(data) {

            var d = eval(data);
            $("#result").text(d.size);
            $("#r11").text(d.q1[0]);
            $("#r12").text(d.q1[1]);
            $("#r13").text(d.q1[2]);
            $("#r14").text(d.q1[3]);

            $("#r21").text(d.q2[0]);
            $("#r22").text(d.q2[1]);
            $("#r23").text(d.q2[2]);
            $("#r24").text(d.q2[3]);
            $("#r25").text(d.q2[4]);
            $("#r26").text(d.q2[5]);
            $("#r27").text(d.q2[6]);

            $("#r31").text(d.q3[0]);
            $("#r32").text(d.q3[1]);
            $("#r33").text(d.q3[2]);
            $("#r34").text(d.q3[3]);
            $("#r35").text(d.q3[4]);

            var s="";
            for ( var i = 0; i < d.q17.length; i++ ){
              s+="<li>"+d.q17[i]+"</li>";
            }
            $("#r17").append(s);
          },
          error : function() {
            alert("系统异常，请稍后重试！");
          }
        });
      });

    });
  </script>

</head>
<body>
<div id="page1" data-role="page">
  <div data-role="header">
    <h1>主修专业满意度调查</h1>
  </div>
  <div data-role="content">

    <form id="form1" >
      <fieldset data-role="controlgroup">
        <legend>Q1：请问您目前是：（单选）</legend>
        <label for="q11">大一学生</label>
        <label for="q12">大二学生</label>
        <label for="q13">大三学生</label>
        <label for="q14">大四学生</label>
        <input type="radio" name="q1" id="q11" value="q11"/>
        <input type="radio" name="q1" id="q12" value="q12"/>
        <input type="radio" name="q1" id="q13" value="q13"/>
        <input type="radio" name="q1" id="q14" value="q14"/>
      </fieldset>
      <fieldset data-role="controlgroup">
        <legend>Q2：您为什么会选择目前就读的专业呢？（多选）</legend>
        <label for="q21">父母的意愿</label>
        <label for="q22">自己的兴趣爱好</label>
        <label for="q23">毕业后就业率高</label>
        <label for="q24">当时的热门专业</label>
        <label for="q25">填志愿的时候接受调剂</label>
        <label for="q26">其他亲友的建议</label>
        <label for="q27">其他</label>
        <input type="checkbox" name="q2" id="q21" value="q21"/>
        <input type="checkbox" name="q2" id="q22" value="q22"/>
        <input type="checkbox" name="q2" id="q23" value="q23"/>
        <input type="checkbox" name="q2" id="q24" value="q24"/>
        <input type="checkbox" name="q2" id="q25" value="q25"/>
        <input type="checkbox" name="q2" id="q26" value="q26"/>
        <input type="checkbox" name="q2" id="q27" value="q27"/>
      </fieldset>
      <fieldset data-role="controlgroup">
        <legend>Q3：您报考前对此专业有多少了解？（单选）</legend>
        <label for="q31">非常了解</label>
        <label for="q32">比较了解</label>
        <label for="q33">一般</label>
        <label for="q34">比较不了解</label>
        <label for="q35">非常不了解</label>
        <input type="radio" name="q3" id="q31" value="q31"/>
        <input type="radio" name="q3" id="q32" value="q32"/>
        <input type="radio" name="q3" id="q33" value="q33"/>
        <input type="radio" name="q3" id="q34" value="q34"/>
        <input type="radio" name="q3" id="q35" value="q35"/>
      </fieldset>
      <fieldset data-role="controlgroup">
        <legend>Q17：那么您最希望转读的专业是？请写在下方</legend>
        <input type="text" id="q17" name="q17"/>
      </fieldset>
      <a href="#page2" id="submit" data-role="button">提交</a>
    </form>
  </div>
  <div data-role="footer">
    <h4>谢谢答题！</h4>
  </div>
</div>

<!--第二个界面，显示结果-->
<div id="page2" data-role="page">
  <div data-role="header">
    <h1>主修专业满意度调查</h1>
  </div>
  <div data-role="content">
    <h3>截至目前一共<span id="result">0</span>人填写了问卷！</h3>
    <ul data-role="listview">
      <li>Q1：请问您目前是：（单选）</li>
      <ul>
        <li>大一学生：<span id="r11">0</span>人</li>
        <li>大二学生：<span id="r12">0</span>人</li>
        <li>大三学生：<span id="r13">0</span>人</li>
        <li>大四学生：<span id="r14">0</span>人</li>
      </ul>
      <li>Q2：您为什么会选择目前就读的专业呢？（多选）</li>
      <ul>
        <li>父母的意愿：<span id="r21">0</span>人</li>
        <li>自己的兴趣爱好：<span id="r22">0</span>人</li>
        <li>毕业后就业率高：<span id="r23">0</span>人</li>
        <li>当时的热门专业：<span id="r24">0</span>人</li>
        <li>填志愿的时候接受调剂：<span id="r25">0</span>人</li>
        <li>其他亲友的建议：<span id="r26">0</span>人</li>
        <li>其他：<span id="r27">0</span>人</li>
      </ul>
      <li>Q3：您报考前对此专业有多少了解？（单选）</li>
      <ul>
        <li>非常了解：<span id="r31">0</span>人</li>
        <li>比较了解：<span id="r32">0</span>人</li>
        <li>一般：<span id="r33">0</span>人</li>
        <li>比较不了解：<span id="r34">0</span>人</li>
        <li>非常不了解：<span id="r35">0</span>人</li>
      </ul>
      <li>Q17：那么您最希望转读的专业是？请写在下方</li>
      <ul id="r17"></ul>
    </ul>
  </div>
  <div data-role="footer">
    <h4>欢迎使用小张牌调查文件</h4>
  </div>
</div>
</body>
</html>
