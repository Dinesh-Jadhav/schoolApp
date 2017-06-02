<!DOCTYPE html>
<%@ page session="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>School Management System - Alumni</title>

		<!-- topbar starts -->
			<%@ include file="/WEB-INF/common_views/header.jsp" %>
		<!-- topbar ends -->
			<!-- left menu starts -->
			<%@ include file="/WEB-INF/common_views/menu.jsp" %>			
			<!-- left menu ends -->


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <h1>
    Alumni
    </h1>
    <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li class="active">Alumni</li>
    </ol>
    </section>
	<!--
	<div class="col-md-3">
		<a class="btn btn-default pull-right" href="addstudent.htm" role="button"><spring:message code="Label.Add.Student"/></a>		
	</div>
	</div>-->

<section class="content">

<form:form commandName="alumni" method="POST">
	<form:hidden path="alumni.guid"/>
			
	<div class="row">
		<div class="col-md-12">

	 	<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Student Name</h3>
            </div>
            <div class="box-body">
	            <div class="row">
			    
			<div class="col-md-3">
			  	<c:choose>
				  	<c:when test="${not empty error_alumni_name_lastName}">
				  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_alumni_name_lastName}"/>"> 
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Student.Last.Name"/>">
				  	</c:otherwise>
			  	</c:choose>
				<label class="control-label" for="focusedInput"><spring:message code="Label.Last.Name"/></label>
				<div class="controls">
					  <form:input class="form-control" id="alumni_name_lastName" path="alumni.name.lastName"/>
				</div>
				  </div>
				</div>

		        <div class="col-md-3">
					<c:choose>
					  	<c:when test="${not empty error_alumni_name_firstName}">
					  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_alumni_name_firstName}"/>">
					  	</c:when>
					  	<c:otherwise>
					  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Student.First.Name"/>">
					  	</c:otherwise>
				  	</c:choose>
				  	<label class="control-label" for="focusedInput"><spring:message code="Label.First.Name"/></label>
				<div class="controls">
					  <form:input class="form-control" id="alumni_name_firstName" path="alumni.name.firstName"/>
				</div>	  
				  	</div>
				</div>

		       <div class="col-md-3">
              		<c:choose>
			  			<c:when test="${not empty error_alumni_name_middleName}">
			  				<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_alumni_name_middleName}"/>">
			  			</c:when>
			  			<c:otherwise>
			  				<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Student.Middle.Name"/>">
			  			</c:otherwise>
			  		</c:choose>
					<label class="control-label" for="focusedInput"><spring:message code="Label.Middle.Name"/></label>
				    <div class="controls">
				    	<form:input class="form-control" id="alumni_name_middleName" path="alumni.name.middleName"/>
			  		</div>
			  		</div>
				</div>
				  
			<div class="col-md-3">
			  	<c:choose>
				  	<c:when test="${not empty error_firstNameOfMother}">
				  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_firstNameOfMother}"/>"> 
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Student.Last.Name"/>">
				  	</c:otherwise>
			  	</c:choose>
				<label class="control-label" for="focusedInput"><spring:message code="Label.Mother.Name"/></label>
				  <div class="controls">
				  	<form:input class="form-control"  id="alumni_firstNameOfMother" path="alumni.firstNameOfMother"/>
				  </div>
				  </div>
			</div>
		</div>			    
	</div>


	 	<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">PRN,Roll Number,Gender</h3>
            </div>
            <div class="box-body">
	            <div class="form-group">
			    

			<div class="col-md-4">
					<c:choose>
				  	<c:when test="${not empty error_alumni_PRN}">
					  <div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_alumni_PRN}"/>">
					</c:when>
					  	<c:otherwise>
					  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.PRN.Number"/>">
					  	</c:otherwise>
					</c:choose>
					<label class="control-label" for="focusedInput"><spring:message code="Label.PRN.Number"/></label>
					<div class="controls">
						  <form:input class="form-control"  id="alumni_PRN" path="alumni.PRN"/>
					</div>
				  </div>
			</div>

			<div class="col-md-2">
				<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.PRN.Number"/>">
				<label class="control-label" for="focusedInput">Roll Number</label>
				<form:input class="form-control"  id="alumni_rollNumber" path="alumni.rollNumber"/>
			  </div>
			</div>
			
			<div class="col-md-2">
			  <div class="form-group">
			  <label class="control-label"><spring:message code="Label.Gender"/></label>
				<div class="controls">
						<form:select path="alumni.gender" data-rel="chosen-select" class="chosen-select"   style="width:100%">
							<form:option value="Female">Female</form:option>
							<form:option value="Male">Male</form:option>
						</form:select>
				</div>
			  </div>
			  </div>

			<div class="col-md-2">
			  	<div class="form-group">
					<label class="control-label" for="focusedInput">Class</label>
					<div class="controls">
					  	<form:select path="alumni.standard" data-rel="chosen-select" class="chosen-select" style="width:100%">
				  			<core:forEach var="classInfo" items="${classes}">
				  				<form:option value="${classInfo.standardOrClass}">${classInfo.standardOrClass}</form:option>
				  			</core:forEach>
						</form:select>
					</div>
				  </div>
			  </div>

			<div class="col-md-2">
			  	<div class="form-group">
					<label class="control-label" for="focusedInput">Division</label>
					<div class="controls">
						<form:select path="alumni.division" data-rel="chosen-select" class="chosen-select"  style="width:100%">
				  			<core:forEach var="classInfo" items="${classes}">
				  				<form:option value="${classInfo.division}">${classInfo.division}</form:option>
				  			</core:forEach>
						</form:select>
					</div>
				  </div>
			  </div>
				</div>			    
			</div>
		</div>
	</div>



	 	<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Birth Details</h3>
            </div>
            <div class="box-body">
	            <div class="form-group">
			    
					<div class="col-md-2">
				  <c:choose>
				  	<c:when test="${not empty error_birthDate}">
				  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_birthDate}"/>">
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Birth.Date"/>">
				  	</c:otherwise>
				  </c:choose>
					<label class="control-label" for="focusedInput"><spring:message code="Label.Birth.Date"/></label>
					<div class="controls">
					  <form:input class="form-control" id="birthDate" path="birthDate"/>
					</div>
				  </div>
					</div>

				<div class="col-md-4">								  
				  	<c:choose>
				  	<c:when test="${not empty error_alumni_placeOfBirth_address}">
				  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_alumni_placeOfBirth_address}"/>">
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Birth.Place"/>">
				  	</c:otherwise>
					</c:choose>
					<label class="control-label" for="focusedInput"><spring:message code="Label.Birth.Place"/></label>
					<div class="controls">
					  <form:textarea class="form-control" id="alumni_placeOfBirth_address" path="alumni.placeOfBirth.address"/>
					</div>
				  </div>
				  </div>
				
				
				<div class="col-md-4">
				  <div class="form-group">
					<label class="control-label" for="focusedInput"><spring:message code="Label.State"/></label>
					<div class="controls">
					  <form:select path="alumni.placeOfBirth.state" data-rel="chosen-select" class="chosen-select"  style="width:100%">
						<core:forEach var="stateInfo" items="${states}">
							<form:option value="${stateInfo.name}">${stateInfo.name}</form:option>
						</core:forEach>
					  </form:select>
					</div>
				  </div>
				  </div>

				<div class="col-md-2">
				  <div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Pin.Code"/>">
					<label class="control-label" for="focusedInput"><spring:message code="Label.PinCode"/></label>
					<div class="controls">
					  <form:input class="form-control" id="alumni_placeOfBirth_pinCodeNumber" path="alumni.placeOfBirth.pinCodeNumber"/>
					</div>
				  </div>
				  </div>
				  
				</div>			    
			</div>
		</div>
	</div>
	</div>

	 	<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Joining Information</h3>
            </div>
            <div class="box-body">
	            <div class="form-group">
			    
				<div class="col-md-2">
				  <c:choose>
				  	<c:when test="${not empty error_admissionDate}">
				  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_admissionDate}"/>">
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Admission.Date"/>">
				  	</c:otherwise>
				  </c:choose>
					<label class="control-label" for="focusedInput"><spring:message code="Label.Admission.Date"/></label>
					<div class="controls">
					  <form:input class="form-control"  id="admissionDate" path="admissionDate"/>
					</div>
				  </div>
				  </div>
				
				<div class="col-md-3">  
				  <c:choose>
				  	<c:when test="${not empty error_alumni_addmissionTakenInclass}">
				  		<div class="form-group has-error">
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group">
				  	</c:otherwise>
				  </c:choose>
				  <label class="control-label" for="focusedInput"><spring:message code="Label.Admission.Class"/></label>
					<div class="controls">
					  <form:select id="alumni_addmissionTakenInclass" path="alumni.addmissionTakenInclass" data-rel="chosen-select" class="chosen-select"   style="width:100%">
				  			<core:forEach var="classInfo" items="${classes}">
				  				<form:option value="${classInfo.standardOrClass}">${classInfo.standardOrClass}</form:option>
				  			</core:forEach>
					  </form:select>
					</div>
				  </div>
				  </div>
				  
				  <div class="col-md-4">
				  <c:choose>
				  	<c:when test="${not empty error_alumni_nameOfLastAttendedSchool}">
				  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="${error_alumni_lastAttendedSchoolName}"/>">
				  	</c:when>
				  	<c:otherwise>
				  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="<spring:message code="Enter.Last.School.Name"/>">
				  	</c:otherwise>
				  </c:choose>
				  <label class="control-label" for="focusedInput"><spring:message code="Label.Last.School.Name"/></label>
					<div class="controls">
					  <form:textarea class="form-control"  id="alumni_nameOfLastAttendedSchool" path="alumni.nameOfLastAttendedSchool"/>
					</div>
				  </div>
				  </div>
				  
				</div>			    
			</div>
		</div>
	

	 	<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Other Information</h3>
            </div>
            <div class="box-body">
	            <div class="form-group">
				    
				    <div class="col-md-2">
					<div class="form-group">
						<label class="control-label" for="focusedInput"><spring:message code="Label.Caste"/></label>
						<div class="controls">
						  	<form:select id="alumni_caste" path="alumni.caste" data-rel="chosen-select" class="chosen-select"  onChange="changeDD('alumni_caste','alumni_category')" style="width:100%">
					  			<core:forEach var="castInfo" items="${castes}">
	  								<form:option value="${castInfo.toString()}" id="${castInfo.categoryGuid}">${castInfo.toString()}</form:option>
	  							</core:forEach>
							</form:select>
						</div>
					</div>
				  	</div>
				  	
				  	<div class="col-md-2">
					<div class="form-group">
						<label class="control-label" for="focusedInput"><spring:message code="Label.Category"/></label>
						<div class="controls">
							<form:select id="alumni_category" path="alumni.category" data-rel="chosen-select" class="chosen-select"  style="width:100%">
						  			<core:forEach var="categoryInfo" items="${categories}">
						  				<form:option value="${categoryInfo.toString()}" id="${categoryInfo.guid}">${categoryInfo.toString()}</form:option>
						  			</core:forEach>
							</form:select>
						</div>
					</div>
					</div>

				  	<div class="col-md-2">
				    <div class="form-group">
						<label class="control-label" for="focusedInput"><spring:message code="Label.Scholarship.Type"/></label>
						<div class="controls">
						  	<form:select path="alumni.scholarshipName" data-rel="chosen-select" class="chosen-select"  style="width:100%">
					  			<core:forEach var="scholarshiptypeInfo" items="${scholarshiptypes}">
					  				<form:option value="${scholarshiptypeInfo.name}">${scholarshiptypeInfo.name}</form:option>
					  			</core:forEach>
							</form:select>
						</div>
					</div>
					</div>
					
					<div class="col-md-2">
				  		<div class="form-group">
						<label class="control-label" for="focusedInput"><spring:message code="Label.Blood.Group"/></label>
						<div>
							<form:select path="alumni.bloodGroup" data-rel="chosen-select" class="chosen-select"  style="width:100%">
								<form:option value="">Select blood group</form:option>
								<core:forEach var="bloodGroups" items="<%=com.samarthsoft.prabandhak.enums.BloodGroup.values()%>">
									<form:option value="${bloodGroups.bloodGroupName}">${bloodGroups.bloodGroupName}</form:option>
								</core:forEach>
							</form:select>
						</div>
				  	</div>
					</div>
					
				  	<div class="col-md-2">
					<div class="form-group">
						<label class="control-label" for="focusedInput"><spring:message code="Label.Nationality"/></label>
						<div class="controls">
					  		<form:select path="alumni.nationality" data-rel="chosen-select" class="chosen-select"  style="width:100%">
								<core:forEach var="nationalityInfo" items="${nationalities}">
									<form:option value="${nationalityInfo.name}">${nationalityInfo.name}</form:option>
								</core:forEach>
							</form:select>
						</div>
				  	</div>
				  	</div>
				  	
				  	<div class="col-md-2">
				  	<div class="form-group">
						<label class="control-label" for="focusedInput"><spring:message code="Label.Mothertongue"/></label>
						<div class="controls">
					  		<form:input class="form-control" id="alumni_motherTongue" path="alumni.motherTongue"/>
						</div>
				  	</div>
					</div>
					
					</div>			    
				</div>
			</div>
			
  <div class="box box-default">
    <div class="box-body">
	  		<div class="form-actions">
					<button type="submit" class="btn btn-default">Save changes</button>
					<a class="btn" href="alumnis.htm">Cancel</a>
				</div>
			</div>	
		</div>
	</div>	
</div><!--/span-->
<!-- content ends -->
</form:form>
</div><!--/#content.span10-->
</div><!--/fluid-row-->

	<script src='js/common.js'></script>
	<!-- <script src='js/alumni.js'></script> -->

  <script src="js/chosen.jquery.js" type="text/javascript"></script>
  <script src="js/prism.js" type="text/javascript" charset="utf-8"></script>
  
  <style type="text/css" media="all">
    /* fix rtl for demo */
    .chosen-rtl .chosen-drop { left: -9000px; }
  </style>
  <script type="text/javascript">
    var config = {
      '.chosen-select'           : {},
      '.chosen-select-deselect'  : {allow_single_deselect:true},
      '.chosen-select-no-single' : {disable_search_threshold:10},
      '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
      '.chosen-select-width'     : {width:"95%"}
    }
    for (var selector in config) {
      $(selector).chosen(config[selector]);
    }
  </script>
  
  <script>
  $(function() {
    $( "#birthDate , #admissionDate" ).datepicker();
  });
  </script>
	
<!--footer-->
<%@ include file="/WEB-INF/common_views/footer.jsp" %>