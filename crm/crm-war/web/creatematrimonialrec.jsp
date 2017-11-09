<%-- 
    Document   : creatematrimonialrec
    Created on : Jul 14, 2017, 1:23:38 PM
    Author     : Lyne
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<t:mainTemplate>
    <jsp:attribute name="title">Catholic Records Management</jsp:attribute>
    <jsp:attribute name="page_title">New Matrimonial Record</jsp:attribute>
   
    <jsp:attribute name="content">
         <f:view>
            <div class="">
                <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                      <div class="x_title">
                        <h2>Matrimonial Details </h2>
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
                        <div id="wizard" class="form_wizard wizard_horizontal">
                            <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Catholic Information</h:outputLabel>
                            <hr>
                            
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{matrimonial.b.memberid.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{matrimonial.b.memberid.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{matrimonial.b.memberid.lname}"/>
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{matrimonial.b.memberid.natID}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="sex" value="#{matrimonial.b.memberid.sex}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="dob" value="#{matrimonial.b.memberid.dob}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="age" value="#{matrimonial.b.memberid.age}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Spouse Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Find Spouse</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <table>
                                        <tr>
                                            <td><a href="findMember" data-toggle="modal"data-target="#findMember" class="btn btn-warning">Catholic Members</a></td>
                                            <td><a href="findBaptism" data-toggle="modal"data-target="#findBaptism" class="btn btn-success">Baptized Catholics</a></td>
                                        </tr>
                                    </table>
                                    
                                    
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Full Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="spousename" value="#{matrimonial.spousename}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="spousenatid" value="#{matrimonial.spousenatid}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Sex</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="spousesex" value="#{matrimonial.spousesex}"/>
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date of Birth</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="spousedob" value="#{matrimonial.spousedob}">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                    </h:inputText>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Age</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="spouseage" value="#{matrimonial.spouseage}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Husband Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Sponsor</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <a href="findHusSponsor" data-toggle="modal"data-target="#findHusSponsor" class="btn btn-warning">Find Sponsor</a>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{matrimonial.sh.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{matrimonial.sh.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{matrimonial.sh.lname}"/>
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{matrimonial.sh.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>
                        <h:form styleClass="form-horizontal form-label-left">
                            <h:outputLabel>Wife Sponsor Information</h:outputLabel>
                            <hr>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Sponsor Identity</label>
                                <div class="col-md-2 col-sm-2 col-xs-12 ">
                                  <div class="input-group">
                                      <a href="findSponsor" data-toggle="modal"data-target="#findSponsor" class="btn btn-warning">Find Sponsor</a>
                                  </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">First Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true"  styleClass="form-control has-feedback-left" id="fname" value="#{matrimonial.sw.fname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Middle Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="mname" value="#{matrimonial.sw.mname}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Last Name</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                  <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="lname" value="#{matrimonial.sw.lname}"/>
                                </div>
                            </div>
                                                        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">National ID / Passport Number</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText disabled="true" styleClass="form-control has-feedback-left" id="natID" value="#{matrimonial.sw.natID}"/>
                                </div>
                            </div>
                            <hr>
                        </h:form>

                            <h:form styleClass="form-horizontal form-label-left">
                                <h:outputLabel>Marital Information</h:outputLabel>
                            <hr>
                           
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Date Of Marriage</label>
                                <div class="col-md-3 col-sm-3 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback-left" id="dateOfMarriage" value="#{matrimonial.m.dateOfMarriage}" title="dd/mm/yyyy" required="true" requiredMessage="The DateOfMarriage field is required." converterMessage="Please provide date of marriage in dd/mm/yyyy format">
                                        <f:convertDateTime pattern="dd/MM/yyyy" />
                                        <f:validateLength maximum="50" />
                                    </h:inputText>
                                    <h:message for="dateOfMarriage" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Residence <small>(Time Of Marriage)</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="husbandAddress" value="#{matrimonial.m.husbandAddress}" title="Husband Address" required="true" requiredMessage="The HusbandAddress field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="husbandAddress" style="color: red"/>
                                    </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Residence <small>(Time Of Marriage)</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputTextarea styleClass="form-control has-feedback-left" id="wifeAddress" value="#{matrimonial.m.wifeAddress}" title="Wife Address" required="true" requiredMessage="The WifeAddress field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputTextarea>
                                    <h:message for="wifeAddress" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Condition of Husband</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="conditionOfHus" value="#{matrimonial.m.conditionOfHus}" title="conditionOfHus" required="true" requiredMessage="The conditionOfHusband field is required.">
                                        <f:selectItem itemLabel="Select Husband Condition" itemValue="" />
                                        <f:selectItem itemLabel="Bachelor" itemValue="bachelor" />
                                        <f:selectItem itemLabel="Widower" itemValue="widower" />
                                        <f:selectItem itemLabel="Divorcee" itemValue="divorcee" />
                                    </h:selectOneMenu>
                                    <h:message for="conditionOfHus" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Condition of Wife</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="conditionOfWife" value="#{matrimonial.m.conditionOfWife}" title="conditionOfWife" required="true" requiredMessage="The conditionOfWife field is required.">
                                        <f:selectItem itemLabel="Select Wife Condition" itemValue="" />
                                        <f:selectItem itemLabel="Spinster" itemValue="spinster" />
                                        <f:selectItem itemLabel="Widow" itemValue="widow" />
                                        <f:selectItem itemLabel="Divorcee" itemValue="divorcee" />
                                </h:selectOneMenu>
                                    <h:message for="conditionOfWife" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Husband Consent <small>By Whom Given</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="consentHus" value="#{matrimonial.m.consentHus}" title="husbandConsent" required="true" requiredMessage="The husbandConsent field is required.">
                                        <f:selectItem itemLabel="Select Husband Consent" itemValue="" />
                                        <f:selectItem itemLabel="Own" itemValue="own" />
                                        <f:selectItem itemLabel="Arranged" itemValue="arranged" />
                                        <f:selectItem itemLabel="Forced" itemValue="forced" />
                                </h:selectOneMenu>
                                   <h:message for="consentHus" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Wife Consent <small>By Whom Given</small></label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="consentWife" value="#{matrimonial.m.consentWife}" title="wifeConsent" required="true" requiredMessage="The wifeConsent field is required.">
                                        <f:selectItem itemLabel="Select Wife Consent" itemValue="" />
                                        <f:selectItem itemLabel="Own" itemValue="own" />
                                        <f:selectItem itemLabel="Arranged" itemValue="arranged" />
                                        <f:selectItem itemLabel="Forced" itemValue="forced" />
                                </h:selectOneMenu>
                                    <h:message for="consentWife" style="color: red"/> 
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage By</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="marriageBy" value="#{matrimonial.m.marriageBy}" title="marriageBy" required="true" requiredMessage="The marriageBy field is required.">
                                        <f:selectItem itemLabel="Select Marriage By" itemValue="" />
                                        <f:selectItem  itemLabel="Banns" itemValue="Banns" />
                                        <f:selectItem  itemLabel="Intention To Marry" itemValue="Intention To Marry" />
                                        <f:selectItem  itemLabel="Marriage License" itemValue="Marriage License" />
                                    </h:selectOneMenu>
                                    <h:message for="marriageBy" style="color: red"/> 
                                </div>
                            </div>        
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Officer</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="ministerid" value="#{matrimonial.ministerid}" title="Ministerid" required="true" requiredMessage="The Ministerid field is required.">
                                        <f:selectItem itemLabel="Select Marriage Officer" itemValue="" />
                                        <f:selectItems value="#{minister.getAll()}" 
                                                           var="m"
                                                           itemLabel="#{m.rank} #{m.fname} #{m.lname}"
                                                           itemValue="#{m.id}" />
                                </h:selectOneMenu>
                                    <h:message for="ministerid" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Official Designation</label>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h:inputText styleClass="form-control has-feedback" id="officialDesignation" value="#{matrimonial.m.officialDesignation}" title="OfficialDesignation" required="true" requiredMessage="The OfficialDesignation field is required.">
                                        <f:validateLength maximum="255" />
                                    </h:inputText>
                                    <h:message for="officialDesignation" style="color: red"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12">Marriage Solemnized At</label>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <h:selectOneMenu styleClass="form-control has-feedback" id="parishid" value="#{matrimonial.parishid}" title="Parishid" required="true" requiredMessage="The Parishid field is required.">
                                        <f:selectItem itemLabel="Select Parish" itemValue="" />
                                        <f:selectItems value="#{parish.getAll()}" 
                                                           var="p"
                                                           itemLabel="#{p.name}"
                                                           itemValue="#{p.id}" />
                                </h:selectOneMenu>
                                    <h:message for="parishid" style="color: red"/>
                                </div>
                            </div>
                                <hr>
                                <h:commandButton action="#{matrimonial.add()}" value="Save" styleClass="btn btn-success"/>
                                <a href="baptism.jsp" value="" class="btn btn-danger">Cancel</a>
                            </h:form>
                             
                        </div>
                    </div>
                </div>
              </div>
            </div>
          </div>
            
            
             <div class="modal fade" id="findMember" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4><p>Find Member <span class="glyphicon glyphicon-search"></span></p></h4>

                        </div>
                        <div class="modal-body">
                            <h:form>
                      
                    <table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>National ID</th>
                            <th>Sex</th>
                            <th>Age</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{catholic.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>${i.fname}</td>
                                    <td>${i.lname}</td>
                                    <td>${i.natID}</td>
                                    <td>${i.sex}</td>
                                    <td>${i.age}</td>
                                    <td>
                                        <h:column>
                                                <h:commandLink action="#{matrimonial.findMember(i)}" value="Select" styleClass="fa fa-plus"/> 
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
            
            <div class="modal fade" id="findBaptism" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4><p>Find Baptized Catholic <span class="glyphicon glyphicon-search"></span></p></h4>

                        </div>
                        <div class="modal-body">
                            <h:form>
                      
                    <table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>National ID</th>
                            <th>Sex</th>
                            <th>Age</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{baptism.all}" >
                                <tr >
                                    <td>${i.memberid.id}</td>
                                    <td>${i.memberid.fname}</td>
                                    <td>${i.memberid.lname}</td>
                                    <td>${i.memberid.natID}</td>
                                    <td>${i.memberid.sex}</td>
                                    <td>${i.memberid.age}</td>
                                    <td>
                                        <h:column>
                                                <h:commandLink action="#{matrimonial.findBaptism(i)}" value="Select" styleClass="fa fa-plus"/> 
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
            
            <div class="modal fade" id="findSponsor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4><p>Find Wife Sponsor <span class="glyphicon glyphicon-search"></span></p></h4>

                        </div>
                        <div class="modal-body">
                            <h:form>
                      
                    <table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>National ID</th>
                            <th>Sex</th>
                            <th>Age</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{sponsor.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>${i.fname}</td>
                                    <td>${i.lname}</td>
                                    <td>${i.natID}</td>
                                    <td>${i.sex}</td>
                                    <td>${i.age}</td>
                                    <td>
                                        <h:column>
                                                <h:commandLink action="#{matrimonial.findSponsor(i)}" value="Select" styleClass="fa fa-eye"/> 
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
            
            <div class="modal fade" id="findHusSponsor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4><p>Find Husband Sponsor <span class="glyphicon glyphicon-search"></span></p></h4>

                        </div>
                        <div class="modal-body">
                            <h:form>
                      
                    <table id="datatable" class="table table-striped  ">
                        <thead>
                          <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>National ID</th>
                            <th>Sex</th>
                            <th>Age</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody >
                            <c:forEach var="i" items="#{sponsor.all}" >
                                <tr >
                                    <td>${i.id}</td>
                                    <td>${i.fname}</td>
                                    <td>${i.lname}</td>
                                    <td>${i.natID}</td>
                                    <td>${i.sex}</td>
                                    <td>${i.age}</td>
                                    <td>
                                        <h:column>
                                                <h:commandLink action="#{matrimonial.findHusSponsor(i)}" value="Select" styleClass="fa fa-eye"/> 
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