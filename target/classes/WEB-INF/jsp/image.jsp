<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="/WEB-INF/jsp/includes.jsp"%>
    
<!DOCTYPE html>
<html ng-app="example366">
<head>
    <meta charset="utf-8" />
    <meta name="author" content="Script Tutorials" />
    <title>Photo Gallery with AngularJS and CSS3 | Script Tutorials</title>
    <meta name="description" content="Photo Gallery with AngularJS and CSS3 - demo page">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <!-- add styles -->
     <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
    <!-- add javascripts -->
    <script src="<c:url value="/resources/js/jquery-2.0.3.min.js" />"></script>
    
    <script src="http://code.angularjs.org/1.2.0rc1/angular.js"></script>
    <script src="http://code.angularjs.org/1.2.0rc1/angular-animate.min.js"></script>
    <script src="http://code.angularjs.org/1.2.0rc1/angular-touch.min.js"></script>
    <script src="<c:url value="/resources/js/app.js" />"></script>
    
</head>
<body ng-controller="MainCtrl">
    <header>
    </header>
    <p>
    <p>
    <!-- slider container -->
    <div class="container slider">
        <!-- enumerate all photos -->
        <img ng-repeat="photo in photos" class="slide" ng-swipe-right="showPrev()" ng-swipe-left="showNext()" ng-show="isActive($index)" ng-src="{{photo.src}}" />
        <!-- prev / next controls -->
        <a class="arrow prev" href="#" ng-click="showPrev()"></a>
        <a class="arrow next" href="#" ng-click="showNext()"></a>
        <!-- extra navigation controls -->
        <ul class="nav">
            <li ng-repeat="photo in photos" ng-class="{'active':isActive($index)}">
                <img src="{{photo.src}}" alt="{{photo.desc}}" title="{{photo.desc}}" ng-click="showPhoto($index);" />
            </li>
        </ul>
    </div>
</body>