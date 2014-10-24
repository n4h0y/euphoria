<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table>
    <thead>
        <tiles:insertAttribute name="theader" ignore="true" />
    </thead>
    <tbody>
        <tiles:insertAttribute name="tbody" ignore="true" />
    </tbody>
    <tfoot>
        <tiles:insertAttribute name="tfooter" ignore="true" />
    </tfoot>
</table>
