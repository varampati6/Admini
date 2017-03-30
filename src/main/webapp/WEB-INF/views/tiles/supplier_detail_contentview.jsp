<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="scrollable-area vscrollable">
	<table class="table-data alt-table-data">
		<thead>
			<tr>
				<th class="td-select"><input type="checkbox"
					class="check-allbox" name="check-all4" id="check4-1" /><label
					for="check4-1"></label></th>
				<th class="a-left">Content View Name</th>
			</tr>
		</thead>
		<tbody>
			<% int profileCounter = 0; %>
			<c:forEach var="profile" items="${supplierContentView}"
				varStatus="cntr1">
				<tr id="tr-pr-${profile.profileId}">
					<td class="td-select"><input type="checkbox"
						class="target-chbox" name="selectedProfileIds"
						id="profiles-${profile.profileId}" value="${profile.profileId}" /><label
						for="profiles-${profile.profileId}"></label></td>
					<td class="a-left td-username">
						<div class="field">
							<span>${profile.profileName}</span> <input type="text"
								value="${profile.profileName}" />
						</div>
					</td>
				</tr>
				<% ++profileCounter; %>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="bottom-data">
	<strong class="pages">Total Records: <%= profileCounter %></strong>
</div>