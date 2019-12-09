<%-- <%@ include file="/WEB-INF/views/includes/includes.jsp" %> --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<t:template title="List User">
	<jsp:attribute name="content">
	    <!-- Main content -->
	    <section class="content pt-3">
	    	<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item"><a href="<c:url value="/home"/>"><fmt:message key="common.dashboard"/></a></li>
			    <li class="breadcrumb-item"><a href="#"><fmt:message key="common.setting"/></a></li>
			    <li class="breadcrumb-item active" aria-current="page"><fmt:message key="common.setting.user"/></li>
			  </ol>
			</nav>
	    	<div class="row">
	    		<div class="container-fluid">
			        <!-- Page Content -->
			        <h1><fmt:message key="user.list"/></h1>
			        <hr>
			        <!-- Breadcrumbs-->
			        <ol class="breadcrumb">
			        	<li><a href="<c:url value="/admin/user/add"/>">
			        		<i class="fas fa-plus"></i>
			        		<fmt:message key="user.new"/>
			        		</a>
			        	</li>
			        </ol>
			        
			         <!-- DataTables Example -->
			        <div class="card mb-3">
			          <div class="card-header">
			            <i class="fas fa-table"></i>
			            	<fmt:message key="user.list"/>
			            </div>
			          <div class="card-body">
			            <div class="table-responsive">
			              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
			                <thead class="thead-dark">
			                  <tr>
			                    <th><fmt:message key="common.firstname"/></th>
			                    <th><fmt:message key="common.lastname"/></th>
			                    <th><fmt:message key="common.email"/></th>
			                    <th><fmt:message key="user.role"/></th>
			                    <th><fmt:message key="common.action"/></th>
			                  </tr>
			                </thead>
			                <tfoot>
			                  <tr>
			                    <th><fmt:message key="common.firstname"/></th>
			                    <th><fmt:message key="common.lastname"/></th>
			                    <th><fmt:message key="common.email"/></th>
			                    <th><fmt:message key="user.role"/></th>
			                    <th><fmt:message key="common.action"/></th>
			                  </tr>
			                </tfoot>
			                <tbody>
			                  <c:forEach items="${users}" var="user">
				                  <tr>
				                    <td>${user.getFirstName()}</td>
				                    <td>${user.getLastName()}</td>
				                    <td>${user.getEmail()}</td>
				                    <td>${user.getRole()}</td>
				                    <td>
						        		<a href="<c:url value="/admin/user/${user.getIdUser()}/edit"/>" alt="Edit" title="Edit">
							        		<i class="fa fa-edit"></i>
						        		</a>&nbsp;|&nbsp;
						        		<form method="POST" action="<c:url value="/admin/user/${user.getIdUser()}/delete"/>" style="display: inline-block"
						                      onsubmit="return confirm('�tes vous sure de vouloir �ffectuer la suppression? ')" >
						                    <button  class="btn btn-outline-light"><i class="fa fa-trash text-danger"></i></button>
						                </form>
				                    </td>
				                  </tr>
			                  </c:forEach>
			                </tbody>
			              </table>
			            </div>
			          </div>
			        </div>
	      		</div>
	    	</div>
      <!-- /.container-fluid -->
	    </section>
	</jsp:attribute>
</t:template>

