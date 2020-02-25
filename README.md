<!--
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
 -->

[![CircleCI](https://circleci.com/gh/klcodanr/slingcms-twitter-plugin.svg?style=svg)](https://circleci.com/gh/klcodanr/slingcms-twitter-plugin)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=slingcms-twitter-plugin&metric=alert_status)](https://sonarcloud.io/dashboard?id=slingcms-twitter-plugin)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/4cdb00981b134862977f5752ab1b66b4)](https://www.codacy.com/manual/klcodanr/slingcms-twitter-plugin?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=klcodanr/slingcms-twitter-plugin&amp;utm_campaign=Badge_Grade)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0)

# Apache Sling CMS - Twitter Plugin

A plugin to enable [twitter](https://twitter.com) timelines and follow buttons in the
[Apache Sling CMS](https://github.com/apache/org-apache-sling-app-cms).

## Installation

Download the [build the code](#building) or latest release and install it into an
Apache Sling CMS instance via the OSGi console at {sling_cms_host}/system/console/bundles.


## Configuration

To use this plugin, you must enable it in the [Component Policy](https://github.com/apache/sling-org-apache-sling-app-cms/blob/master/docs/component-policy.md)
you want in Sling CMS.

## Use

Once the twitter components are enabled, you can add it to any page by selecting + then Twitter > Component Name.

The components can also be included from any other component using the following code:

Follow Button:

  `<sling:include path="{some_path}" resourceType="danklco-com/twitter/components/follow-button" />`

Timeline Embed:

  `<sling:include path="{some_path}" resourceType="danklco-com/twitter/components/timeline-embed" />`

## Building

This project requires Apache Maven 3 and Java JDK8. To build the project run:

`mvn clean install`

To install the bundle into a local Sling CMS instance running on port 8080, run:

`mvn clean install -P autoInstallBundle`
