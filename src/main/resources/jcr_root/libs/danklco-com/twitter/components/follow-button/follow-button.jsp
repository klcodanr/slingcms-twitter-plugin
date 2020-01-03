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
<c:if test="${properties.hideFollowers == 'yes'}">
  <c:set var="followers">data-show-count="false"</c:set>
</c:if>
<c:if test="${properties.size == 'large'}">
  <c:set var="size">data-size="large"</c:set>
</c:if>
<a class="twitter-follow-button" href="https://twitter.com/${sling:encode(properties.account,'HTML_ATTR')}" ${followers} ${size}>
  <fmt:message key="Follow" /> ${sling:encode(properties.account,'HTML')}
</a>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
