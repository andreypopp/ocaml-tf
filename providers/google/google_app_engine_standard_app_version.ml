(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_standard_app_version__automatic_scaling__standard_scheduler_settings = {
  max_instances : float prop option; [@option]
      (** Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration. *)
  min_instances : float prop option; [@option]
      (** Minimum number of instances to run for this version. Set to zero to disable minInstances configuration. *)
  target_cpu_utilization : float prop option; [@option]
      (** Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value. *)
  target_throughput_utilization : float prop option; [@option]
      (** Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value. *)
}
[@@deriving yojson_of]
(** Scheduler settings for standard environment. *)

type google_app_engine_standard_app_version__automatic_scaling = {
  max_concurrent_requests : float prop option; [@option]
      (** Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.

Defaults to a runtime-specific value. *)
  max_idle_instances : float prop option; [@option]
      (** Maximum number of idle instances that should be maintained for this version. *)
  max_pending_latency : string prop option; [@option]
      (** Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  min_idle_instances : float prop option; [@option]
      (** Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. *)
  min_pending_latency : string prop option; [@option]
      (** Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
  standard_scheduler_settings :
    google_app_engine_standard_app_version__automatic_scaling__standard_scheduler_settings
    list;
}
[@@deriving yojson_of]
(** Automatic scaling is based on request rate, response latencies, and other application metrics. *)

type google_app_engine_standard_app_version__basic_scaling = {
  idle_timeout : string prop option; [@option]
      (** Duration of time after the last request that an instance must wait before the instance is shut down.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. Defaults to 900s. *)
  max_instances : float prop;
      (** Maximum number of instances to create for this version. Must be in the range [1.0, 200.0]. *)
}
[@@deriving yojson_of]
(** Basic scaling creates instances when your application receives requests. Each instance will be shut down when the application becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity. *)

type google_app_engine_standard_app_version__deployment__files = {
  name : string prop;  (** name *)
  sha1_sum : string prop option; [@option]
      (** SHA1 checksum of the file *)
  source_url : string prop;  (** Source URL *)
}
[@@deriving yojson_of]
(** Manifest of the files stored in Google Cloud Storage that are included as part of this version.
All files must be readable using the credentials supplied with this call. *)

type google_app_engine_standard_app_version__deployment__zip = {
  files_count : float prop option; [@option]  (** files count *)
  source_url : string prop;  (** Source URL *)
}
[@@deriving yojson_of]
(** Zip File *)

type google_app_engine_standard_app_version__deployment = {
  files :
    google_app_engine_standard_app_version__deployment__files list;
  zip : google_app_engine_standard_app_version__deployment__zip list;
}
[@@deriving yojson_of]
(** Code and application artifacts that make up this version. *)

type google_app_engine_standard_app_version__entrypoint = {
  shell : string prop;
      (** The format should be a shell command that can be fed to bash -c. *)
}
[@@deriving yojson_of]
(** The entrypoint for the application. *)

type google_app_engine_standard_app_version__handlers__script = {
  script_path : string prop;
      (** Path to the script from the application root directory. *)
}
[@@deriving yojson_of]
(** Executes a script to handle the requests that match this URL pattern.
Only the auto value is supported for Node.js in the App Engine standard environment, for example script: auto. *)

type google_app_engine_standard_app_version__handlers__static_files = {
  application_readable : bool prop option; [@option]
      (** Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as
static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged
against both your code and static data storage resource quotas. *)
  expiration : string prop option; [@option]
      (** Time a static file served by this handler should be cached by web proxies and browsers.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example 3.5s. *)
  http_headers : (string * string prop) list option; [@option]
      (** HTTP headers to use for all responses from these URLs.
An object containing a list of key:value value pairs.. *)
  mime_type : string prop option; [@option]
      (** MIME type used to serve all files served by this handler.
Defaults to file-specific MIME types, which are derived from each file's filename extension. *)
  path : string prop option; [@option]
      (** Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern. *)
  require_matching_file : bool prop option; [@option]
      (** Whether this handler should match the request if the file referenced by the handler does not exist. *)
  upload_path_regex : string prop option; [@option]
      (** Regular expression that matches the file paths for all files that should be referenced by this handler. *)
}
[@@deriving yojson_of]
(** Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them. *)

type google_app_engine_standard_app_version__handlers = {
  auth_fail_action : string prop option; [@option]
      (** Actions to take when the user is not logged in. Possible values: [AUTH_FAIL_ACTION_REDIRECT, AUTH_FAIL_ACTION_UNAUTHORIZED] *)
  login : string prop option; [@option]
      (** Methods to restrict access to a URL based on login status. Possible values: [LOGIN_OPTIONAL, LOGIN_ADMIN, LOGIN_REQUIRED] *)
  redirect_http_response_code : string prop option; [@option]
      (** 30x code to use when performing redirects for the secure field. Possible values: [REDIRECT_HTTP_RESPONSE_CODE_301, REDIRECT_HTTP_RESPONSE_CODE_302, REDIRECT_HTTP_RESPONSE_CODE_303, REDIRECT_HTTP_RESPONSE_CODE_307] *)
  security_level : string prop option; [@option]
      (** Security (HTTPS) enforcement for this URL. Possible values: [SECURE_DEFAULT, SECURE_NEVER, SECURE_OPTIONAL, SECURE_ALWAYS] *)
  url_regex : string prop option; [@option]
      (** URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path. *)
  script :
    google_app_engine_standard_app_version__handlers__script list;
  static_files :
    google_app_engine_standard_app_version__handlers__static_files
    list;
}
[@@deriving yojson_of]
(** An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. *)

type google_app_engine_standard_app_version__libraries = {
  name : string prop option; [@option]
      (** Name of the library. Example django. *)
  version : string prop option; [@option]
      (** Version of the library to select, or latest. *)
}
[@@deriving yojson_of]
(** Configuration for third-party Python runtime libraries that are required by the application. *)

type google_app_engine_standard_app_version__manual_scaling = {
  instances : float prop;
      (** Number of instances to assign to the service at the start.

**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
Modules API set_num_instances() you must use 'lifecycle.ignore_changes = [manual_scaling[0].instances]' to prevent drift detection. *)
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type google_app_engine_standard_app_version__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_standard_app_version__timeouts *)

type google_app_engine_standard_app_version__vpc_access_connector = {
  egress_setting : string prop option; [@option]
      (** The egress setting for the connector, controlling what traffic is diverted through it. *)
  name : string prop;
      (** Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1. *)
}
[@@deriving yojson_of]
(** Enables VPC connectivity for standard apps. *)

type google_app_engine_standard_app_version = {
  app_engine_apis : bool prop option; [@option]
      (** Allows App Engine second generation runtimes to access the legacy bundled services. *)
  delete_service_on_destroy : bool prop option; [@option]
      (** If set to 'true', the service will be deleted if it is the last version. *)
  env_variables : (string * string prop) list option; [@option]
      (** Environment variables available to the application. *)
  id : string prop option; [@option]  (** id *)
  inbound_services : string prop list option; [@option]
      (** A list of the types of messages that this application is able to receive. Possible values: [INBOUND_SERVICE_MAIL, INBOUND_SERVICE_MAIL_BOUNCE, INBOUND_SERVICE_XMPP_ERROR, INBOUND_SERVICE_XMPP_MESSAGE, INBOUND_SERVICE_XMPP_SUBSCRIBE, INBOUND_SERVICE_XMPP_PRESENCE, INBOUND_SERVICE_CHANNEL_PRESENCE, INBOUND_SERVICE_WARMUP] *)
  instance_class : string prop option; [@option]
      (** Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
BasicScaling or ManualScaling: B1, B2, B4, B4_1G, B8
Defaults to F1 for AutomaticScaling and B2 for ManualScaling and BasicScaling. If no scaling is specified, AutomaticScaling is chosen. *)
  noop_on_destroy : bool prop option; [@option]
      (** If set to 'true', the application version will not be deleted. *)
  project : string prop option; [@option]  (** project *)
  runtime : string prop;  (** Desired runtime. Example python27. *)
  runtime_api_version : string prop option; [@option]
      (** The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at 'https://cloud.google.com/appengine/docs/standard/<language>/config/appref'\
Substitute '<language>' with 'python', 'java', 'php', 'ruby', 'go' or 'nodejs'. *)
  service : string prop;  (** AppEngine service resource *)
  service_account : string prop option; [@option]
      (** The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag. *)
  threadsafe : bool prop option; [@option]
      (** Whether multiple requests can be dispatched to this version at once. *)
  version_id : string prop option; [@option]
      (** Relative name of the version within the service. For example, 'v1'. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names,default, latest, and any name with the prefix ah-. *)
  automatic_scaling :
    google_app_engine_standard_app_version__automatic_scaling list;
  basic_scaling :
    google_app_engine_standard_app_version__basic_scaling list;
  deployment :
    google_app_engine_standard_app_version__deployment list;
  entrypoint :
    google_app_engine_standard_app_version__entrypoint list;
  handlers : google_app_engine_standard_app_version__handlers list;
  libraries : google_app_engine_standard_app_version__libraries list;
  manual_scaling :
    google_app_engine_standard_app_version__manual_scaling list;
  timeouts : google_app_engine_standard_app_version__timeouts option;
  vpc_access_connector :
    google_app_engine_standard_app_version__vpc_access_connector list;
}
[@@deriving yojson_of]
(** google_app_engine_standard_app_version *)

type t = {
  app_engine_apis : bool prop;
  delete_service_on_destroy : bool prop;
  env_variables : (string * string) list prop;
  id : string prop;
  inbound_services : string list prop;
  instance_class : string prop;
  name : string prop;
  noop_on_destroy : bool prop;
  project : string prop;
  runtime : string prop;
  runtime_api_version : string prop;
  service : string prop;
  service_account : string prop;
  threadsafe : bool prop;
  version_id : string prop;
}

let google_app_engine_standard_app_version ?app_engine_apis
    ?delete_service_on_destroy ?env_variables ?id ?inbound_services
    ?instance_class ?noop_on_destroy ?project ?runtime_api_version
    ?service_account ?threadsafe ?version_id ?timeouts ~runtime
    ~service ~automatic_scaling ~basic_scaling ~deployment
    ~entrypoint ~handlers ~libraries ~manual_scaling
    ~vpc_access_connector __resource_id =
  let __resource_type = "google_app_engine_standard_app_version" in
  let __resource =
    ({
       app_engine_apis;
       delete_service_on_destroy;
       env_variables;
       id;
       inbound_services;
       instance_class;
       noop_on_destroy;
       project;
       runtime;
       runtime_api_version;
       service;
       service_account;
       threadsafe;
       version_id;
       automatic_scaling;
       basic_scaling;
       deployment;
       entrypoint;
       handlers;
       libraries;
       manual_scaling;
       timeouts;
       vpc_access_connector;
     }
      : google_app_engine_standard_app_version)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_standard_app_version __resource);
  let __resource_attributes =
    ({
       app_engine_apis =
         Prop.computed __resource_type __resource_id
           "app_engine_apis";
       delete_service_on_destroy =
         Prop.computed __resource_type __resource_id
           "delete_service_on_destroy";
       env_variables =
         Prop.computed __resource_type __resource_id "env_variables";
       id = Prop.computed __resource_type __resource_id "id";
       inbound_services =
         Prop.computed __resource_type __resource_id
           "inbound_services";
       instance_class =
         Prop.computed __resource_type __resource_id "instance_class";
       name = Prop.computed __resource_type __resource_id "name";
       noop_on_destroy =
         Prop.computed __resource_type __resource_id
           "noop_on_destroy";
       project =
         Prop.computed __resource_type __resource_id "project";
       runtime =
         Prop.computed __resource_type __resource_id "runtime";
       runtime_api_version =
         Prop.computed __resource_type __resource_id
           "runtime_api_version";
       service =
         Prop.computed __resource_type __resource_id "service";
       service_account =
         Prop.computed __resource_type __resource_id
           "service_account";
       threadsafe =
         Prop.computed __resource_type __resource_id "threadsafe";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
     }
      : t)
  in
  __resource_attributes
