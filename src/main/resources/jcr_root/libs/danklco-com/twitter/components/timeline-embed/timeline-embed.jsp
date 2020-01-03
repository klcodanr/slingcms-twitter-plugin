<%--
 * Copyright (C) 2019 Dan Klco
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
--%>
<%@include file="/libs/sling-cms/global.jsp"%>
<c:if test="${not empty properties.limit}">
  <c:set var="limit">data-tweet-limit="${properties.limit}"</c:set>
</c:if>
<c:if test="${properties.theme == 'dark'}">
  <c:set var="theme">data-theme="dark"</c:set>
</c:if>
<c:if test="${not empty properties.chrome}">
  <c:set var="chrome">data-chrome="${sling:encode(properties.chrome,'HTML_ATTR')}"</c:set>
</c:if>
<a class="twitter-timeline" href="https://twitter.com/${properties.target}?ref_src=twsrc%5Etfw" ${limit} ${chrome} ${theme}>
  Tweets from ${sling:encode(properties.target,'HTML')}
</a>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
