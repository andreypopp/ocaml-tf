(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type api_config = {
  auth_fail_action : string prop option; [@option]
      (** Action to take when users access resources that require authentication. Default value: AUTH_FAIL_ACTION_REDIRECT Possible values: [AUTH_FAIL_ACTION_REDIRECT, AUTH_FAIL_ACTION_UNAUTHORIZED] *)
  login : string prop option; [@option]
      (** Level of login required to access this resource. Default value: LOGIN_OPTIONAL Possible values: [LOGIN_OPTIONAL, LOGIN_ADMIN, LOGIN_REQUIRED] *)
  script : string prop;
      (** Path to the script from the application root directory. *)
  security_level : string prop option; [@option]
      (** Security (HTTPS) enforcement for this URL. Possible values: [SECURE_DEFAULT, SECURE_NEVER, SECURE_OPTIONAL, SECURE_ALWAYS] *)
  url : string prop option; [@option]
      (** URL to serve the endpoint at. *)
}
[@@deriving yojson_of]
(** Serving configuration for Google Cloud Endpoints. *)

type automatic_scaling__cpu_utilization = {
  aggregation_window_length : string prop option; [@option]
      (** Period of time over which CPU utilization is calculated. *)
  target_utilization : float prop;
      (** Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1. *)
}
[@@deriving yojson_of]
(** Target scaling by CPU usage. *)

type automatic_scaling__disk_utilization = {
  target_read_bytes_per_second : float prop option; [@option]
      (** Target bytes read per second. *)
  target_read_ops_per_second : float prop option; [@option]
      (** Target ops read per seconds. *)
  target_write_bytes_per_second : float prop option; [@option]
      (** Target bytes written per second. *)
  target_write_ops_per_second : float prop option; [@option]
      (** Target ops written per second. *)
}
[@@deriving yojson_of]
(** Target scaling by disk usage. *)

type automatic_scaling__network_utilization = {
  target_received_bytes_per_second : float prop option; [@option]
      (** Target bytes received per second. *)
  target_received_packets_per_second : float prop option; [@option]
      (** Target packets received per second. *)
  target_sent_bytes_per_second : float prop option; [@option]
      (** Target bytes sent per second. *)
  target_sent_packets_per_second : float prop option; [@option]
      (** Target packets sent per second. *)
}
[@@deriving yojson_of]
(** Target scaling by network usage. *)

type automatic_scaling__request_utilization = {
  target_concurrent_requests : float prop option; [@option]
      (** Target number of concurrent requests. *)
  target_request_count_per_second : string prop option; [@option]
      (** Target requests per second. *)
}
[@@deriving yojson_of]
(** Target scaling by request utilization. *)

type automatic_scaling = {
  cool_down_period : string prop option; [@option]
      (** The time period that the Autoscaler should wait before it starts collecting information from a new instance.
This prevents the autoscaler from collecting information when the instance is initializing,
during which the collected usage would not be reliable. Default: 120s *)
  max_concurrent_requests : float prop option; [@option]
      (** Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.

Defaults to a runtime-specific value. *)
  max_idle_instances : float prop option; [@option]
      (** Maximum number of idle instances that should be maintained for this version. *)
  max_pending_latency : string prop option; [@option]
      (** Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it. *)
  max_total_instances : float prop option; [@option]
      (** Maximum number of instances that should be started to handle requests for this version. Default: 20 *)
  min_idle_instances : float prop option; [@option]
      (** Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service. *)
  min_pending_latency : string prop option; [@option]
      (** Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it. *)
  min_total_instances : float prop option; [@option]
      (** Minimum number of running instances that should be maintained for this version. Default: 2 *)
  cpu_utilization : automatic_scaling__cpu_utilization list;
  disk_utilization : automatic_scaling__disk_utilization list;
  network_utilization : automatic_scaling__network_utilization list;
  request_utilization : automatic_scaling__request_utilization list;
}
[@@deriving yojson_of]
(** Automatic scaling is based on request rate, response latencies, and other application metrics. *)

type deployment__cloud_build_options = {
  app_yaml_path : string prop;
      (** Path to the yaml file used in deployment, used to determine runtime configuration details. *)
  cloud_build_timeout : string prop option; [@option]
      (** The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.

A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly. *)

type deployment__container = {
  image : string prop;
      (** URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest.
Examples: gcr.io/my-project/image:tag or gcr.io/my-project/image@digest *)
}
[@@deriving yojson_of]
(** The Docker image for the container that runs the version. *)

type deployment__files = {
  name : string prop;  (** name *)
  sha1_sum : string prop option; [@option]
      (** SHA1 checksum of the file *)
  source_url : string prop;  (** Source URL *)
}
[@@deriving yojson_of]
(** Manifest of the files stored in Google Cloud Storage that are included as part of this version.
All files must be readable using the credentials supplied with this call. *)

type deployment__zip = {
  files_count : float prop option; [@option]  (** files count *)
  source_url : string prop;  (** Source URL *)
}
[@@deriving yojson_of]
(** Zip File *)

type deployment = {
  cloud_build_options : deployment__cloud_build_options list;
  container : deployment__container list;
  files : deployment__files list;
  zip : deployment__zip list;
}
[@@deriving yojson_of]
(** Code and application artifacts that make up this version. *)

type endpoints_api_service = {
  config_id : string prop option; [@option]
      (** Endpoints service configuration ID as specified by the Service Management API. For example 2016-09-19r1.

By default, the rollout strategy for Endpoints is FIXED. This means that Endpoints starts up with a particular configuration ID.
When a new configuration is rolled out, Endpoints must be given the new configuration ID. The configId field is used to give the configuration ID
and is required in this case.

Endpoints also has a rollout strategy called MANAGED. When using this, Endpoints fetches the latest configuration and does not need
the configuration ID. In this case, configId must be omitted. *)
  disable_trace_sampling : bool prop option; [@option]
      (** Enable or disable trace sampling. By default, this is set to false for enabled. *)
  name : string prop;
      (** Endpoints service name which is the name of the service resource in the Service Management API.
For example myapi.endpoints.myproject.cloud.goog *)
  rollout_strategy : string prop option; [@option]
      (** Endpoints rollout strategy. If FIXED, configId must be specified. If MANAGED, configId must be omitted. Default value: FIXED Possible values: [FIXED, MANAGED] *)
}
[@@deriving yojson_of]
(** Code and application artifacts that make up this version. *)

type entrypoint = {
  shell : string prop;
      (** The format should be a shell command that can be fed to bash -c. *)
}
[@@deriving yojson_of]
(** The entrypoint for the application. *)

type handlers__script = {
  script_path : string prop;
      (** Path to the script from the application root directory. *)
}
[@@deriving yojson_of]
(** Executes a script to handle the requests that match this URL pattern.
Only the auto value is supported for Node.js in the App Engine standard environment, for example script: auto. *)

type handlers__static_files = {
  application_readable : bool prop option; [@option]
      (** Whether files should also be uploaded as code data. By default, files declared in static file handlers are
uploaded as static data and are only served to end users; they cannot be read by the application. If enabled,
uploads are charged against both your code and static data storage resource quotas. *)
  expiration : string prop option; [@option]
      (** Time a static file served by this handler should be cached by web proxies and browsers.
A duration in seconds with up to nine fractional digits, terminated by 's'. Example 3.5s.
Default is '0s' *)
  http_headers : (string * string prop) list option; [@option]
      (** HTTP headers to use for all responses from these URLs.
An object containing a list of key:value value pairs.. *)
  mime_type : string prop option; [@option]
      (** MIME type used to serve all files served by this handler.
Defaults to file-specific MIME types, which are derived from each file's filename extension. *)
  path : string prop option; [@option]
      (** Path to the static files matched by the URL pattern, from the application root directory.
The path can refer to text matched in groupings in the URL pattern. *)
  require_matching_file : bool prop option; [@option]
      (** Whether this handler should match the request if the file referenced by the handler does not exist. *)
  upload_path_regex : string prop option; [@option]
      (** Regular expression that matches the file paths for all files that should be referenced by this handler. *)
}
[@@deriving yojson_of]
(** Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files.
Static file handlers describe which files in the application directory are static files, and which URLs serve them. *)

type handlers = {
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
  script : handlers__script list;
  static_files : handlers__static_files list;
}
[@@deriving yojson_of]
(** An ordered list of URL-matching patterns that should be applied to incoming requests.
The first matching URL handles the request and other request handlers are not attempted. *)

type liveness_check = {
  check_interval : string prop option; [@option]
      (** Interval between health checks. *)
  failure_threshold : float prop option; [@option]
      (** Number of consecutive failed checks required before considering the VM unhealthy. Default: 4. *)
  host : string prop option; [@option]
      (** Host header to send when performing a HTTP Readiness check. Example: myapp.appspot.com *)
  initial_delay : string prop option; [@option]
      (** The initial delay before starting to execute the checks. Default: 300s *)
  path : string prop;  (** The request path. *)
  success_threshold : float prop option; [@option]
      (** Number of consecutive successful checks required before considering the VM healthy. Default: 2. *)
  timeout : string prop option; [@option]
      (** Time before the check is considered failed. Default: 4s *)
}
[@@deriving yojson_of]
(** Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. *)

type manual_scaling = {
  instances : float prop;
      (** Number of instances to assign to the service at the start.

**Note:** When managing the number of instances at runtime through the App Engine Admin API or the (now deprecated) Python 2
Modules API set_num_instances() you must use 'lifecycle.ignore_changes = [manual_scaling[0].instances]' to prevent drift detection. *)
}
[@@deriving yojson_of]
(** A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. *)

type network = {
  forwarded_ports : string prop list option; [@option]
      (** List of ports, or port pairs, to forward from the virtual machine to the application container. *)
  instance_tag : string prop option; [@option]
      (** Tag to apply to the instance during creation. *)
  name : string prop;
      (** Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path. *)
  session_affinity : bool prop option; [@option]
      (** Enable session affinity. *)
  subnetwork : string prop option; [@option]
      (** Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.

If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range.
If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetworkName) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network.
If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetworkName must be specified and the IP address is created from the IPCidrRange of the subnetwork.
If specified, the subnetwork must exist in the same region as the App Engine flexible environment application. *)
}
[@@deriving yojson_of]
(** Extra network settings *)

type readiness_check = {
  app_start_timeout : string prop option; [@option]
      (** A maximum time limit on application initialization, measured from moment the application successfully
replies to a healthcheck until it is ready to serve traffic. Default: 300s *)
  check_interval : string prop option; [@option]
      (** Interval between health checks.  Default: 5s. *)
  failure_threshold : float prop option; [@option]
      (** Number of consecutive failed checks required before removing traffic. Default: 2. *)
  host : string prop option; [@option]
      (** Host header to send when performing a HTTP Readiness check. Example: myapp.appspot.com *)
  path : string prop;  (** The request path. *)
  success_threshold : float prop option; [@option]
      (** Number of consecutive successful checks required before receiving traffic. Default: 2. *)
  timeout : string prop option; [@option]
      (** Time before the check is considered failed. Default: 4s *)
}
[@@deriving yojson_of]
(** Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation. *)

type resources__volumes = {
  name : string prop;  (** Unique name for the volume. *)
  size_gb : float prop;  (** Volume size in gigabytes. *)
  volume_type : string prop;
      (** Underlying volume type, e.g. 'tmpfs'. *)
}
[@@deriving yojson_of]
(** List of ports, or port pairs, to forward from the virtual machine to the application container. *)

type resources = {
  cpu : float prop option; [@option]
      (** Number of CPU cores needed. *)
  disk_gb : float prop option; [@option]
      (** Disk size (GB) needed. *)
  memory_gb : float prop option; [@option]
      (** Memory (GB) needed. *)
  volumes : resources__volumes list;
}
[@@deriving yojson_of]
(** Machine resources for a version. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_access_connector = {
  name : string prop;
      (** Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1. *)
}
[@@deriving yojson_of]
(** Enables VPC connectivity for standard apps. *)

type google_app_engine_flexible_app_version = {
  beta_settings : (string * string prop) list option; [@option]
      (** Metadata settings that are supplied to this version to enable beta runtime features. *)
  default_expiration : string prop option; [@option]
      (** Duration that static files should be cached by web proxies and browsers.
Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time. *)
  delete_service_on_destroy : bool prop option; [@option]
      (** If set to 'true', the service will be deleted if it is the last version. *)
  env_variables : (string * string prop) list option; [@option]
      (** Environment variables available to the application.  As these are not returned in the API request, Terraform will not detect any changes made outside of the Terraform config. *)
  id : string prop option; [@option]  (** id *)
  inbound_services : string prop list option; [@option]
      (** A list of the types of messages that this application is able to receive. Possible values: [INBOUND_SERVICE_MAIL, INBOUND_SERVICE_MAIL_BOUNCE, INBOUND_SERVICE_XMPP_ERROR, INBOUND_SERVICE_XMPP_MESSAGE, INBOUND_SERVICE_XMPP_SUBSCRIBE, INBOUND_SERVICE_XMPP_PRESENCE, INBOUND_SERVICE_CHANNEL_PRESENCE, INBOUND_SERVICE_WARMUP] *)
  instance_class : string prop option; [@option]
      (** Instance class that is used to run this version. Valid values are
AutomaticScaling: F1, F2, F4, F4_1G
ManualScaling: B1, B2, B4, B8, B4_1G
Defaults to F1 for AutomaticScaling and B1 for ManualScaling. *)
  nobuild_files_regex : string prop option; [@option]
      (** Files that match this pattern will not be built into this version. Only applicable for Go runtimes. *)
  noop_on_destroy : bool prop option; [@option]
      (** If set to 'true', the application version will not be deleted. *)
  project : string prop option; [@option]  (** project *)
  runtime : string prop;  (** Desired runtime. Example python27. *)
  runtime_api_version : string prop option; [@option]
      (** The version of the API in the given runtime environment.
Please see the app.yaml reference for valid values at 'https://cloud.google.com/appengine/docs/standard/<language>/config/appref'\
Substitute '<language>' with 'python', 'java', 'php', 'ruby', 'go' or 'nodejs'. *)
  runtime_channel : string prop option; [@option]
      (** The channel of the runtime to use. Only available for some runtimes. *)
  runtime_main_executable_path : string prop option; [@option]
      (** The path or name of the app's main executable. *)
  service : string prop;
      (** AppEngine service resource. Can contain numbers, letters, and hyphens. *)
  service_account : string prop option; [@option]
      (** The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
default if this field is neither provided in app.yaml file nor through CLI flag. *)
  serving_status : string prop option; [@option]
      (** Current serving status of this version. Only the versions with a SERVING status create instances and can be billed. Default value: SERVING Possible values: [SERVING, STOPPED] *)
  version_id : string prop option; [@option]
      (** Relative name of the version within the service. For example, 'v1'. Version names can contain only lowercase letters, numbers, or hyphens.
Reserved names,default, latest, and any name with the prefix ah-. *)
  api_config : api_config list;
  automatic_scaling : automatic_scaling list;
  deployment : deployment list;
  endpoints_api_service : endpoints_api_service list;
  entrypoint : entrypoint list;
  handlers : handlers list;
  liveness_check : liveness_check list;
  manual_scaling : manual_scaling list;
  network : network list;
  readiness_check : readiness_check list;
  resources : resources list;
  timeouts : timeouts option;
  vpc_access_connector : vpc_access_connector list;
}
[@@deriving yojson_of]
(** google_app_engine_flexible_app_version *)

let api_config ?auth_fail_action ?login ?security_level ?url ~script
    () : api_config =
  { auth_fail_action; login; script; security_level; url }

let automatic_scaling__cpu_utilization ?aggregation_window_length
    ~target_utilization () : automatic_scaling__cpu_utilization =
  { aggregation_window_length; target_utilization }

let automatic_scaling__disk_utilization ?target_read_bytes_per_second
    ?target_read_ops_per_second ?target_write_bytes_per_second
    ?target_write_ops_per_second () :
    automatic_scaling__disk_utilization =
  {
    target_read_bytes_per_second;
    target_read_ops_per_second;
    target_write_bytes_per_second;
    target_write_ops_per_second;
  }

let automatic_scaling__network_utilization
    ?target_received_bytes_per_second
    ?target_received_packets_per_second ?target_sent_bytes_per_second
    ?target_sent_packets_per_second () :
    automatic_scaling__network_utilization =
  {
    target_received_bytes_per_second;
    target_received_packets_per_second;
    target_sent_bytes_per_second;
    target_sent_packets_per_second;
  }

let automatic_scaling__request_utilization
    ?target_concurrent_requests ?target_request_count_per_second () :
    automatic_scaling__request_utilization =
  { target_concurrent_requests; target_request_count_per_second }

let automatic_scaling ?cool_down_period ?max_concurrent_requests
    ?max_idle_instances ?max_pending_latency ?max_total_instances
    ?min_idle_instances ?min_pending_latency ?min_total_instances
    ~cpu_utilization ~disk_utilization ~network_utilization
    ~request_utilization () : automatic_scaling =
  {
    cool_down_period;
    max_concurrent_requests;
    max_idle_instances;
    max_pending_latency;
    max_total_instances;
    min_idle_instances;
    min_pending_latency;
    min_total_instances;
    cpu_utilization;
    disk_utilization;
    network_utilization;
    request_utilization;
  }

let deployment__cloud_build_options ?cloud_build_timeout
    ~app_yaml_path () : deployment__cloud_build_options =
  { app_yaml_path; cloud_build_timeout }

let deployment__container ~image () : deployment__container =
  { image }

let deployment__files ?sha1_sum ~name ~source_url () :
    deployment__files =
  { name; sha1_sum; source_url }

let deployment__zip ?files_count ~source_url () : deployment__zip =
  { files_count; source_url }

let deployment ~cloud_build_options ~container ~files ~zip () :
    deployment =
  { cloud_build_options; container; files; zip }

let endpoints_api_service ?config_id ?disable_trace_sampling
    ?rollout_strategy ~name () : endpoints_api_service =
  { config_id; disable_trace_sampling; name; rollout_strategy }

let entrypoint ~shell () : entrypoint = { shell }

let handlers__script ~script_path () : handlers__script =
  { script_path }

let handlers__static_files ?application_readable ?expiration
    ?http_headers ?mime_type ?path ?require_matching_file
    ?upload_path_regex () : handlers__static_files =
  {
    application_readable;
    expiration;
    http_headers;
    mime_type;
    path;
    require_matching_file;
    upload_path_regex;
  }

let handlers ?auth_fail_action ?login ?redirect_http_response_code
    ?security_level ?url_regex ~script ~static_files () : handlers =
  {
    auth_fail_action;
    login;
    redirect_http_response_code;
    security_level;
    url_regex;
    script;
    static_files;
  }

let liveness_check ?check_interval ?failure_threshold ?host
    ?initial_delay ?success_threshold ?timeout ~path () :
    liveness_check =
  {
    check_interval;
    failure_threshold;
    host;
    initial_delay;
    path;
    success_threshold;
    timeout;
  }

let manual_scaling ~instances () : manual_scaling = { instances }

let network ?forwarded_ports ?instance_tag ?session_affinity
    ?subnetwork ~name () : network =
  {
    forwarded_ports;
    instance_tag;
    name;
    session_affinity;
    subnetwork;
  }

let readiness_check ?app_start_timeout ?check_interval
    ?failure_threshold ?host ?success_threshold ?timeout ~path () :
    readiness_check =
  {
    app_start_timeout;
    check_interval;
    failure_threshold;
    host;
    path;
    success_threshold;
    timeout;
  }

let resources__volumes ~name ~size_gb ~volume_type () :
    resources__volumes =
  { name; size_gb; volume_type }

let resources ?cpu ?disk_gb ?memory_gb ~volumes () : resources =
  { cpu; disk_gb; memory_gb; volumes }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_access_connector ~name () : vpc_access_connector = { name }

let google_app_engine_flexible_app_version ?beta_settings
    ?default_expiration ?delete_service_on_destroy ?env_variables ?id
    ?inbound_services ?instance_class ?nobuild_files_regex
    ?noop_on_destroy ?project ?runtime_api_version ?runtime_channel
    ?runtime_main_executable_path ?service_account ?serving_status
    ?version_id ?timeouts ~runtime ~service ~api_config
    ~automatic_scaling ~deployment ~endpoints_api_service ~entrypoint
    ~handlers ~liveness_check ~manual_scaling ~network
    ~readiness_check ~resources ~vpc_access_connector () :
    google_app_engine_flexible_app_version =
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

type t = {
  beta_settings : (string * string) list prop;
  default_expiration : string prop;
  delete_service_on_destroy : bool prop;
  env_variables : (string * string) list prop;
  id : string prop;
  inbound_services : string list prop;
  instance_class : string prop;
  name : string prop;
  nobuild_files_regex : string prop;
  noop_on_destroy : bool prop;
  project : string prop;
  runtime : string prop;
  runtime_api_version : string prop;
  runtime_channel : string prop;
  runtime_main_executable_path : string prop;
  service : string prop;
  service_account : string prop;
  serving_status : string prop;
  version_id : string prop;
}

let register ?tf_module ?beta_settings ?default_expiration
    ?delete_service_on_destroy ?env_variables ?id ?inbound_services
    ?instance_class ?nobuild_files_regex ?noop_on_destroy ?project
    ?runtime_api_version ?runtime_channel
    ?runtime_main_executable_path ?service_account ?serving_status
    ?version_id ?timeouts ~runtime ~service ~api_config
    ~automatic_scaling ~deployment ~endpoints_api_service ~entrypoint
    ~handlers ~liveness_check ~manual_scaling ~network
    ~readiness_check ~resources ~vpc_access_connector __resource_id =
  let __resource_type = "google_app_engine_flexible_app_version" in
  let __resource =
    google_app_engine_flexible_app_version ?beta_settings
      ?default_expiration ?delete_service_on_destroy ?env_variables
      ?id ?inbound_services ?instance_class ?nobuild_files_regex
      ?noop_on_destroy ?project ?runtime_api_version ?runtime_channel
      ?runtime_main_executable_path ?service_account ?serving_status
      ?version_id ?timeouts ~runtime ~service ~api_config
      ~automatic_scaling ~deployment ~endpoints_api_service
      ~entrypoint ~handlers ~liveness_check ~manual_scaling ~network
      ~readiness_check ~resources ~vpc_access_connector ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_flexible_app_version __resource);
  let __resource_attributes =
    ({
       beta_settings =
         Prop.computed __resource_type __resource_id "beta_settings";
       default_expiration =
         Prop.computed __resource_type __resource_id
           "default_expiration";
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
       nobuild_files_regex =
         Prop.computed __resource_type __resource_id
           "nobuild_files_regex";
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
       runtime_channel =
         Prop.computed __resource_type __resource_id
           "runtime_channel";
       runtime_main_executable_path =
         Prop.computed __resource_type __resource_id
           "runtime_main_executable_path";
       service =
         Prop.computed __resource_type __resource_id "service";
       service_account =
         Prop.computed __resource_type __resource_id
           "service_account";
       serving_status =
         Prop.computed __resource_type __resource_id "serving_status";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
     }
      : t)
  in
  __resource_attributes
