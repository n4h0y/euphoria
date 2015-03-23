<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form method="POST" action="customer" commandName="customer" role="form"
  class="form-horizontal">
  <fieldset>
    <div class="control-group">
      <label class="control-label col-sm-2" for="firstName">First Name</label>
      <div class="col-sm-10">
        <form:input id="firstName" path="firstName" placeholder="e.g. Jane" class="form-control" />
      </div>
    </div>
    <div class="control-group">
      <label class="control-label col-sm-2" for="lastName">Last Name</label>
      <div class="col-sm-10">
        <form:input id="lastName" path="lastName" placeholder="e.g. Doe" class="form-control" />
      </div>
    </div>
    <div class="control-group">
      <label class="control-label col-sm-2" for="email">Email</label>
      <div class="col-sm-10">
        <form:input id="email" path="email" placeholder="e.g. JaneDoe@email.com"
          class="form-control" />
      </div>
    </div>
    <div class="form-actions">
      <div class="col-sm-10">
        <button type="submit" id="save" class="btn btn-primary" class="form-control">Save</button>
      </div>
    </div>
  </fieldset>
</form:form>