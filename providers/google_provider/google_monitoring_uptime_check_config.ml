(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_monitoring_uptime_check_config__content_matchers__json_path_matcher = {
  json_matcher : string option; [@option]
      (** Options to perform JSONPath content matching. Default value: EXACT_MATCH Possible values: [EXACT_MATCH, REGEX_MATCH] *)
  json_path : string;
      (** JSONPath within the response output pointing to the expected 'ContentMatcher::content' to match against. *)
}
[@@deriving yojson_of]
(** Information needed to perform a JSONPath content match. Used for 'ContentMatcherOption::MATCHES_JSON_PATH' and 'ContentMatcherOption::NOT_MATCHES_JSON_PATH'. *)

type google_monitoring_uptime_check_config__content_matchers = {
  content : string;
      (** String or regex content to match (max 1024 bytes) *)
  matcher : string option; [@option]
      (** The type of content matcher that will be applied to the server output, compared to the content string when the check is run. Default value: CONTAINS_STRING Possible values: [CONTAINS_STRING, NOT_CONTAINS_STRING, MATCHES_REGEX, NOT_MATCHES_REGEX, MATCHES_JSON_PATH, NOT_MATCHES_JSON_PATH] *)
  json_path_matcher :
    google_monitoring_uptime_check_config__content_matchers__json_path_matcher
    list;
}
[@@deriving yojson_of]
(** The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required. *)

type google_monitoring_uptime_check_config__http_check__accepted_response_status_codes = {
  status_class : string option; [@option]
      (** A class of status codes to accept. Possible values: [STATUS_CLASS_1XX, STATUS_CLASS_2XX, STATUS_CLASS_3XX, STATUS_CLASS_4XX, STATUS_CLASS_5XX, STATUS_CLASS_ANY] *)
  status_value : float option; [@option]
      (** A status code to accept. *)
}
[@@deriving yojson_of]
(** If present, the check will only pass if the HTTP response status code is in this set of status codes. If empty, the HTTP status code will only pass if the HTTP status code is 200-299. *)

type google_monitoring_uptime_check_config__http_check__auth_info = {
  password : string;  (** The password to authenticate. *)
  username : string;  (** The username to authenticate. *)
}
[@@deriving yojson_of]
(** The authentication information. Optional when creating an HTTP check; defaults to empty. *)

type google_monitoring_uptime_check_config__http_check__ping_config = {
  pings_count : float;
      (** Number of ICMP pings. A maximum of 3 ICMP pings is currently supported. *)
}
[@@deriving yojson_of]
(** Contains information needed to add pings to an HTTP check. *)

type google_monitoring_uptime_check_config__http_check = {
  body : string option; [@option]
      (** The request body associated with the HTTP POST request. If 'content_type' is 'URL_ENCODED', the body passed in must be URL-encoded. Users can provide a 'Content-Length' header via the 'headers' field or the API will do so. If the 'request_method' is 'GET' and 'body' is not empty, the API will return an error. The maximum byte size is 1 megabyte. Note - As with all bytes fields JSON representations are base64 encoded. e.g. 'foo=bar' in URL-encoded form is 'foo%3Dbar' and in base64 encoding is 'Zm9vJTI1M0RiYXI='. *)
  content_type : string option; [@option]
      (** The content type to use for the check. Possible values: [TYPE_UNSPECIFIED, URL_ENCODED, USER_PROVIDED] *)
  custom_content_type : string option; [@option]
      (** A user provided content type header to use for the check. The invalid configurations outlined in the 'content_type' field apply to custom_content_type', as well as the following 1. 'content_type' is 'URL_ENCODED' and 'custom_content_type' is set. 2. 'content_type' is 'USER_PROVIDED' and 'custom_content_type' is not set. *)
  headers : (string * string) list option; [@option]
      (** The list of headers to send as part of the uptime check request. If two headers have the same key and different values, they should be entered as a single header, with the value being a comma-separated list of all the desired values as described in [RFC 2616 (page 31)](https://www.w3.org/Protocols/rfc2616/rfc2616.txt). Entering two separate headers with the same key in a Create call will cause the first to be overwritten by the second. The maximum number of headers allowed is 100. *)
  mask_headers : bool option; [@option]
      (** Boolean specifying whether to encrypt the header information. Encryption should be specified for any headers related to authentication that you do not wish to be seen when retrieving the configuration. The server will be responsible for encrypting the headers. On Get/List calls, if 'mask_headers' is set to 'true' then the headers will be obscured with '******'. *)
  path : string option; [@option]
      (** The path to the page to run the check against. Will be combined with the host (specified within the MonitoredResource) and port to construct the full URL. If the provided path does not begin with '/', a '/' will be prepended automatically. Optional (defaults to '/'). *)
  port : float option; [@option]
      (** The port to the page to run the check against. Will be combined with 'host' (specified within the ['monitored_resource'](#nested_monitored_resource)) and path to construct the full URL. Optional (defaults to 80 without SSL, or 443 with SSL). *)
  request_method : string option; [@option]
      (** The HTTP request method to use for the check. If set to 'METHOD_UNSPECIFIED' then 'request_method' defaults to 'GET'. Default value: GET Possible values: [METHOD_UNSPECIFIED, GET, POST] *)
  use_ssl : bool option; [@option]
      (** If true, use HTTPS instead of HTTP to run the check. *)
  validate_ssl : bool option; [@option]
      (** Boolean specifying whether to include SSL certificate validation as a part of the Uptime check. Only applies to checks where 'monitored_resource' is set to 'uptime_url'. If 'use_ssl' is 'false', setting 'validate_ssl' to 'true' has no effect. *)
  accepted_response_status_codes :
    google_monitoring_uptime_check_config__http_check__accepted_response_status_codes
    list;
  auth_info :
    google_monitoring_uptime_check_config__http_check__auth_info list;
  ping_config :
    google_monitoring_uptime_check_config__http_check__ping_config
    list;
}
[@@deriving yojson_of]
(** Contains information needed to make an HTTP or HTTPS check. *)

type google_monitoring_uptime_check_config__monitored_resource = {
  labels : (string * string) list;
      (** Values for all of the labels listed in the associated monitored resource descriptor. For example, Compute Engine VM instances use the labels 'project_id', 'instance_id', and 'zone'. *)
  type_ : string; [@key "type"]
      (** The monitored resource type. This field must match the type field of a ['MonitoredResourceDescriptor'](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.monitoredResourceDescriptors#MonitoredResourceDescriptor) object. For example, the type of a Compute Engine VM instance is 'gce_instance'. For a list of types, see [Monitoring resource types](https://cloud.google.com/monitoring/api/resources) and [Logging resource types](https://cloud.google.com/logging/docs/api/v2/resource-list). *)
}
[@@deriving yojson_of]
(** The [monitored resource]
(https://cloud.google.com/monitoring/api/resources) associated with the
configuration. The following monitored resource types are supported for
uptime checks:
* 'aws_ec2_instance'
* 'aws_elb_load_balancer'
* 'gae_app
* 'gce_instance'
* 'k8s_service'
* 'servicedirectory_service'
* 'uptime_url' *)

type google_monitoring_uptime_check_config__resource_group = {
  group_id : string option; [@option]
      (** The group of resources being monitored. Should be the 'name' of a group *)
  resource_type : string option; [@option]
      (** The resource type of the group members. Possible values: [RESOURCE_TYPE_UNSPECIFIED, INSTANCE, AWS_ELB_LOAD_BALANCER] *)
}
[@@deriving yojson_of]
(** The group resource associated with the configuration. *)

type google_monitoring_uptime_check_config__synthetic_monitor__cloud_function_v2 = {
  name : string;
      (** The fully qualified name of the cloud function resource. *)
}
[@@deriving yojson_of]
(** Target a Synthetic Monitor GCFv2 Instance *)

type google_monitoring_uptime_check_config__synthetic_monitor = {
  cloud_function_v2 :
    google_monitoring_uptime_check_config__synthetic_monitor__cloud_function_v2
    list;
}
[@@deriving yojson_of]
(** A Synthetic Monitor deployed to a Cloud Functions V2 instance. *)

type google_monitoring_uptime_check_config__tcp_check__ping_config = {
  pings_count : float;
      (** Number of ICMP pings. A maximum of 3 ICMP pings is currently supported. *)
}
[@@deriving yojson_of]
(** Contains information needed to add pings to a TCP check. *)

type google_monitoring_uptime_check_config__tcp_check = {
  port : float;
      (** The port to the page to run the check against. Will be combined with host (specified within the 'monitored_resource') to construct the full URL. *)
  ping_config :
    google_monitoring_uptime_check_config__tcp_check__ping_config
    list;
}
[@@deriving yojson_of]
(** Contains information needed to make a TCP check. *)

type google_monitoring_uptime_check_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_monitoring_uptime_check_config__timeouts *)

type google_monitoring_uptime_check_config = {
  display_name : string;
      (** A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced. *)
  period : string option; [@option]
      (** How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s. *)
  selected_regions : string list option; [@option]
      (** The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions. *)
  timeout : string;
      (** The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). [See the accepted formats]( https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#google.protobuf.Duration) *)
  user_labels : (string * string) list option; [@option]
      (** User-supplied key/value data to be used for organizing and identifying the 'UptimeCheckConfig' objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter. *)
  content_matchers :
    google_monitoring_uptime_check_config__content_matchers list;
  http_check :
    google_monitoring_uptime_check_config__http_check list;
  monitored_resource :
    google_monitoring_uptime_check_config__monitored_resource list;
  resource_group :
    google_monitoring_uptime_check_config__resource_group list;
  synthetic_monitor :
    google_monitoring_uptime_check_config__synthetic_monitor list;
  tcp_check : google_monitoring_uptime_check_config__tcp_check list;
  timeouts : google_monitoring_uptime_check_config__timeouts option;
}
[@@deriving yojson_of]
(** google_monitoring_uptime_check_config *)

let google_monitoring_uptime_check_config ?period ?selected_regions
    ?user_labels ?timeouts ~display_name ~timeout ~content_matchers
    ~http_check ~monitored_resource ~resource_group
    ~synthetic_monitor ~tcp_check __resource_id =
  let __resource_type = "google_monitoring_uptime_check_config" in
  let __resource =
    {
      display_name;
      period;
      selected_regions;
      timeout;
      user_labels;
      content_matchers;
      http_check;
      monitored_resource;
      resource_group;
      synthetic_monitor;
      tcp_check;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_monitoring_uptime_check_config __resource);
  ()
