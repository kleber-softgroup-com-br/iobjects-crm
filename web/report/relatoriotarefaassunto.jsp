
<%--
The MIT License (MIT)

Copyright (c) 2008 Kleber Maia de Andrade

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--%>
     
<%@include file="../include/beans.jsp"%>

<%@page import="imanager.report.*"%>
<%@page import="imanager.ui.entity.*"%>

<%@page import="securityservice.ui.entity.*"%>

<%
  // in�cio do bloco protegido
  try {
    // nossa inst�ncia de Tarefa Assunto
    RelatorioTarefaAssunto relatorioRelatorioTarefaAssunto = (RelatorioTarefaAssunto)facade.getReport(RelatorioTarefaAssunto.CLASS_NAME);

    // define os par�metros, caso sejamos chamados por outro objeto
    relatorioRelatorioTarefaAssunto.userParamList().setParamsValues(request);

    // nosso Form de relat�rio
    Form formReport = new Form(request, "formReportRelatorioTarefaAssunto", RelatorioTarefaAssunto.ACTION_RELATORIO, RelatorioTarefaAssunto.COMMAND_MAKE_REPORT, "frameReport", true);
    // nosso FrameBar
    FrameBar frameBar = new FrameBar(facade, "frameBarRelatorioTarefaAssunto");
%>

<html>
  <head>
    <title><%=RelatorioTarefaAssunto.ACTION.getCaption()%></title>
    <link href="<%=facade.getStyle().userInterface()%>" rel="stylesheet" type="text/css">
    <script src="include/scripts.js" type="text/javascript"></script>
  </head>
  <body style="margin:0px;" onselectstart="return true;" oncontextmenu="return false;">

    <!-- inicia o FrameBar -->
    <%=frameBar.begin()%>

      <!-- �rea de frames -->
      <%=frameBar.beginFrameArea()%>

        <!-- Frame de identifica��o do objeto -->
        <%=frameBar.actionFrame(RelatorioTarefaAssunto.ACTION)%>

        <!-- Frame de par�metros -->
        <%=frameBar.beginFrame("Par�metros", false, true)%>
          <!-- Form de relat�rio -->
          <%=formReport.begin()%>
            <table style="width:100%;">
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_DATA_INICIAL)%></td>
              </tr>
              <tr>
                <td><%=ParamFormEdit.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_DATA_INICIAL, 0, "", "")%></td>
              </tr>
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_DATA_FINAL)%></td>
              </tr>
              <tr>
                <td><%=ParamFormEdit.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_DATA_FINAL, 0, "", "")%></td>
              </tr>
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_STATUS)%></td>
              </tr>
              <tr>
                <td><%=ParamFormSelect.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_STATUS, 0, "", "")%></td>
              </tr>
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_USUARIO)%></td>
              </tr>
              <tr>
                <td><%=UsuarioUI.lookupSearchForParam(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_USUARIO, 0, "", "", false)%></td>
              </tr>
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_DEPARTAMENTO)%></td>
              </tr>
              <tr>
                <td><%=DepartamentoUI.lookupListForParam(facade, selectedEmpresaId, relatorioRelatorioTarefaAssunto.USER_PARAM_DEPARTAMENTO, 0, "", "") %></td>
              </tr>
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_PRORROGADO)%></td>
              </tr>
              <tr>
                <td><%=ParamFormSelect.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_PRORROGADO, 0, "", "")%></td>
              </tr>
              <tr>
                <td><%=ParamLabel.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_CONSOLIDADO)%></td>
              </tr>
              <tr>
                <td><%=ParamFormSelect.script(facade, relatorioRelatorioTarefaAssunto.USER_PARAM_CONSOLIDADO, 0, "", "")%></td>
              </tr>
              <tr>
                <td><%=CommandControl.formButton(facade, formReport, ImageList.COMMAND_PRINT, "", false, false)%></td>
              </tr>
            </table>
          <%=formReport.end()%>
        <%=frameBar.endFrame()%>

        <!-- Frame de comandos -->
        <%=frameBar.beginFrame("Comandos", false, true)%>
          <script type="text/javascript">
            function executeCommand(command) {
              frameReport.document.execCommand(command);
            }
          </script>
          <table style="width:100%;">
            <tr>
              <td><%=CommandControl.actionCustomScriptHyperlink(facade, RelatorioTarefaAssunto.ACTION, RelatorioTarefaAssunto.COMMAND_PRINT, ImageList.COMMAND_PRINT, "javascript:executeCommand('PRINT');", "", "", false)%></td>
            </tr>
            <tr>
              <td><%=CommandControl.actionCustomScriptHyperlink(facade, RelatorioTarefaAssunto.ACTION, RelatorioTarefaAssunto.COMMAND_COPY, ImageList.COMMAND_COPY, "javascript:executeCommand('SELECTALL');executeCommand('COPY');", "", "", false)%></td>
            </tr>
          </table>
        <%=frameBar.endFrame()%>

      <%=frameBar.endFrameArea()%>

      <!-- �rea do relat�rio -->
      <%=frameBar.beginClientArea()%>
        <iframe name="frameReport" id="frameReport" src="<%=RelatorioTarefaAssunto.ACTION_RELATORIO.url()%>" frameborder="false" style="width:100%; height:100%;" />
      <%=frameBar.endClientArea()%>

    <%=frameBar.end()%>

  </body>
</html>

<%}
  // t�rmino do bloco protegido
  catch (Exception e) {
    Controller.forwardException(e, pageContext);
  } // try-catch
%>
