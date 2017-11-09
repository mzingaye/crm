<%-- 
    Document   : createdeathrec
    Created on : Jul 14, 2017, 1:23:08 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Death Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Deceased Details </h2>
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
                    <div class="x_content">
                        
                        <h:form styleClass="form-horizontal form-label-left">
                                <h:outputLabel>Personal Information</h:outputLabel>
                            <hr>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{deathRec.b.memberid.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{deathRec.b.memberid.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{deathRec.b.memberid.lname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{deathRec.b.memberid.sex}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{deathRec.b.memberid.natID}"/>
                                </div>
                            </div>
                                <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="age" value="#{deathRec.b.memberid.age}"/>
                                </div>
                            </div>
                                <hr>
                            </h:form>
                                
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Spouse Information</h:outputLabel>
                            <hr>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Spouse </label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <a href="spouse" data-toggle="modal"data-target="#spouse" class="btn btn-warning">Find Spouse</a>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Full Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{deathRec.fullname}"/>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Marriage</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="dom" value="#{deathRec.m.dateOfMarriage}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>

                        <h:form  styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Death Record Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Death</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dod" value="#{deathRec.d.dateOfDeath}" title="dd/mm/yyyy" required="true" requiredMessage="The Date of death field is required." converterMessage="Please provide date of death in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dod" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Death</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputText styleClass="form-control has-feedback-left" id="placeOfDeath" value="#{deathRec.d.placeOfDeath}" title="PlaceOfDeath" required="true" requiredMessage="The PlaceOfDeath field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="placeOfDeath" style="color: red"/>
                                   </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Burial</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dateOfBurial" value="#{deathRec.d.dateOfBurial}" title="dd/mm/yyyy" required="true" requiredMessage="The DateOfBurial field is required." converterMessage="Please provide date of burial in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dateOfBurial" style="color: red"/>
                                    
                                </div>
                            </div> 
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Place Of Burial</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputText styleClass="form-control has-feedback-left" id="placeOfBurial" value="#{deathRec.d.placeOfBurial}" title="PlaceOfBurial" required="true" requiredMessage="The PlaceOfBurial field is required.">
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="placeOfBurial" style="color: red"/>
                                   </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sacraments Administered</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                   <h:inputTextarea styleClass="tags form-control" id="sacramentAdministered" value="#{deathRec.d.sacramentAdministered}" title="SacramentAdministered" >
                                        <f:validateLength maximum="50" />
                                    </h:inputTextarea>
                                    <h:message for="sacramentAdministered" style="color: red"/>
                                   </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Minister</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{deathRec.ministerid}" title="Ministerid" required="true" requiredMessage="The Minister field is required.">
                                    <f:selectItem itemLabel="Select Minister" itemValue="0" />    
                                    <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.rank} #{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                    <h:message for="ministerid" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Parish</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                 <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{deathRec.parishid}" title="Parishid" required="true" requiredMessage="The Parish field is required.">
                                      <f:selectItem itemLabel="Select Parish" itemValue="0" />  
                                     <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                    <h:message for="parishid" style="color: red"/>
                                </div>
                            </div>
                            <hr>
                            <h:commandButton action="#{deathRec.add()}" value="Save" styleClass="btn btn-success"/>
                            <a href="baptism.jsp" value="" class="btn btn-danger">Cancel</a>
                        </h:form>

                    </div>
                </div>
              </div>
            </div>
          </div>
            
            <div class="modal fade" id="spouse" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4><p>Find Spouse <span class="glyphicon glyphicon-search"></span></p></h4>

                        </div>
                        <div class="modal-body">
                    <h:form>
                      
                    <table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>Date Of Marriage</th>
                            <th>Baptized Catholic</th>
                            <th>Spouse</th>
                            <th>Minister</th>
                            <th>Parish</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{matrimonial.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>
                                        <h:outputText value="#{i.dateOfMarriage}">
                                            <f:convertDateTime pattern="dd/MM/yyyy" />
                                        </h:outputText>
                                    </td>
                                    <td>${i.baptismid.memberid.fname} ${i.baptismid.memberid.fname}</td>
                                    <td>${i.spouse}</td>
                                    <td>${i.ministerid.rank} ${i.ministerid.fname} ${i.ministerid.lname}</td>
                                    <td>${i.parishid.name}</td>
                                    <td>
                                        <h:column>
                                            <h:commandLink action="#{deathRec.spouse(i)}" value=" Select" styleClass="fa fa-plus"/> 
                                        </h:column>
                                    </td>
                                </tr>
                            </c:forEach> 
                        </tbody>
                      
                    </table>
                  </h:form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="close btn btn-success">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </f:view>
    </jsp:attribute>
</t:mainTemplate>
