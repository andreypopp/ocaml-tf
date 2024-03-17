(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_backend_service__backend = {
  balancing_mode : string option; [@option]
      (** Specifies the balancing mode for this backend.

For global HTTP(S) or TCP/SSL load balancing, the default is
UTILIZATION. Valid values are UTILIZATION, RATE (for HTTP(S))
and CONNECTION (for TCP/SSL).

See the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
for an explanation of load balancing modes. Default value: UTILIZATION Possible values: [UTILIZATION, RATE, CONNECTION] *)
  capacity_scaler : float option; [@option]
      (** A multiplier applied to the group's maximum servicing capacity
(based on UTILIZATION, RATE or CONNECTION).

Default value is 1, which means the group will serve up to 100%
of its configured capacity (depending on balancingMode). A
setting of 0 means the group is completely drained, offering
0% of its available Capacity. Valid range is [0.0,1.0]. *)
  description : string option; [@option]
      (** An optional description of this resource.
Provide this property when you create the resource. *)
  group : string;
      (** The fully-qualified URL of an Instance Group or Network Endpoint
Group resource. In case of instance group this defines the list
of instances that serve traffic. Member virtual machine
instances from each instance group must live in the same zone as
the instance group itself. No two backends in a backend service
are allowed to use same Instance Group resource.

For Network Endpoint Groups this defines list of endpoints. All
endpoints of Network Endpoint Group must be hosted on instances
located in the same zone as the Network Endpoint Group.

Backend services cannot mix Instance Group and
Network Endpoint Group backends.

Note that you must specify an Instance Group or Network Endpoint
Group resource using the fully-qualified URL, rather than a
partial URL. *)
  max_connections : float option; [@option]
      (** The max number of simultaneous connections for the group. Can
be used with either CONNECTION or UTILIZATION balancing modes.

For CONNECTION mode, either maxConnections or one
of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
as appropriate for group type, must be set. *)
  max_connections_per_endpoint : float option; [@option]
      (** The max number of simultaneous connections that a single backend
network endpoint can handle. This is used to calculate the
capacity of the group. Can be used in either CONNECTION or
UTILIZATION balancing modes.

For CONNECTION mode, either
maxConnections or maxConnectionsPerEndpoint must be set. *)
  max_connections_per_instance : float option; [@option]
      (** The max number of simultaneous connections that a single
backend instance can handle. This is used to calculate the
capacity of the group. Can be used in either CONNECTION or
UTILIZATION balancing modes.

For CONNECTION mode, either maxConnections or
maxConnectionsPerInstance must be set. *)
  max_rate : float option; [@option]
      (** The max requests per second (RPS) of the group.

Can be used with either RATE or UTILIZATION balancing modes,
but required if RATE mode. For RATE mode, either maxRate or one
of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
group type, must be set. *)
  max_rate_per_endpoint : float option; [@option]
      (** The max requests per second (RPS) that a single backend network
endpoint can handle. This is used to calculate the capacity of
the group. Can be used in either balancing mode. For RATE mode,
either maxRate or maxRatePerEndpoint must be set. *)
  max_rate_per_instance : float option; [@option]
      (** The max requests per second (RPS) that a single backend
instance can handle. This is used to calculate the capacity of
the group. Can be used in either balancing mode. For RATE mode,
either maxRate or maxRatePerInstance must be set. *)
  max_utilization : float option; [@option]
      (** Used when balancingMode is UTILIZATION. This ratio defines the
CPU utilization target for the group. Valid range is [0.0, 1.0]. *)
}
[@@deriving yojson_of]
(** The set of backends that serve this BackendService. *)

type google_compute_backend_service__cdn_policy__bypass_cache_on_request_headers = {
  header_name : string;
      (** The header field name to match on when bypassing cache. Values are case-insensitive. *)
}
[@@deriving yojson_of]
(** Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified.
The cache is bypassed for all cdnPolicy.cacheMode settings. *)

type google_compute_backend_service__cdn_policy__cache_key_policy = {
  include_host : bool option; [@option]
      (** If true requests to different hosts will be cached separately. *)
  include_http_headers : string list option; [@option]
      (** Allows HTTP request headers (by name) to be used in the
cache key. *)
  include_named_cookies : string list option; [@option]
      (** Names of cookies to include in cache keys. *)
  include_protocol : bool option; [@option]
      (** If true, http and https requests will be cached separately. *)
  include_query_string : bool option; [@option]
      (** If true, include query string parameters in the cache key
according to query_string_whitelist and
query_string_blacklist. If neither is set, the entire query
string will be included.

If false, the query string will be excluded from the cache
key entirely. *)
  query_string_blacklist : string list option; [@option]
      (** Names of query string parameters to exclude in cache keys.

All other parameters will be included. Either specify
query_string_whitelist or query_string_blacklist, not both.
'&' and '=' will be percent encoded and not treated as
delimiters. *)
  query_string_whitelist : string list option; [@option]
      (** Names of query string parameters to include in cache keys.

All other parameters will be excluded. Either specify
query_string_whitelist or query_string_blacklist, not both.
'&' and '=' will be percent encoded and not treated as
delimiters. *)
}
[@@deriving yojson_of]
(** The CacheKeyPolicy for this CdnPolicy. *)

type google_compute_backend_service__cdn_policy__negative_caching_policy = {
  code : float option; [@option]
      (** The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
can be specified as values, and you cannot specify a status code more than once. *)
  ttl : float option; [@option]
      (** The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
(30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL. *)
}
[@@deriving yojson_of]
(** Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs. *)

type google_compute_backend_service__cdn_policy = {
  cache_mode : string option; [@option]
      (** Specifies the cache setting for all responses from this backend.
The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, CACHE_ALL_STATIC] *)
  client_ttl : float option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  default_ttl : float option; [@option]
      (** Specifies the default TTL for cached content served by this origin for responses
that do not have an existing valid TTL (max-age or s-max-age). *)
  max_ttl : float option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  negative_caching : bool option; [@option]
      (** Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. *)
  serve_while_stale : float option; [@option]
      (** Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. *)
  signed_url_cache_max_age_sec : float option; [@option]
      (** Maximum number of seconds the response to a signed URL request
will be considered fresh, defaults to 1hr (3600s). After this
time period, the response will be revalidated before
being served.

When serving responses to signed URL requests, Cloud CDN will
internally behave as though all responses from this backend had a
Cache-Control: public, max-age=[TTL] header, regardless of any
existing Cache-Control header. The actual headers served in
responses will not be altered. *)
  bypass_cache_on_request_headers :
    google_compute_backend_service__cdn_policy__bypass_cache_on_request_headers
    list;
  cache_key_policy :
    google_compute_backend_service__cdn_policy__cache_key_policy list;
  negative_caching_policy :
    google_compute_backend_service__cdn_policy__negative_caching_policy
    list;
}
[@@deriving yojson_of]
(** Cloud CDN configuration for this BackendService. *)

type google_compute_backend_service__circuit_breakers = {
  max_connections : float option; [@option]
      (** The maximum number of connections to the backend cluster.
Defaults to 1024. *)
  max_pending_requests : float option; [@option]
      (** The maximum number of pending requests to the backend cluster.
Defaults to 1024. *)
  max_requests : float option; [@option]
      (** The maximum number of parallel requests to the backend cluster.
Defaults to 1024. *)
  max_requests_per_connection : float option; [@option]
      (** Maximum requests for a single backend connection. This parameter
is respected by both the HTTP/1.1 and HTTP/2 implementations. If
not specified, there is no limit. Setting this parameter to 1
will effectively disable keep alive. *)
  max_retries : float option; [@option]
      (** The maximum number of parallel retries to the backend cluster.
Defaults to 3. *)
}
[@@deriving yojson_of]
(** Settings controlling the volume of connections to a backend service. This field
is applicable only when the load_balancing_scheme is set to INTERNAL_SELF_MANAGED. *)

type google_compute_backend_service__consistent_hash__http_cookie__ttl = {
  nanos : float option; [@option]
      (** Span of time that's a fraction of a second at nanosecond
resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must
be from 0 to 999,999,999 inclusive. *)
  seconds : float;
      (** Span of time at a resolution of a second.
Must be from 0 to 315,576,000,000 inclusive. *)
}
[@@deriving yojson_of]
(** Lifetime of the cookie. *)

type google_compute_backend_service__consistent_hash__http_cookie = {
  name : string option; [@option]  (** Name of the cookie. *)
  path : string option; [@option]  (** Path to set for the cookie. *)
  ttl :
    google_compute_backend_service__consistent_hash__http_cookie__ttl
    list;
}
[@@deriving yojson_of]
(** Hash is based on HTTP Cookie. This field describes a HTTP cookie
that will be used as the hash key for the consistent hash load
balancer. If the cookie is not present, it will be generated.
This field is applicable if the sessionAffinity is set to HTTP_COOKIE. *)

type google_compute_backend_service__consistent_hash = {
  http_header_name : string option; [@option]
      (** The hash based on the value of the specified header field.
This field is applicable if the sessionAffinity is set to HEADER_FIELD. *)
  minimum_ring_size : float option; [@option]
      (** The minimum number of virtual nodes to use for the hash ring.
Larger ring sizes result in more granular load
distributions. If the number of hosts in the load balancing pool
is larger than the ring size, each host will be assigned a single
virtual node.
Defaults to 1024. *)
  http_cookie :
    google_compute_backend_service__consistent_hash__http_cookie list;
}
[@@deriving yojson_of]
(** Consistent Hash-based load balancing can be used to provide soft session
affinity based on HTTP headers, cookies or other properties. This load balancing
policy is applicable only for HTTP connections. The affinity to a particular
destination host will be lost when one or more hosts are added/removed from the
destination service. This field specifies parameters that control consistent
hashing. This field only applies if the load_balancing_scheme is set to
INTERNAL_SELF_MANAGED. This field is only applicable when locality_lb_policy is
set to MAGLEV or RING_HASH. *)

type google_compute_backend_service__iap = {
  oauth2_client_id : string;  (** OAuth2 Client ID for IAP *)
  oauth2_client_secret : string;  (** OAuth2 Client Secret for IAP *)
  oauth2_client_secret_sha256 : string;
      (** OAuth2 Client Secret SHA-256 for IAP *)
}
[@@deriving yojson_of]
(** Settings for enabling Cloud Identity Aware Proxy *)

type google_compute_backend_service__locality_lb_policies__custom_policy = {
  data : string option; [@option]
      (** An optional, arbitrary JSON object with configuration data, understood
by a locally installed custom policy implementation. *)
  name : string;
      (** Identifies the custom policy.

The value should match the type the custom implementation is registered
with on the gRPC clients. It should follow protocol buffer
message naming conventions and include the full path (e.g.
myorg.CustomLbPolicy). The maximum length is 256 characters.

Note that specifying the same custom policy more than once for a
backend is not a valid configuration and will be rejected. *)
}
[@@deriving yojson_of]
(** The configuration for a custom policy implemented by the user and
deployed with the client. *)

type google_compute_backend_service__locality_lb_policies__policy = {
  name : string;
      (** The name of a locality load balancer policy to be used. The value
should be one of the predefined ones as supported by localityLbPolicy,
although at the moment only ROUND_ROBIN is supported.

This field should only be populated when the customPolicy field is not
used.

Note that specifying the same policy more than once for a backend is
not a valid configuration and will be rejected.

The possible values are:

* 'ROUND_ROBIN': This is a simple policy in which each healthy backend
                is selected in round robin order.

* 'LEAST_REQUEST': An O(1) algorithm which selects two random healthy
                  hosts and picks the host which has fewer active requests.

* 'RING_HASH': The ring/modulo hash load balancer implements consistent
              hashing to backends. The algorithm has the property that the
              addition/removal of a host from a set of N hosts only affects
              1/N of the requests.

* 'RANDOM': The load balancer selects a random healthy host.

* 'ORIGINAL_DESTINATION': Backend host is selected based on the client
                          connection metadata, i.e., connections are opened
                          to the same address as the destination address of
                          the incoming connection before the connection
                          was redirected to the load balancer.

* 'MAGLEV': used as a drop in replacement for the ring hash load balancer.
            Maglev is not as stable as ring hash but has faster table lookup
            build times and host selection times. For more information about
            Maglev, refer to https://ai.google/research/pubs/pub44824 Possible values: [ROUND_ROBIN, LEAST_REQUEST, RING_HASH, RANDOM, ORIGINAL_DESTINATION, MAGLEV] *)
}
[@@deriving yojson_of]
(** The configuration for a built-in load balancing policy. *)

type google_compute_backend_service__locality_lb_policies = {
  custom_policy :
    google_compute_backend_service__locality_lb_policies__custom_policy
    list;
  policy :
    google_compute_backend_service__locality_lb_policies__policy list;
}
[@@deriving yojson_of]
(** A list of locality load balancing policies to be used in order of
preference. Either the policy or the customPolicy field should be set.
Overrides any value set in the localityLbPolicy field.

localityLbPolicies is only supported when the BackendService is referenced
by a URL Map that is referenced by a target gRPC proxy that has the
validateForProxyless field set to true. *)

type google_compute_backend_service__log_config = {
  enable : bool option; [@option]
      (** Whether to enable logging for the load balancer traffic served by this backend service. *)
  sample_rate : float option; [@option]
      (** This field can only be specified if logging is enabled for this backend service. The value of
the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
The default value is 1.0. *)
}
[@@deriving yojson_of]
(** This field denotes the logging options for the load balancer traffic served by this backend service.
If logging is enabled, logs will be exported to Stackdriver. *)

type google_compute_backend_service__outlier_detection__base_ejection_time = {
  nanos : float option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : float;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** The base time that a host is ejected for. The real time is equal to the base
time multiplied by the number of times the host has been ejected. Defaults to
30000ms or 30s. *)

type google_compute_backend_service__outlier_detection__interval = {
  nanos : float option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : float;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Time interval between ejection sweep analysis. This can result in both new
ejections as well as hosts being returned to service. Defaults to 10 seconds. *)

type google_compute_backend_service__outlier_detection = {
  consecutive_errors : float option; [@option]
      (** Number of errors before a host is ejected from the connection pool. When the
backend host is accessed over HTTP, a 5xx return code qualifies as an error.
Defaults to 5. *)
  consecutive_gateway_failure : float option; [@option]
      (** The number of consecutive gateway failures (502, 503, 504 status or connection
errors that are mapped to one of those status codes) before a consecutive
gateway failure ejection occurs. Defaults to 5. *)
  enforcing_consecutive_errors : float option; [@option]
      (** The percentage chance that a host will be actually ejected when an outlier
status is detected through consecutive 5xx. This setting can be used to disable
ejection or to ramp it up slowly. Defaults to 100. *)
  enforcing_consecutive_gateway_failure : float option; [@option]
      (** The percentage chance that a host will be actually ejected when an outlier
status is detected through consecutive gateway failures. This setting can be
used to disable ejection or to ramp it up slowly. Defaults to 0. *)
  enforcing_success_rate : float option; [@option]
      (** The percentage chance that a host will be actually ejected when an outlier
status is detected through success rate statistics. This setting can be used to
disable ejection or to ramp it up slowly. Defaults to 100. *)
  max_ejection_percent : float option; [@option]
      (** Maximum percentage of hosts in the load balancing pool for the backend service
that can be ejected. Defaults to 10%. *)
  success_rate_minimum_hosts : float option; [@option]
      (** The number of hosts in a cluster that must have enough request volume to detect
success rate outliers. If the number of hosts is less than this setting, outlier
detection via success rate statistics is not performed for any host in the
cluster. Defaults to 5. *)
  success_rate_request_volume : float option; [@option]
      (** The minimum number of total requests that must be collected in one interval (as
defined by the interval duration above) to include this host in success rate
based outlier detection. If the volume is lower than this setting, outlier
detection via success rate statistics is not performed for that host. Defaults
to 100. *)
  success_rate_stdev_factor : float option; [@option]
      (** This factor is used to determine the ejection threshold for success rate outlier
ejection. The ejection threshold is the difference between the mean success
rate, and the product of this factor and the standard deviation of the mean
success rate: mean - (stdev * success_rate_stdev_factor). This factor is divided
by a thousand to get a double. That is, if the desired factor is 1.9, the
runtime value should be 1900. Defaults to 1900. *)
  base_ejection_time :
    google_compute_backend_service__outlier_detection__base_ejection_time
    list;
  interval :
    google_compute_backend_service__outlier_detection__interval list;
}
[@@deriving yojson_of]
(** Settings controlling eviction of unhealthy hosts from the load balancing pool.
Applicable backend service types can be a global backend service with the
loadBalancingScheme set to INTERNAL_SELF_MANAGED or EXTERNAL_MANAGED. *)

type google_compute_backend_service__security_settings = {
  client_tls_policy : string;
      (** ClientTlsPolicy is a resource that specifies how a client should authenticate
connections to backends of a service. This resource itself does not affect
configuration unless it is attached to a backend service resource. *)
  subject_alt_names : string list;
      (** A list of alternate names to verify the subject identity in the certificate.
If specified, the client will verify that the server certificate's subject
alt name matches one of the specified values. *)
}
[@@deriving yojson_of]
(** The security settings that apply to this backend service. This field is applicable to either
a regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2, and
load_balancing_scheme set to INTERNAL_MANAGED; or a global backend service with the
load_balancing_scheme set to INTERNAL_SELF_MANAGED. *)

type google_compute_backend_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_backend_service__timeouts *)

type google_compute_backend_service = {
  affinity_cookie_ttl_sec : float option; [@option]
      (** Lifetime of cookies in seconds if session_affinity is
GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
only until the end of the browser session (or equivalent). The
maximum allowed value for TTL is one day.

When the load balancing scheme is INTERNAL, this field is not used. *)
  compression_mode : string option; [@option]
      (** Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header. Possible values: [AUTOMATIC, DISABLED] *)
  connection_draining_timeout_sec : float option; [@option]
      (** Time for which instance will be drained (not accept new
connections, but still work to finish started). *)
  custom_request_headers : string list option; [@option]
      (** Headers that the HTTP/S load balancer should add to proxied
requests. *)
  custom_response_headers : string list option; [@option]
      (** Headers that the HTTP/S load balancer should add to proxied
responses. *)
  description : string option; [@option]
      (** An optional description of this resource. *)
  edge_security_policy : string option; [@option]
      (** The resource URL for the edge security policy associated with this backend service. *)
  enable_cdn : bool option; [@option]
      (** If true, enable Cloud CDN for this BackendService. *)
  health_checks : string list option; [@option]
      (** The set of URLs to the HttpHealthCheck or HttpsHealthCheck resource
for health checking this BackendService. Currently at most one health
check can be specified.

A health check must be specified unless the backend service uses an internet
or serverless NEG as a backend.

For internal load balancing, a URL to a HealthCheck resource must be specified instead. *)
  id : string option; [@option]  (** id *)
  load_balancing_scheme : string option; [@option]
      (** Indicates whether the backend service will be used with internal or
external load balancing. A backend service created for one type of
load balancing cannot be used with the other. For more information, refer to
[Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service). Default value: EXTERNAL Possible values: [EXTERNAL, INTERNAL_SELF_MANAGED, INTERNAL_MANAGED, EXTERNAL_MANAGED] *)
  locality_lb_policy : string option; [@option]
      (** The load balancing algorithm used within the scope of the locality.
The possible values are:

* 'ROUND_ROBIN': This is a simple policy in which each healthy backend
                 is selected in round robin order.

* 'LEAST_REQUEST': An O(1) algorithm which selects two random healthy
                   hosts and picks the host which has fewer active requests.

* 'RING_HASH': The ring/modulo hash load balancer implements consistent
               hashing to backends. The algorithm has the property that the
               addition/removal of a host from a set of N hosts only affects
               1/N of the requests.

* 'RANDOM': The load balancer selects a random healthy host.

* 'ORIGINAL_DESTINATION': Backend host is selected based on the client
                          connection metadata, i.e., connections are opened
                          to the same address as the destination address of
                          the incoming connection before the connection
                          was redirected to the load balancer.

* 'MAGLEV': used as a drop in replacement for the ring hash load balancer.
            Maglev is not as stable as ring hash but has faster table lookup
            build times and host selection times. For more information about
            Maglev, refer to https://ai.google/research/pubs/pub44824

* 'WEIGHTED_MAGLEV': Per-instance weighted Load Balancing via health check
                     reported weights. If set, the Backend Service must
                     configure a non legacy HTTP-based Health Check, and
                     health check replies are expected to contain
                     non-standard HTTP response header field
                     X-Load-Balancing-Endpoint-Weight to specify the
                     per-instance weights. If set, Load Balancing is weight
                     based on the per-instance weights reported in the last
                     processed health check replies, as long as every
                     instance either reported a valid weight or had
                     UNAVAILABLE_WEIGHT. Otherwise, Load Balancing remains
                     equal-weight.


This field is applicable to either:

* A regional backend service with the service_protocol set to HTTP, HTTPS, or HTTP2,
  and loadBalancingScheme set to INTERNAL_MANAGED.
* A global backend service with the load_balancing_scheme set to INTERNAL_SELF_MANAGED.
* A regional backend service with loadBalancingScheme set to EXTERNAL (External Network
  Load Balancing). Only MAGLEV and WEIGHTED_MAGLEV values are possible for External
  Network Load Balancing. The default is MAGLEV.


If session_affinity is not NONE, and this field is not set to MAGLEV, WEIGHTED_MAGLEV,
or RING_HASH, session affinity settings will not take effect.

Only ROUND_ROBIN and RING_HASH are supported when the backend service is referenced
by a URL map that is bound to target gRPC proxy that has validate_for_proxyless
field set to true. Possible values: [ROUND_ROBIN, LEAST_REQUEST, RING_HASH, RANDOM, ORIGINAL_DESTINATION, MAGLEV, WEIGHTED_MAGLEV] *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  port_name : string option; [@option]
      (** Name of backend port. The same name should appear in the instance
groups referenced by this service. Required when the load balancing
scheme is EXTERNAL. *)
  project : string option; [@option]  (** project *)
  protocol : string option; [@option]
      (** The protocol this BackendService uses to communicate with backends.
The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer
types and may result in errors if used with the GA API. **NOTE**: With protocol “UNSPECIFIED”,
the backend service can be used by Layer 4 Internal Load Balancing or Network Load Balancing
with TCP/UDP/L3_DEFAULT Forwarding Rule protocol. Possible values: [HTTP, HTTPS, HTTP2, TCP, SSL, GRPC, UNSPECIFIED] *)
  security_policy : string option; [@option]
      (** The security policy associated with this backend service. *)
  session_affinity : string option; [@option]
      (** Type of session affinity to use. The default is NONE. Session affinity is
not applicable if the protocol is UDP. Possible values: [NONE, CLIENT_IP, CLIENT_IP_PORT_PROTO, CLIENT_IP_PROTO, GENERATED_COOKIE, HEADER_FIELD, HTTP_COOKIE] *)
  timeout_sec : float option; [@option]
      (** How many seconds to wait for the backend before considering it a
failed request. Default is 30 seconds. Valid range is [1, 86400]. *)
  backend : google_compute_backend_service__backend list;
  cdn_policy : google_compute_backend_service__cdn_policy list;
  circuit_breakers :
    google_compute_backend_service__circuit_breakers list;
  consistent_hash :
    google_compute_backend_service__consistent_hash list;
  iap : google_compute_backend_service__iap list;
  locality_lb_policies :
    google_compute_backend_service__locality_lb_policies list;
  log_config : google_compute_backend_service__log_config list;
  outlier_detection :
    google_compute_backend_service__outlier_detection list;
  security_settings :
    google_compute_backend_service__security_settings list;
  timeouts : google_compute_backend_service__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_backend_service *)

let google_compute_backend_service ?affinity_cookie_ttl_sec
    ?compression_mode ?connection_draining_timeout_sec
    ?custom_request_headers ?custom_response_headers ?description
    ?edge_security_policy ?enable_cdn ?health_checks ?id
    ?load_balancing_scheme ?locality_lb_policy ?port_name ?project
    ?protocol ?security_policy ?session_affinity ?timeout_sec
    ?timeouts ~name ~backend ~cdn_policy ~circuit_breakers
    ~consistent_hash ~iap ~locality_lb_policies ~log_config
    ~outlier_detection ~security_settings __resource_id =
  let __resource_type = "google_compute_backend_service" in
  let __resource =
    {
      affinity_cookie_ttl_sec;
      compression_mode;
      connection_draining_timeout_sec;
      custom_request_headers;
      custom_response_headers;
      description;
      edge_security_policy;
      enable_cdn;
      health_checks;
      id;
      load_balancing_scheme;
      locality_lb_policy;
      name;
      port_name;
      project;
      protocol;
      security_policy;
      session_affinity;
      timeout_sec;
      backend;
      cdn_policy;
      circuit_breakers;
      consistent_hash;
      iap;
      locality_lb_policies;
      log_config;
      outlier_detection;
      security_settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_backend_service __resource);
  ()
