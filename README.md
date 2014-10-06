
Getting Started
===============

If you haven't already make sure you are familiar with Custom Runtimes in the
App Engine Managed VM documentation.

You must have the Google Cloud SDK, with the Managed VM component installed.
We will assume that the SDK is available on your command line as `$ gcloud`.

You must also install Docker on your workstation, as the SDK uses it to
build, test and deploy your application. Refer to the Managed VM
documentation for more information on how to install Docker for your
environment.

What's in this Repository?
==========================

This is a minimal managed VM runtime that runs the nginx server.  It
implements the two required handlers (`/_ah/start` and `/_ah/health`) as
static pages and illustrates the files necessary to run a custom runtime.

`app.yaml` - Configuration file for App Engine.
`Dockerfile` - Defines your docker image.
`index.html` - Root page to be served by nginx.
`nginx.conf` - nginx configuration file.
`ok` - File content served by start and health handlers.

Running Locally
===============

First, make sure Docker has been started on your workstation.  Refer to the
Managed VM documentation for more information on how to do this for your
environment.

Then, to run locally:

  `$ gcloud preview app run /path/to/appengine-nginx-hello`

This will build the nginx docker image and run it locally.  You can access it
at [http://localhost:8080](http://localhost:8080).

Deploying your Application
==========================

To deploy to App Engine:

  `$ gcloud preview app deploy /path/to/appengine-nginx-hello`

This will build the nginx docker image and deploy it to App Engine.

License
=========

Copyright 2014 Google Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
