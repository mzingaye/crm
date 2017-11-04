<%-- 
    Document   : profile
    Created on : Jul 10, 2017, 1:21:41 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="crm" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib prefix="t" uri="http://myfaces.apache.org/tomahawk" %>

<crm:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">Profile</jsp:attribute>
    <jsp:attribute name="username">${uBean.fname} ${uBean.lname}</jsp:attribute>
    <jsp:attribute name="profpic">
        <f:view>
            <h:graphicImage style="width: 100%; height: 100%;border-radius: 7em" value="/image?id=#{uBean.id}&f=image" alt="Image display"></h:graphicImage>
        </f:view>
    </jsp:attribute>
    <jsp:attribute name="content">
        <f:view>
            <div class="">
                <div id="sys">
                    ${sys.msg}
                </div>
                
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                          <h2>${uBean.fname} ${uBean.lname}'s Profile </h2>
                        <ul class="nav navbar-right panel_toolbox">
                          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                          </li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                              <li><a href="#">Settings 1</a>
                              </li>
                              <li><a href="#">Settings 2</a>
                              </li>
                            </ul>
                          </li>
                          <li><a class="close-link"><i class="fa fa-close"></i></a>
                          </li>
                        </ul>
                        <div class="clearfix"></div>
                      </div>
                       <div id="wizard" class="form_wizard wizard_horizontal">
                        <h:form  styleClass="form-horizontal form-label-left" enctype="multipart/form-data">
                       
                            <h:outputLabel>System User Information</h:outputLabel>
                            <hr>
                                <table>
                                    <tr >
                                        <td style="width: 200px;">
                                            <div class="form-group">
                                                <div style=" border-radius: 7em">
                                                    <h:graphicImage style="width: 100%; height: 100%;border-radius: 7em" value="/image?id=#{uBean.id}&f=image" alt="Image display"></h:graphicImage>
                                                </div>
                                            </div>
                                        </td>
                                        <td  style="width: 80%;">
                                            <div class="form-group" style="width: 100%">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                <h:inputText styleClass="form-control has-feedback-left" id="fname" value="#{uBean.fname}"/>
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputText styleClass="form-control has-feedback-left" id="lname" value="#{uBean.lname}"/>
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputText  styleClass="form-control has-feedback-left" id="dob" value="#{uBean.dob}" title="dd/mm/yyyy" required="true" requiredMessage="The Dob field is required.">
                                                        <f:convertDateTime pattern="dd/mm/yyyy" />
                                                    </h:inputText>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputText styleClass="form-control has-feedback-left" id="natid" value="#{uBean.natID}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Designation</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputText styleClass="form-control has-feedback-left" id="designation" value="#{uBean.designation}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Username</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputText disabled="true" style="ed" styleClass="form-control has-feedback-left" id="username" value="#{uBean.username}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Password </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputSecret styleClass="form-control has-feedback-left" id="password" value="#{user.password}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Confirm Password </label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:inputSecret styleClass="form-control has-feedback-left" id="con_password" value="#{user.con_password}"/>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">User Group</label>
                                                <div class="col-md-9 col-sm-9 col-xs-12">
                                                    <h:selectOneMenu styleClass="form-control has-feedback-left" id="usergroup" value="#{uBean.usergroup}">
                                                        <f:selectItem itemLabel="Select User Group" itemValue="0" />
                                                        <f:selectItem itemLabel="Administrator" itemValue="100" />
                                                        <f:selectItem itemLabel="Secretary" itemValue="50" />
                                                    </h:selectOneMenu>
                                               </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Upload Profile Picture :</label>
                                                <div class="col-md-3 col-sm-3 col-xs-12">
                                                    <t:inputFileUpload styleClass=" has-feedback-left" id="image" value="#{user.image}" title="Image"></t:inputFileUpload>
                                                </div>
                                              </div>
                                        </td>
                                    </tr>
                                </table>
                            <hr> 
                            <h:commandButton value="Update Profile" action="#{user.edit(uBean.id)}" styleClass="btn btn-primary"/>
                    </h:form>    
                   </div>
                </div>
              </div>
            </div>
          </div>
                        <script>
                            setTimeout(fade_out, 5000);

function fade_out() {
  $("#mydiv").fadeOut().empty();
}
                        </script>
                        
        </f:view>
    </jsp:attribute>
</crm:mainTemplate>
