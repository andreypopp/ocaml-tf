(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_flexible_app_version__api_config = {
  auth_fail_action : string option; [@option]
      (** Action to take when users access resources that require authentication. Default value: AUTH_FAIL_ACTION_REDIRECT Possible values: [AUTH_FAIL_ACTION_REDIRECT, AUTH_FAIL_ACTION_UNAUTHORIZED] *)
  login : string option; [@option]
      (** Level of login required to access this resource. Default value: LOGIN_OPTIONAL Possible values: [LOGIN_OPTIONAL, LOGIN_ADMIN, LOGIN_REQUIRED] *)
  script : string;
      (** Path to the script from the application root directory. *)
  security_level : string option; [@option]
      (** Security (HTTPS) enforcement for this URL. Possible values: [SECURE_DEFAULT, SECURE_NEVER, SECURE_OPTIONAL, SECURE_ALWAYS] *)
  url : string option; [@option]  (** URL to serve the endpoint at. *)
}
[@@deriving yojson_of]
(** Serving configuration for Google Cloud Endpoints. *)

type google_app_engine_flexible_app_version__automatic_scaling__cpu_utilization = {
  aggregation_window_length : string option; [@option]
      (** Period of time over which CPU utilization is calculated. *)
  target_utilization : float;
      (** Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1. *)
}
[@@deriving yojson_of]
(** Target scaling by CPU usage. *)

type google_app_engine_flexible_app_version__automatic_scaling__disk_utilization = {
  target_read_bytes_per_second : float option; [@option]
      (** Target bytes read per second. *)
  target_read_ops_per_second : float option; [@option]
      (** Target ops read per seconds. *)
  target_write_bytes_per_second : float option; [@option]
      (** Target bytes written per second. *)
  target_write_ops_per_second : float option; [@option]
      (** Target ops written per second. *)
}
[@@deriving yojson_of]
(** Target scaling by disk usage. *)

type google_app_engine_flexible_app_version__automatic_scaling__network_utilization = {
  target_received_bytes_per_second : float option; [@option]
      (** Target bytes received per second. *)
  target_received_packets_per_second : float option; [@option]
      (** Target packets received per second. *)
  target_sent_bytes_per_second : float option; [@option]
      (** Target bytes sent per second. *)
  target_sent_packets_per_second : float option; [@option]
      (** Target packets sent per second. *)
}
[@@deriving yojson_of]
(** Target scaling by network usage. *)

type google_app_engine_flexible_app_version__automatic_scaling__request_utilization = {
  target_concurrent_requests : float option; [@option]
      (** Target number of concurrent requests. *)
  target_request_count_per_second : string option; [@option]
      (** Target requests per second. *)
}
[@@deriving yojson_of]
(** Target scaling by request utilization. *)

type google_app_engine_flexible_app_version__automatic_scaling = {
  cool_down_period : string option; [@option]
      (** The time period that the Autoscaler should wait before it starts collecting information from a new instance.
This prevents the autoscaler from collecting information when the instance is initializing,
during which the collected usage would not be reliable. Default: 120s *)
  max_concurrent_requests : float option; [@option]
      (** Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.

Defaults to a runtime-specific value. *)
  max_idle_instances : float option; [@option]
      (** Maximum number of idle instances that should be maintained for this version. *)
  max_pending_latency : string option; [@option]
      (** Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it. *)
  max_total_instances : float option; [@option]
      (** Maximum number of instances that should be started to handle requests for this version. Default: 20 *)
  min_idle_instances : float option; [@option]
      (** Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. *)
  min_pending_latency : string option; [@option]
      (** Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it. *)
  min_total_instances : float option; [@option]
      (** Minimum number of running instances that should be maintained for this version. Default: 2 *)
  cpu_utilization :
    google_app_engine_flexible_app_version__automatic_scaling__cpu_utilization
    list;
  disk_utilization :
    google_app_engine_flexible_app_version__automatic_scaling__disk_utilization
    list;
  network_utilization :
    google_app_engine_flexible_app_version__automatic_scaling__network_utilization
    list;
  request_utilization :
    google_app_engine_flexible_app_version__automatic_scaling__request_utilization
    list;
}
[@@deriving yojson_of]
(** Automatic scaling is based on request rate, response latencies, and other application metrics. *)

type google_app_engine_flexible_app_version__deployment__cloud_build_options = {
  app_yaml_path : string;
      (** Path to the yaml file used in deployment, used to determine runtime configuration details. *)
  cloud_build_timeout : string option; [@option]
      (** The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly. *)

type google_app_engine_flexible_app_version__deployment__container = {
  image : string;
      (** URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest.
Examples: gcr.io/my-project/image:tag or gcr.io/my-project/image@digest *)
}
[@@deriving yojson_of]
(** The Docker image for the container that runs the version. *)

type google_app_engine_flexible_app_version__deployment__files = {
  name : string;  (** name *)
  sha1_sum : string option; [@option]
      (** SHA1 checksum of the file *)
  source_url : string;  (** Source URL *)
}
[@@deriving yojson_of]
(** Manifest of the files stored in Google Cloud Storage that are included as part of this version.
All files must be readable using the credentials supplied with this call. *)

type google_app_engine_flexible_app_version__deployment__zip = {
  files_count : float option; [@option]  (** files count *)
  source_url : string;  (** Source URL *)
}
[@@deriving yojson_of]
(** Zip File *)

type google_app_engine_flexible_app_version__deployment = {
  cloud_build_options :
    google_app_engine_flexible_app_version__deployment__cloud_build_options
    list;
  container :
    google_app_engine_flexible_app_version__deployment__container
    list;
  files :
    google_app_engine_flexible_app_version__deployment__files list;
  zip : google_app_engine_flexible_app_version__deployment__zip list;
}
[@@deriving yojson_of]
(** Code and application artifacts that make up this version. *)

type google_app_engine_flexible_app_version__endpoints_api_service = {
  config_id : string option; [@option]
      (** Endpoints service configuration ID as specified by the Service Management API. For example 2016-09-19r1.

By default, the rollout strategy for Endpoints is FIXED. This means that Endpoints starts up with a particular configuration ID.
When a new configuration is rolled out, Endpoints must be given the new configuration ID. The configId field is used to give the configuration ID
and is required in this case.

Endpoints also has a rollout strategy called MANAGED. When using this, Endpoints fetches the latest configuration and does not need
the configuration ID. In this case, configId must be omitted. *)
  disable_trace_sampling : bool option; [@option]
      (** Enable or disable trace sampling. By default, this is set to false for enabled. *)
  name : string;
      (** Endpoints service name which is the name of the service resource in the Service Management API.
For example myapi.endpoints.myproject.cloud.goog *)
  rollout_strategy : string option; [@option]
      (** Endpoints rollout strategy. If FIXED, configId must be specified. If MANAGED, configId must be omitted. Default value: FIXED Possible values: [FIXED, MANAGED] *)
}
[@@deriving yojson_of]
(** Code and application artifacts that make up this version. *)

type google_app_engine_flexible_app_version__entrypoint = {
  shell : string;
      (** The format should be a shell command that can be fed to bash -c. *)
}
[@@deriving yojson_of]
(** The entrypoint for the application. *)

type google_app_engine_flexible_app_version__handlers__script = {
  script_path : string;
      (** Path to the script from the application root directory. *)
}
[@@deriving yojson_of]
(** Executes a script to handle the requests that match this URL pattern.
Only the auto value is supported for Node.js in the App Engine standard environment, for example script: auto. *)

type google_app_engine_flexible_app_version__handlers__static_files = {
  application_readable : bool option; [@option]
      (** Whether files should also be uploaded as code data. By default, files declared in static file handlers are
uploaded as static data and are only served to end users; they cannot be read by the application. If enabled,
uploads are charged against both your code and static data storage resource quotas. *)
  expiration : string option; [@option]
      (** Time a static file served by this handler should be cached by web proxies and browsers.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example 3.5s.
Default is '0s' *)
  http_headers : (string * string) list option; [@option]
      (** HTTP headers to use for all responses from these URLs.
An object containing a list of key:value value pairs.. *)
  mime_type : string option; [@option]
      (** MIME type used to serve all files served by this handler.
Defaults to file-specific MIME types, which are derived from each file's filename extension. *)
  path : string option; [@option]
      (** Path to the static files matched by the URL pattern, from the application root directory.
The path can refer to text matched in groupings in the URL pattern. *)
  require_matching_file : bool option; [@option]
      (** Whether this handler should match the request if the file referenced by the handler does not exist. *)
  upload_path_regex : string option; [@option]
      (** Regular expression that matches the file paths for all files that should be referenced by this handler. *)
}
[@@deriving yojson_of]
(** Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files.
Static file handlers describe which files in the application directory are static files, and which URLs serve them. *)

type google_app_engine_flexible_app_version__handlers = {
  auth_fail_action : string option; [@option]
      (** Actions to take when the user is not logged in. Possible values: [AUTH_FAIL_ACTION_REDIRECT, AUTH_FAIL_ACTION_UNAUTHORIZED] *)
  login : string option; [@option]
      (** Methods to restrict access to a URL based on login status. Possible values: [LOGIN_OPTIONAL, LOGIN_ADMIN, LOGIN_REQUIRED] *)
  redirect_http_response_code : string option; [@option]
      (** 30x code to use when performing redirects for the secure field. Possible values: [REDIRECT_HTTP_RESPONSE_CODE_301, REDIRECT_HTTP_RESPONSE_CODE_302, REDIRECT_HTTP_RESPONSE_CODE_303, REDIRECT_HTTP_RESPONSE_CODE_307] *)
  security_level : string option; [@option]
      (** Security (HTTPS) enforcement for this URL. Possible values: [SECURE_DEFAULT, SECURE_NEVER, SECURE_OPTIONAL, SECURE_ALWAYS] *)
  url_regex : string option; [@option]
      (** URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings.
All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path. *)
  script :
    google_app_engine_flexible_app_version__handlers__script list;
  static_files :
    google_app_engine_flexible_app_version__handlers__static_files
    list;
}
[@@deriving yojson_of]
(** An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. *)

type google_app_engine_flexible_app_version__liveness_check = {
  check_interval : string option; [@option]
      (** Interval between health checks. *)
  failure_threshold : float option; [@option]
      (** Number of consecutive failed checks required before considering the VM unhealthy. Default: 4. *)
  host : string option; [@option]
      (** Host header to send when performing a HTTP Readiness check. Example: myapp.appspot.com *)
  initial_delay : string option; [@option]
      (** The initial delay before starting to execute the checks. Default: 300s *)
  path : string;  (** The request path. *)
  success_threshold : float option; [@option]
      (** Number of consecutive successful checks required before considering the VM healthy. Default: 2. *)
  timeout : string option; [@option]
      (** Time before the check is considered failed. Default: 4s *)
}
[@@deriving yojson_of]
(** Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. *)

type google_app_engine_flexible_app_version__manual_scaling = {
  instances : float;
      (** Number of instances to assign to the service at the start.

**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
Modules API set_num_instances() you must use 'lifecycle.ignore_changes = [manual_scaling[0].instances]' to prevent drift detection. *)
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type google_app_engine_flexible_app_version__network = {
  forwarded_ports : string list option; [@option]
      (** List of ports, or port pairs, to forward from the virtual machine to the application container. *)
  instance_tag : string option; [@option]
      (** Tag to apply to the instance during creation. *)
  name : string;
      (** Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path. *)
  session_affinity : bool option; [@option]
      (** Enable session affinity. *)
  subnetwork : string option; [@option]
      (** Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.

If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range.
If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetworkName) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network.
If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetworkName must be specified and the IP address is created from the IPCidrRange of the subnetwork.
If specified, the subnetwork must exist in the same region as the App Engine flexible environment application. *)
}
[@@deriving yojson_of]
(** Extra network settings *)

type google_app_engine_flexible_app_version__readiness_check = {
  app_start_timeout : string option; [@option]
      (** A maximum time limit on application initialization, measured from moment the application successfully
replies to a healthcheck until it is ready to serve traffic. Default: 300s *)
  check_interval : string option; [@option]
      (** Interval between health checks.  Default: 5s. *)
  failure_threshold : float option; [@option]
      (** Number of consecutive failed checks required before removing traffic. Default: 2. *)
  host : string option; [@option]
      (** Host header to send when performing a HTTP Readiness check. Example: myapp.appspot.com *)
  path : string;  (** The request path. *)
  success_threshold : float option; [@option]
      (** Number of consecutive successful checks required before receiving traffic. Default: 2. *)
  timeout : string option; [@option]
      (** Time before the check is considered failed. Default: 4s *)
}
[@@deriving yojson_of]
(** Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation. *)

type google_app_engine_flexible_app_version__resources__volumes = {
  name : string;  (** Unique name for the volume. *)
  size_gb : float;  (** Volume size in gigabytes. *)
  volume_type : string;  (** Underlying volume type, e.g. 'tmpfs'. *)
}
[@@deriving yojson_of]
(** List of ports, or port pairs, to forward from the virtual machine to the application container. *)

type google_app_engine_flexible_app_version__resources = {
  cpu : float option; [@option]  (** Number of CPU cores needed. *)
  disk_gb : float option; [@option]  (** Disk size (GB) needed. *)
  memory_gb : float option; [@option]  (** Memory (GB) needed. *)
  volumes :
    google_app_engine_flexible_app_version__resources__volumes list;
}
[@@deriving yojson_of]
(** Machine resources for a version. *)

type google_app_engine_flexible_app_version__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_flexible_app_version__timeouts *)

type google_app_engine_flexible_app_version__vpc_access_connector = {
  name : string;
      (** Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1. *)
}
[@@deriving yojson_of]
(** Enables VPC connectivity for standard apps. *)

type google_app_engine_flexible_app_version = {
  beta_settings : (string * string) list option; [@option]
      (** Metadata settings that are supplied to this version to enable beta runtime features. *)
  default_expiration : string option; [@option]
      (** Duration that static files should be cached by web proxies and browsers.
Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time. *)
  delete_service_on_destroy : bool option; [@option]
      (** If set to 'true', the service will be deleted if it is the last version. *)
  env_variables : (string * string) list option; [@option]
      (** Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config. *)
  id : string option; [@option]  (** id *)
  inbound_services : string list option; [@option]
      (** A list of the types of messages that this application is able to receive. Possible values: [INBOUND_SERVICE_MAIL, INBOUND_SERVICE_MAIL_BOUNCE, INBOUND_SERVICE_XMPP_ERROR, INBOUND_SERVICE_XMPP_MESSAGE, INBOUND_SERVICE_XMPP_SUBSCRIBE, INBOUND_SERVICE_XMPP_PRESENCE, INBOUND_SERVICE_CHANNEL_PRESENCE, INBOUND_SERVICE_WARMUP] *)
  instance_class : string option; [@option]
      (** Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
ManualScaling: B1, B2, B4, B8, B4_1G
Defaults to F1 for AutomaticScaling and B1 for ManualScaling. *)
  nobuild_files_regex : string option; [@option]
      (** Files that match this pattern will not be built into this version. Only applicable for Go runtimes. *)
  noop_on_destroy : bool option; [@option]
      (** If set to 'true', the application version will not be deleted. *)
  project : string option; [@option]  (** project *)
  runtime : string;  (** Desired runtime. Example python27. *)
  runtime_api_version : string option; [@option]
      (** The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at 'https://cloud.google.com/appengine/docs/standard/<language>/config/appref'\
Substitute '<language>' with 'python', 'java', 'php', 'ruby', 'go' or 'nodejs'. *)
  runtime_channel : string option; [@option]
      (** The channel of the runtime to use. Only available for some runtimes. *)
  runtime_main_executable_path : string option; [@option]
      (** The path or name of the app's main executable. *)
  service : string;
      (** AppEngine service resource. Can contain numbers, letters, and hyphens. *)
  service_account : string option; [@option]
      (** The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
default if this field is neither provided in app.yaml file nor through CLI flag. *)
  serving_status : string option; [@option]
      (** Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: SERVING Possible values: [SERVING, STOPPED] *)
  version_id : string option; [@option]
      (** Relative name of the version within the service. For example, 'v1'. Version names can contain only lowercase letters, numbers, or hyphens.
Reserved names,default, latest, and any name with the prefix ah-. *)
  api_config :
    google_app_engine_flexible_app_version__api_config list;
  automatic_scaling :
    google_app_engine_flexible_app_version__automatic_scaling list;
  deployment :
    google_app_engine_flexible_app_version__deployment list;
  endpoints_api_service :
    google_app_engine_flexible_app_version__endpoints_api_service
    list;
  entrypoint :
    google_app_engine_flexible_app_version__entrypoint list;
  handlers : google_app_engine_flexible_app_version__handlers list;
  liveness_check :
    google_app_engine_flexible_app_version__liveness_check list;
  manual_scaling :
    google_app_engine_flexible_app_version__manual_scaling list;
  network : google_app_engine_flexible_app_version__network list;
  readiness_check :
    google_app_engine_flexible_app_version__readiness_check list;
  resources : google_app_engine_flexible_app_version__resources list;
  timeouts : google_app_engine_flexible_app_version__timeouts option;
  vpc_access_connector :
    google_app_engine_flexible_app_version__vpc_access_connector list;
}
[@@deriving yojson_of]
(** google_app_engine_flexible_app_version *)

let google_app_engine_flexible_app_version ?beta_settings
    ?default_expiration ?delete_service_on_destroy ?env_variables ?id
    ?inbound_services ?instance_class ?nobuild_files_regex
    ?noop_on_destroy ?project ?runtime_api_version ?runtime_channel
    ?runtime_main_executable_path ?service_account ?serving_status
    ?version_id ?timeouts ~runtime ~service ~api_config
    ~automatic_scaling ~deployment ~endpoints_api_service ~entrypoint
    ~handlers ~liveness_check ~manual_scaling ~network
    ~readiness_check ~resources ~vpc_access_connector __resource_id =
  let __resource_type = "google_app_engine_flexible_app_version" in
  let __resource =
    {
      beta_settings;
      default_expiration;
      delete_service_on_destroy;
      env_variables;
      id;
      inbound_services;
      instance_class;
      nobuild_files_regex;
      noop_on_destroy;
      project;
      runtime;
      runtime_api_version;
      runtime_channel;
      runtime_main_executable_path;
      service;
      service_account;
      serving_status;
      version_id;
      api_config;
      automatic_scaling;
      deployment;
      endpoints_api_service;
      entrypoint;
      handlers;
      liveness_check;
      manual_scaling;
      network;
      readiness_check;
      resources;
      timeouts;
      vpc_access_connector;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_flexible_app_version __resource);
  ()
