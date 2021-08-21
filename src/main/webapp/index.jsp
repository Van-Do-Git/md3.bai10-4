<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 8/21/2021
  Time: 9:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form method="post" action="/caculate" name="abc">
    <fieldset style="width: 300px;">
        <legend>Creat a new product</legend>
        <table>
            <tr>
                <td>
                    First operand:
                </td>
                <td>
                    <input type="number" name="first" value="0">
                </td>
            </tr>
            <tr>
                <td>
                    Operator:
                </td>
                <td>
                    <select name = "oprator" >
                        <option value="1" selected="selected"> + </option>
                        <option value="2" > - </option>
                        <option value="3"> * </option>
                        <option value="4"> / </option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    Second operand:
                </td>
                <td>
                    <input type="number" name="second" value="0">
                </td>
            </tr>
        </table>
        <button style="left: 198px;position: relative" type="submit">Caculate</button>
    </fieldset>
</form>

</body>
</html>
