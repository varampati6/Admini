<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<table class="table-data">
									<thead>
										<tr>
											<th class="td-select"><input type="checkbox" class="check-allbox" name="check-lightbox-all" id="check-lightbox-1" /><label for="check-lightbox-1"></label></th>
											<th class="a-left"><spring:message code="com.adminui.user_add_profiles.Name" text="default text" /> </th>
											<th class="a-left"><spring:message code="com.adminui.user_add_profiles.Description" text="default text" /> </th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="profile" items="${profilesForCompany.pageList}" varStatus="cntr1">
										<tr>
											<td class="td-select"><input type="checkbox" class="target-chbox" name="assignedProfiles" id="profile-${profile.profileId}" value="${profile.profileId}" /><label for="profile-${profile.profileId}"></label></td>
											<td class="a-left td-description">
												<div class="field">
													<span><a href="#">${profile.profileName}</a></span>
													<input type="text" value="${profile.profileName}" />
												</div>
											</td>
											<td class="a-left">${profile.profileDesc}</td>
										</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="bottom-data">
									<div class="pager">
										<span><spring:message code="com.adminui.user_add_profiles.Page" text="default text" /> ${profilesForCompany.page+1} <spring:message code="com.adminui.user_add_profiles.of" text="default text" /> ${profilesForCompany.pageCount}</span>
										<ul>
											<li><a href="javascript:void(0)" 
													<c:choose>
														<c:when test="${profilesForCompany.page > 0}">class="btn-prev-active"  onclick="navigateProfilePage('${prevUserProfilesPage}', '${param['userId']}');"</c:when>
														<c:otherwise>class="btn-prev"</c:otherwise>
													</c:choose>></a></li>
											<li><a href="javascript:void(0)" 
													<c:choose>
														<c:when test="${profilesForCompany.page+1 eq profilesForCompany.pageCount}">class="btn-next-inactive"</c:when>
														<c:otherwise>class="btn-next"  onclick="navigateProfilePage('${nextUserProfilesPage}', '${param['userId']}');"</c:otherwise>
													</c:choose> ></a></li>
										</ul>
									</div>
									<strong class="pages"><spring:message code="com.adminui.user_add_profiles.TotalRecords" text="default text" /> ${profilesForCompany.firstElementOnPage+((profilesForCompany.lastElementOnPage ne -1)? 1: 0)}-${profilesForCompany.lastElementOnPage+1} <spring:message code="com.adminui.user_add_profiles.of" text="default text" /> ${profilesForCompany.nrOfElements}</strong>
								</div>