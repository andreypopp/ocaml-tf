(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type backend = {
  balancing_mode : string prop option; [@option]
      (** Specifies the balancing mode for this backend.

See the [Backend Services Overview](https://cloud.google.com/load-balancing/docs/backend-service#balancing-mode)
for an explanation of load balancing modes. Default value: CONNECTION Possible values: [UTILIZATION, RATE, CONNECTION] *)
  capacity_scaler : float prop option; [@option]
      (** A multiplier applied to the group's maximum servicing capacity
(based on UTILIZATION, RATE or CONNECTION).

~>**NOTE**: This field cannot be set for
INTERNAL region backend services (default loadBalancingScheme),
but is required for non-INTERNAL backend service. The total
capacity_scaler for all backends must be non-zero.

A setting of 0 means the group is completely drained, offering
0% of its available Capacity. Valid range is [0.0,1.0]. *)
  description : string prop option; [@option]
      (** An optional description of this resource.
Provide this property when you create the resource. *)
  failover : bool prop option; [@option]
      (** This field designates whether this is a failover backend. More
than one failover backend can be configured for a given RegionBackendService. *)
  group : string prop;
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

When the 'load_balancing_scheme' is INTERNAL, only instance groups
are supported.

Note that you must specify an Instance Group or Network Endpoint
Group resource using the fully-qualified URL, rather than a
partial URL. *)
  max_connections : float prop option; [@option]
      (** The max number of simultaneous connections for the group. Can
be used with either CONNECTION or UTILIZATION balancing modes.
Cannot be set for INTERNAL backend services.

For CONNECTION mode, either maxConnections or one
of maxConnectionsPerInstance or maxConnectionsPerEndpoint,
as appropriate for group type, must be set. *)
  max_connections_per_endpoint : float prop option; [@option]
      (** The max number of simultaneous connections that a single backend
network endpoint can handle. Cannot be set
for INTERNAL backend services.

This is used to calculate the capacity of the group. Can be
used in either CONNECTION or UTILIZATION balancing modes. For
CONNECTION mode, either maxConnections or
maxConnectionsPerEndpoint must be set. *)
  max_connections_per_instance : float prop option; [@option]
      (** The max number of simultaneous connections that a single
backend instance can handle. Cannot be set for INTERNAL backend
services.

This is used to calculate the capacity of the group.
Can be used in either CONNECTION or UTILIZATION balancing modes.
For CONNECTION mode, either maxConnections or
maxConnectionsPerInstance must be set. *)
  max_rate : float prop option; [@option]
      (** The max requests per second (RPS) of the group. Cannot be set
for INTERNAL backend services.

Can be used with either RATE or UTILIZATION balancing modes,
but required if RATE mode. Either maxRate or one
of maxRatePerInstance or maxRatePerEndpoint, as appropriate for
group type, must be set. *)
  max_rate_per_endpoint : float prop option; [@option]
      (** The max requests per second (RPS) that a single backend network
endpoint can handle. This is used to calculate the capacity of
the group. Can be used in either balancing mode. For RATE mode,
either maxRate or maxRatePerEndpoint must be set. Cannot be set
for INTERNAL backend services. *)
  max_rate_per_instance : float prop option; [@option]
      (** The max requests per second (RPS) that a single backend
instance can handle. This is used to calculate the capacity of
the group. Can be used in either balancing mode. For RATE mode,
either maxRate or maxRatePerInstance must be set. Cannot be set
for INTERNAL backend services. *)
  max_utilization : float prop option; [@option]
      (** Used when balancingMode is UTILIZATION. This ratio defines the
CPU utilization target for the group. Valid range is [0.0, 1.0].
Cannot be set for INTERNAL backend services. *)
}
[@@deriving yojson_of]
(** The set of backends that serve this RegionBackendService. *)

type cdn_policy__cache_key_policy = {
  include_host : bool prop option; [@option]
      (** If true requests to different hosts will be cached separately. *)
  include_named_cookies : string prop list option; [@option]
      (** Names of cookies to include in cache keys. *)
  include_protocol : bool prop option; [@option]
      (** If true, http and https requests will be cached separately. *)
  include_query_string : bool prop option; [@option]
      (** If true, include query string parameters in the cache key
according to query_string_whitelist and
query_string_blacklist. If neither is set, the entire query
string will be included.

If false, the query string will be excluded from the cache
key entirely. *)
  query_string_blacklist : string prop list option; [@option]
      (** Names of query string parameters to exclude in cache keys.

All other parameters will be included. Either specify
query_string_whitelist or query_string_blacklist, not both.
'&' and '=' will be percent encoded and not treated as
delimiters. *)
  query_string_whitelist : string prop list option; [@option]
      (** Names of query string parameters to include in cache keys.

All other parameters will be excluded. Either specify
query_string_whitelist or query_string_blacklist, not both.
'&' and '=' will be percent encoded and not treated as
delimiters. *)
}
[@@deriving yojson_of]
(** The CacheKeyPolicy for this CdnPolicy. *)

type cdn_policy__negative_caching_policy = {
  code : float prop option; [@option]
      (** The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
can be specified as values, and you cannot specify a status code more than once. *)
}
[@@deriving yojson_of]
(** Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs. *)

type cdn_policy = {
  cache_mode : string prop option; [@option]
      (** Specifies the cache setting for all responses from this backend.
The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, CACHE_ALL_STATIC] *)
  client_ttl : float prop option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  default_ttl : float prop option; [@option]
      (** Specifies the default TTL for cached content served by this origin for responses
that do not have an existing valid TTL (max-age or s-max-age). *)
  max_ttl : float prop option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  negative_caching : bool prop option; [@option]
      (** Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. *)
  serve_while_stale : float prop option; [@option]
      (** Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. *)
  signed_url_cache_max_age_sec : float prop option; [@option]
      (** Maximum number of seconds the response to a signed URL request
will be considered fresh, defaults to 1hr (3600s). After this
time period, the response will be revalidated before
being served.

When serving responses to signed URL requests, Cloud CDN will
internally behave as though all responses from this backend had a
Cache-Control: public, max-age=[TTL] header, regardless of any
existing Cache-Control header. The actual headers served in
responses will not be altered. *)
  cache_key_policy : cdn_policy__cache_key_policy list;
  negative_caching_policy : cdn_policy__negative_caching_policy list;
}
[@@deriving yojson_of]
(** Cloud CDN configuration for this BackendService. *)

type circuit_breakers = {
  max_connections : float prop option; [@option]
      (** The maximum number of connections to the backend cluster.
Defaults to 1024. *)
  max_pending_requests : float prop option; [@option]
      (** The maximum number of pending requests to the backend cluster.
Defaults to 1024. *)
  max_requests : float prop option; [@option]
      (** The maximum number of parallel requests to the backend cluster.
Defaults to 1024. *)
  max_requests_per_connection : float prop option; [@option]
      (** Maximum requests for a single backend connection. This parameter
is respected by both the HTTP/1.1 and HTTP/2 implementations. If
not specified, there is no limit. Setting this parameter to 1
will effectively disable keep alive. *)
  max_retries : float prop option; [@option]
      (** The maximum number of parallel retries to the backend cluster.
Defaults to 3. *)
}
[@@deriving yojson_of]
(** Settings controlling the volume of connections to a backend service. This field
is applicable only when the 'load_balancing_scheme' is set to INTERNAL_MANAGED
and the 'protocol' is set to HTTP, HTTPS, or HTTP2. *)

type consistent_hash__http_cookie__ttl = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond
resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must
be from 0 to 999,999,999 inclusive. *)
  seconds : float prop;
      (** Span of time at a resolution of a second.
Must be from 0 to 315,576,000,000 inclusive. *)
}
[@@deriving yojson_of]
(** Lifetime of the cookie. *)

type consistent_hash__http_cookie = {
  name : string prop option; [@option]  (** Name of the cookie. *)
  path : string prop option; [@option]
      (** Path to set for the cookie. *)
  ttl : consistent_hash__http_cookie__ttl list;
}
[@@deriving yojson_of]
(** Hash is based on HTTP Cookie. This field describes a HTTP cookie
that will be used as the hash key for the consistent hash load
balancer. If the cookie is not present, it will be generated.
This field is applicable if the sessionAffinity is set to HTTP_COOKIE. *)

type consistent_hash = {
  http_header_name : string prop option; [@option]
      (** The hash based on the value of the specified header field.
This field is applicable if the sessionAffinity is set to HEADER_FIELD. *)
  minimum_ring_size : float prop option; [@option]
      (** The minimum number of virtual nodes to use for the hash ring.
Larger ring sizes result in more granular load
distributions. If the number of hosts in the load balancing pool
is larger than the ring size, each host will be assigned a single
virtual node.
Defaults to 1024. *)
  http_cookie : consistent_hash__http_cookie list;
}
[@@deriving yojson_of]
(** Consistent Hash-based load balancing can be used to provide soft session
affinity based on HTTP headers, cookies or other properties. This load balancing
policy is applicable only for HTTP connections. The affinity to a particular
destination host will be lost when one or more hosts are added/removed from the
destination service. This field specifies parameters that control consistent
hashing.
This field only applies when all of the following are true -
  * 'load_balancing_scheme' is set to INTERNAL_MANAGED
  * 'protocol' is set to HTTP, HTTPS, or HTTP2
  * 'locality_lb_policy' is set to MAGLEV or RING_HASH *)

type failover_policy = {
  disable_connection_drain_on_failover : bool prop option; [@option]
      (** On failover or failback, this field indicates whether connection drain
will be honored. Setting this to true has the following effect: connections
to the old active pool are not drained. Connections to the new active pool
use the timeout of 10 min (currently fixed). Setting to false has the
following effect: both old and new connections will have a drain timeout
of 10 min.
This can be set to true only if the protocol is TCP.
The default is false. *)
  drop_traffic_if_unhealthy : bool prop option; [@option]
      (** This option is used only when no healthy VMs are detected in the primary
and backup instance groups. When set to true, traffic is dropped. When
set to false, new connections are sent across all VMs in the primary group.
The default is false. *)
  failover_ratio : float prop option; [@option]
      (** The value of the field must be in [0, 1]. If the ratio of the healthy
VMs in the primary backend is at or below this number, traffic arriving
at the load-balanced IP will be directed to the failover backend.
In case where 'failoverRatio' is not set or all the VMs in the backup
backend are unhealthy, the traffic will be directed back to the primary
backend in the force mode, where traffic will be spread to the healthy
VMs with the best effort, or to all VMs when no VM is healthy.
This field is only used with l4 load balancing. *)
}
[@@deriving yojson_of]
(** Policy for failovers. *)

type iap = {
  oauth2_client_id : string prop;  (** OAuth2 Client ID for IAP *)
  oauth2_client_secret : string prop;
      (** OAuth2 Client Secret for IAP *)
}
[@@deriving yojson_of]
(** Settings for enabling Cloud Identity Aware Proxy *)

type log_config = {
  enable : bool prop option; [@option]
      (** Whether to enable logging for the load balancer traffic served by this backend service. *)
  sample_rate : float prop option; [@option]
      (** This field can only be specified if logging is enabled for this backend service. The value of
the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer
where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported.
The default value is 1.0. *)
}
[@@deriving yojson_of]
(** This field denotes the logging options for the load balancer traffic served by this backend service.
If logging is enabled, logs will be exported to Stackdriver. *)

type outlier_detection__base_ejection_time = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : float prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** The base time that a host is ejected for. The real time is equal to the base
time multiplied by the number of times the host has been ejected. Defaults to
30000ms or 30s. *)

type outlier_detection__interval = {
  nanos : float prop option; [@option]
      (** Span of time that's a fraction of a second at nanosecond resolution. Durations
less than one second are represented with a 0 'seconds' field and a positive
'nanos' field. Must be from 0 to 999,999,999 inclusive. *)
  seconds : float prop;
      (** Span of time at a resolution of a second. Must be from 0 to 315,576,000,000
inclusive. *)
}
[@@deriving yojson_of]
(** Time interval between ejection sweep analysis. This can result in both new
ejections as well as hosts being returned to service. Defaults to 10 seconds. *)

type outlier_detection = {
  consecutive_errors : float prop option; [@option]
      (** Number of errors before a host is ejected from the connection pool. When the
backend host is accessed over HTTP, a 5xx return code qualifies as an error.
Defaults to 5. *)
  consecutive_gateway_failure : float prop option; [@option]
      (** The number of consecutive gateway failures (502, 503, 504 status or connection
errors that are mapped to one of those status codes) before a consecutive
gateway failure ejection occurs. Defaults to 5. *)
  enforcing_consecutive_errors : float prop option; [@option]
      (** The percentage chance that a host will be actually ejected when an outlier
status is detected through consecutive 5xx. This setting can be used to disable
ejection or to ramp it up slowly. Defaults to 100. *)
  enforcing_consecutive_gateway_failure : float prop option;
      [@option]
      (** The percentage chance that a host will be actually ejected when an outlier
status is detected through consecutive gateway failures. This setting can be
used to disable ejection or to ramp it up slowly. Defaults to 0. *)
  enforcing_success_rate : float prop option; [@option]
      (** The percentage chance that a host will be actually ejected when an outlier
status is detected through success rate statistics. This setting can be used to
disable ejection or to ramp it up slowly. Defaults to 100. *)
  max_ejection_percent : float prop option; [@option]
      (** Maximum percentage of hosts in the load balancing pool for the backend service
that can be ejected. Defaults to 10%. *)
  success_rate_minimum_hosts : float prop option; [@option]
      (** The number of hosts in a cluster that must have enough request volume to detect
success rate outliers. If the number of hosts is less than this setting, outlier
detection via success rate statistics is not performed for any host in the
cluster. Defaults to 5. *)
  success_rate_request_volume : float prop option; [@option]
      (** The minimum number of total requests that must be collected in one interval (as
defined by the interval duration above) to include this host in success rate
based outlier detection. If the volume is lower than this setting, outlier
detection via success rate statistics is not performed for that host. Defaults
to 100. *)
  success_rate_stdev_factor : float prop option; [@option]
      (** This factor is used to determine the ejection threshold for success rate outlier
ejection. The ejection threshold is the difference between the mean success
rate, and the product of this factor and the standard deviation of the mean
success rate: mean - (stdev * success_rate_stdev_factor). This factor is divided
by a thousand to get a double. That is, if the desired factor is 1.9, the
runtime value should be 1900. Defaults to 1900. *)
  base_ejection_time : outlier_detection__base_ejection_time list;
  interval : outlier_detection__interval list;
}
[@@deriving yojson_of]
(** Settings controlling eviction of unhealthy hosts from the load balancing pool.
This field is applicable only when the 'load_balancing_scheme' is set
to INTERNAL_MANAGED and the 'protocol' is set to HTTP, HTTPS, or HTTP2. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_backend_service = {
  affinity_cookie_ttl_sec : float prop option; [@option]
      (** Lifetime of cookies in seconds if session_affinity is
GENERATED_COOKIE. If set to 0, the cookie is non-persistent and lasts
only until the end of the browser session (or equivalent). The
maximum allowed value for TTL is one day.

When the load balancing scheme is INTERNAL, this field is not used. *)
  connection_draining_timeout_sec : float prop option; [@option]
      (** Time for which instance will be drained (not accept new
connections, but still work to finish started). *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  enable_cdn : bool prop option; [@option]
      (** If true, enable Cloud CDN for this RegionBackendService. *)
  health_checks : string prop list option; [@option]
      (** The set of URLs to HealthCheck resources for health checking
this RegionBackendService. Currently at most one health
check can be specified.

A health check must be specified unless the backend service uses an internet
or serverless NEG as a backend. *)
  id : string prop option; [@option]  (** id *)
  load_balancing_scheme : string prop option; [@option]
      (** Indicates what kind of load balancing this regional backend service
will be used for. A backend service created for one type of load
balancing cannot be used with the other(s). For more information, refer to
[Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service). Default value: INTERNAL Possible values: [EXTERNAL, EXTERNAL_MANAGED, INTERNAL, INTERNAL_MANAGED] *)
  locality_lb_policy : string prop option; [@option]
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
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network : string prop option; [@option]
      (** The URL of the network to which this backend service belongs.
This field can only be specified when the load balancing scheme is set to INTERNAL. *)
  port_name : string prop option; [@option]
      (** A named port on a backend instance group representing the port for
communication to the backend VMs in that group. Required when the
loadBalancingScheme is EXTERNAL, EXTERNAL_MANAGED, INTERNAL_MANAGED, or INTERNAL_SELF_MANAGED
and the backends are instance groups. The named port must be defined on each
backend instance group. This parameter has no meaning if the backends are NEGs. API sets a
default of http if not given.
Must be omitted when the loadBalancingScheme is INTERNAL (Internal TCP/UDP Load Balancing). *)
  project : string prop option; [@option]  (** project *)
  protocol : string prop option; [@option]
      (** The protocol this RegionBackendService uses to communicate with backends.
The default is HTTP. **NOTE**: HTTP2 is only valid for beta HTTP/2 load balancer
types and may result in errors if used with the GA API. Possible values: [HTTP, HTTPS, HTTP2, SSL, TCP, UDP, GRPC, UNSPECIFIED] *)
  region : string prop option; [@option]
      (** The Region in which the created backend service should reside.
If it is not provided, the provider region is used. *)
  session_affinity : string prop option; [@option]
      (** Type of session affinity to use. The default is NONE. Session affinity is
not applicable if the protocol is UDP. Possible values: [NONE, CLIENT_IP, CLIENT_IP_PORT_PROTO, CLIENT_IP_PROTO, GENERATED_COOKIE, HEADER_FIELD, HTTP_COOKIE, CLIENT_IP_NO_DESTINATION] *)
  timeout_sec : float prop option; [@option]
      (** How many seconds to wait for the backend before considering it a
failed request. Default is 30 seconds. Valid range is [1, 86400]. *)
  backend : backend list;
  cdn_policy : cdn_policy list;
  circuit_breakers : circuit_breakers list;
  consistent_hash : consistent_hash list;
  failover_policy : failover_policy list;
  iap : iap list;
  log_config : log_config list;
  outlier_detection : outlier_detection list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_backend_service *)

let backend ?balancing_mode ?capacity_scaler ?description ?failover
    ?max_connections ?max_connections_per_endpoint
    ?max_connections_per_instance ?max_rate ?max_rate_per_endpoint
    ?max_rate_per_instance ?max_utilization ~group () : backend =
  {
    balancing_mode;
    capacity_scaler;
    description;
    failover;
    group;
    max_connections;
    max_connections_per_endpoint;
    max_connections_per_instance;
    max_rate;
    max_rate_per_endpoint;
    max_rate_per_instance;
    max_utilization;
  }

let cdn_policy__cache_key_policy ?include_host ?include_named_cookies
    ?include_protocol ?include_query_string ?query_string_blacklist
    ?query_string_whitelist () : cdn_policy__cache_key_policy =
  {
    include_host;
    include_named_cookies;
    include_protocol;
    include_query_string;
    query_string_blacklist;
    query_string_whitelist;
  }

let cdn_policy__negative_caching_policy ?code () :
    cdn_policy__negative_caching_policy =
  { code }

let cdn_policy ?cache_mode ?client_ttl ?default_ttl ?max_ttl
    ?negative_caching ?serve_while_stale
    ?signed_url_cache_max_age_sec ~cache_key_policy
    ~negative_caching_policy () : cdn_policy =
  {
    cache_mode;
    client_ttl;
    default_ttl;
    max_ttl;
    negative_caching;
    serve_while_stale;
    signed_url_cache_max_age_sec;
    cache_key_policy;
    negative_caching_policy;
  }

let circuit_breakers ?max_connections ?max_pending_requests
    ?max_requests ?max_requests_per_connection ?max_retries () :
    circuit_breakers =
  {
    max_connections;
    max_pending_requests;
    max_requests;
    max_requests_per_connection;
    max_retries;
  }

let consistent_hash__http_cookie__ttl ?nanos ~seconds () :
    consistent_hash__http_cookie__ttl =
  { nanos; seconds }

let consistent_hash__http_cookie ?name ?path ~ttl () :
    consistent_hash__http_cookie =
  { name; path; ttl }

let consistent_hash ?http_header_name ?minimum_ring_size ~http_cookie
    () : consistent_hash =
  { http_header_name; minimum_ring_size; http_cookie }

let failover_policy ?disable_connection_drain_on_failover
    ?drop_traffic_if_unhealthy ?failover_ratio () : failover_policy =
  {
    disable_connection_drain_on_failover;
    drop_traffic_if_unhealthy;
    failover_ratio;
  }

let iap ~oauth2_client_id ~oauth2_client_secret () : iap =
  { oauth2_client_id; oauth2_client_secret }

let log_config ?enable ?sample_rate () : log_config =
  { enable; sample_rate }

let outlier_detection__base_ejection_time ?nanos ~seconds () :
    outlier_detection__base_ejection_time =
  { nanos; seconds }

let outlier_detection__interval ?nanos ~seconds () :
    outlier_detection__interval =
  { nanos; seconds }

let outlier_detection ?consecutive_errors
    ?consecutive_gateway_failure ?enforcing_consecutive_errors
    ?enforcing_consecutive_gateway_failure ?enforcing_success_rate
    ?max_ejection_percent ?success_rate_minimum_hosts
    ?success_rate_request_volume ?success_rate_stdev_factor
    ~base_ejection_time ~interval () : outlier_detection =
  {
    consecutive_errors;
    consecutive_gateway_failure;
    enforcing_consecutive_errors;
    enforcing_consecutive_gateway_failure;
    enforcing_success_rate;
    max_ejection_percent;
    success_rate_minimum_hosts;
    success_rate_request_volume;
    success_rate_stdev_factor;
    base_ejection_time;
    interval;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_region_backend_service ?affinity_cookie_ttl_sec
    ?connection_draining_timeout_sec ?description ?enable_cdn
    ?health_checks ?id ?load_balancing_scheme ?locality_lb_policy
    ?network ?port_name ?project ?protocol ?region ?session_affinity
    ?timeout_sec ?timeouts ~name ~backend ~cdn_policy
    ~circuit_breakers ~consistent_hash ~failover_policy ~iap
    ~log_config ~outlier_detection () :
    google_compute_region_backend_service =
  {
    affinity_cookie_ttl_sec;
    connection_draining_timeout_sec;
    description;
    enable_cdn;
    health_checks;
    id;
    load_balancing_scheme;
    locality_lb_policy;
    name;
    network;
    port_name;
    project;
    protocol;
    region;
    session_affinity;
    timeout_sec;
    backend;
    cdn_policy;
    circuit_breakers;
    consistent_hash;
    failover_policy;
    iap;
    log_config;
    outlier_detection;
    timeouts;
  }

type t = {
  affinity_cookie_ttl_sec : float prop;
  connection_draining_timeout_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  enable_cdn : bool prop;
  fingerprint : string prop;
  health_checks : string list prop;
  id : string prop;
  load_balancing_scheme : string prop;
  locality_lb_policy : string prop;
  name : string prop;
  network : string prop;
  port_name : string prop;
  project : string prop;
  protocol : string prop;
  region : string prop;
  self_link : string prop;
  session_affinity : string prop;
  timeout_sec : float prop;
}

let register ?tf_module ?affinity_cookie_ttl_sec
    ?connection_draining_timeout_sec ?description ?enable_cdn
    ?health_checks ?id ?load_balancing_scheme ?locality_lb_policy
    ?network ?port_name ?project ?protocol ?region ?session_affinity
    ?timeout_sec ?timeouts ~name ~backend ~cdn_policy
    ~circuit_breakers ~consistent_hash ~failover_policy ~iap
    ~log_config ~outlier_detection __resource_id =
  let __resource_type = "google_compute_region_backend_service" in
  let __resource =
    google_compute_region_backend_service ?affinity_cookie_ttl_sec
      ?connection_draining_timeout_sec ?description ?enable_cdn
      ?health_checks ?id ?load_balancing_scheme ?locality_lb_policy
      ?network ?port_name ?project ?protocol ?region
      ?session_affinity ?timeout_sec ?timeouts ~name ~backend
      ~cdn_policy ~circuit_breakers ~consistent_hash ~failover_policy
      ~iap ~log_config ~outlier_detection ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_backend_service __resource);
  let __resource_attributes =
    ({
       affinity_cookie_ttl_sec =
         Prop.computed __resource_type __resource_id
           "affinity_cookie_ttl_sec";
       connection_draining_timeout_sec =
         Prop.computed __resource_type __resource_id
           "connection_draining_timeout_sec";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       enable_cdn =
         Prop.computed __resource_type __resource_id "enable_cdn";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       health_checks =
         Prop.computed __resource_type __resource_id "health_checks";
       id = Prop.computed __resource_type __resource_id "id";
       load_balancing_scheme =
         Prop.computed __resource_type __resource_id
           "load_balancing_scheme";
       locality_lb_policy =
         Prop.computed __resource_type __resource_id
           "locality_lb_policy";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       port_name =
         Prop.computed __resource_type __resource_id "port_name";
       project =
         Prop.computed __resource_type __resource_id "project";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       session_affinity =
         Prop.computed __resource_type __resource_id
           "session_affinity";
       timeout_sec =
         Prop.computed __resource_type __resource_id "timeout_sec";
     }
      : t)
  in
  __resource_attributes
