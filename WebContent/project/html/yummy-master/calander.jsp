<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<!--�޷�-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <style>table { border-collapse: collapse;}  </style>
    <title>�޷� �����</title>
    <script type="text/javascript" >
    var today = new Date();//���� ��¥
 
 
    function prevClaendar(){//���� �޷�
      today = new Date(today.getFullYear(), today.getMonth()-1,today.getDate());
      buildCalendar();
    }
    //���� �޷��� ������ �����ϰ� �޷¿� �ѷ���
    function nextCalendar(){
      today = new Date(today.getFullYear(), today.getMonth()+1,today.getDate());
      buildCalendar();
 
    }
    function buildCalendar(){
      var nMonth = new Date(today.getFullYear(),today.getMonth(),1);// �̹����� ù��°��
      var lastDate =new Date(today.getFullYear(),today.getMonth()+1,0);//�̹����� ��������
      var tblCalendar =document.getElementById("calendar");    //���̺� �޷��� ����� ���̺�
      var tblCalendarYM =document.getElementById("calendarYM"); ///XXXX�⵵XX�� ���
      tblCalendarYM.innerHTML = today.getFullYear()+"��"+(today.getMonth()+1)+"��";
 
      //������ ���̺� �մ� �޷� ���� ����
      while(tblCalendar.rows.length>2){
        tblCalendar.deleteRow(tblCalendar.rows.length -1);
      }
      var row = null;
      row =tblCalendar.insertRow();
      var cnt =0;
      // 1���� ���۵Ǵ� ĭ�� ���߾���
 
      for ( i=0; i <nMonth.getDay(); i++) {
        cell =row.insertCell();
        cnt = cnt + 1;
    }
      //�޷� ���
      for(i=1; i<=lastDate.getDate(); i++){
        cell =row.insertCell();
        cell.innerHTML = i;
        cnt = cnt + 1;
        if (cnt%7 == 0)    //1��=7��
         row = calendar.insertRow();
 
      }
    }
 
    </script>
  </head>
  <body>
    <table id="calendar"  border="3" align="center" width="800" height="500"  >
      <tr >
        <td align ="center"> <label onclick="prevClaendar()"><</label> </td>
        <td colspan="5" align ="center" id="calendarYM">yyyy�� m��</td>
        <td align ="center"> <label onclick="nextCalendar()">></label> </td>
      </tr>
 
      <tr>
        <td align="center">��</td>
        <td align="center">��</td>
        <td align="center">ȭ</td>
        <td align="center">��</td>
        <td align="center">��</td>
        <td align="center">��</td>
        <td align="center">��</td>
      </tr>
 
    </table>
        <script type="text/javascript" >
 
          buildCalendar();
        </script>
 
 
  </body>
</html>