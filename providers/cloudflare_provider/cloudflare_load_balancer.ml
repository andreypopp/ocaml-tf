(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_load_balancer__adaptive_routing = {
  failover_across_pools : bool option; [@option]
      (** Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set `false`, zero-downtime failover will only occur between origins within the same pool. Defaults to `false`. *)
}
[@@deriving yojson_of]
(** Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. *)

type cloudflare_load_balancer__country_pools = {
  country : string;
      (** A country code which can be determined with the Load Balancing Regions API described [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/). Multiple entries should not be specified with the same country. *)
  pool_ids : string list;
      (** A list of pool IDs in failover priority to use in the given country. *)
}
[@@deriving yojson_of]
(** A set containing mappings of country codes to a list of pool IDs (ordered by their failover priority) for the given country. *)

type cloudflare_load_balancer__location_strategy = {
  mode : string option; [@option]
      (** Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful. Value `pop` will use the Cloudflare PoP location. Value `resolver_ip` will use the DNS resolver GeoIP location. If the GeoIP lookup is unsuccessful, it will use the Cloudflare PoP location. Available values: `pop`, `resolver_ip`. Defaults to `pop`. *)
  prefer_ecs : string option; [@option]
      (** Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location. Value `always` will always prefer ECS, `never` will never prefer ECS, `proximity` will prefer ECS only when [`steering_policy=proximity`](#steering_policy), and `geo` will prefer ECS only when [`steering_policy=geo`](#steering_policy). Available values: `always`, `never`, `proximity`, `geo`. Defaults to `proximity`. *)
}
[@@deriving yojson_of]
(** Controls location-based steering for non-proxied requests. *)

type cloudflare_load_balancer__pop_pools = {
  pool_ids : string list;
      (** A list of pool IDs in failover priority to use for traffic reaching the given PoP. *)
  pop : string;
      (** A 3-letter code for the Point-of-Presence. Allowed values can be found in the list of datacenters on the [status page](https://www.cloudflarestatus.com/). Multiple entries should not be specified with the same PoP. *)
}
[@@deriving yojson_of]
(** A set containing mappings of Cloudflare Point-of-Presence (PoP) identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). This feature is only available to enterprise customers. *)

type cloudflare_load_balancer__random_steering = {
  default_weight : float option; [@option]
      (** The default weight for pools in the load balancer that are not specified in the [`pool_weights`](#pool_weights) map. *)
  pool_weights : (string * float) list option; [@option]
      (** A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer. *)
}
[@@deriving yojson_of]
(** Configures pool weights. When [`steering_policy=random`](#steering_policy), a random pool is selected with probability proportional to pool weights. When [`steering_policy=least_outstanding_requests`](#steering_policy), pool weights are used to scale each pool's outstanding requests. When [`steering_policy=least_connections`](#steering_policy), pool weights are used to scale each pool's open connections. *)

type cloudflare_load_balancer__region_pools = {
  pool_ids : string list;
      (** A list of pool IDs in failover priority to use in the given region. *)
  region : string;
      (** A region code which must be in the list defined [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/#list-of-load-balancer-regions). Multiple entries should not be specified with the same region. *)
}
[@@deriving yojson_of]
(** A set containing mappings of region codes to a list of pool IDs (ordered by their failover priority) for the given region. *)

type cloudflare_load_balancer__rules__fixed_response = {
  content_type : string option; [@option]
      (** The value of the HTTP context-type header for this fixed response. *)
  location : string option; [@option]
      (** The value of the HTTP location header for this fixed response. *)
  message_body : string option; [@option]
      (** The text used as the html body for this fixed response. *)
  status_code : float option; [@option]
      (** The HTTP status code used for this fixed response. *)
}
[@@deriving yojson_of]
(** Settings for a HTTP response to return directly to the eyeball if the condition is true. Note: [`overrides`](#overrides) or [`fixed_response`](#fixed_response) must be set. *)

type cloudflare_load_balancer__rules__overrides__adaptive_routing = {
  failover_across_pools : bool option; [@option]
      (** Extends zero-downtime failover of requests to healthy origins from alternate pools, when no healthy alternate exists in the same pool, according to the failover order defined by traffic and origin steering. When set `false`, zero-downtime failover will only occur between origins within the same pool. *)
}
[@@deriving yojson_of]
(** Controls features that modify the routing of requests to pools and origins in response to dynamic conditions, such as during the interval between active health monitoring requests. *)

type cloudflare_load_balancer__rules__overrides__country_pools = {
  country : string;
      (** A country code which can be determined with the Load Balancing Regions API described [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/). Multiple entries should not be specified with the same country. *)
  pool_ids : string list;
      (** A list of pool IDs in failover priority to use in the given country. *)
}
[@@deriving yojson_of]
(** A set containing mappings of country codes to a list of pool IDs (ordered by their failover priority) for the given country. *)

type cloudflare_load_balancer__rules__overrides__location_strategy = {
  mode : string option; [@option]
      (** Determines the authoritative location when ECS is not preferred, does not exist in the request, or its GeoIP lookup is unsuccessful. Value `pop` will use the Cloudflare PoP location. Value `resolver_ip` will use the DNS resolver GeoIP location. If the GeoIP lookup is unsuccessful, it will use the Cloudflare PoP location. Available values: `pop`, `resolver_ip`. *)
  prefer_ecs : string option; [@option]
      (** Whether the EDNS Client Subnet (ECS) GeoIP should be preferred as the authoritative location. Value `always` will always prefer ECS, `never` will never prefer ECS, `proximity` will prefer ECS only when [`steering_policy=proximity`](#steering_policy), and `geo` will prefer ECS only when [`steering_policy=geo`](#steering_policy). Available values: `always`, `never`, `proximity`, `geo`. *)
}
[@@deriving yojson_of]
(** Controls location-based steering for non-proxied requests. *)

type cloudflare_load_balancer__rules__overrides__pop_pools = {
  pool_ids : string list;
      (** A list of pool IDs in failover priority to use for traffic reaching the given PoP. *)
  pop : string;
      (** A 3-letter code for the Point-of-Presence. Allowed values can be found in the list of datacenters on the [status page](https://www.cloudflarestatus.com/). Multiple entries should not be specified with the same PoP. *)
}
[@@deriving yojson_of]
(** A set containing mappings of Cloudflare Point-of-Presence (PoP) identifiers to a list of pool IDs (ordered by their failover priority) for the PoP (datacenter). This feature is only available to enterprise customers. *)

type cloudflare_load_balancer__rules__overrides__random_steering = {
  default_weight : float option; [@option]
      (** The default weight for pools in the load balancer that are not specified in the [`pool_weights`](#pool_weights) map. *)
  pool_weights : (string * float) list option; [@option]
      (** A mapping of pool IDs to custom weights. The weight is relative to other pools in the load balancer. *)
}
[@@deriving yojson_of]
(** Configures pool weights. When [`steering_policy=random`](#steering_policy), a random pool is selected with probability proportional to pool weights. When [`steering_policy=least_outstanding_requests`](#steering_policy), pool weights are used to scale each pool's outstanding requests. When [`steering_policy=least_connections`](#steering_policy), pool weights are used to scale each pool's open connections. *)

type cloudflare_load_balancer__rules__overrides__region_pools = {
  pool_ids : string list;
      (** A list of pool IDs in failover priority to use in the given region. *)
  region : string;
      (** A region code which must be in the list defined [here](https://developers.cloudflare.com/load-balancing/reference/region-mapping-api/#list-of-load-balancer-regions). Multiple entries should not be specified with the same region. *)
}
[@@deriving yojson_of]
(** A set containing mappings of region codes to a list of pool IDs (ordered by their failover priority) for the given region. *)

type cloudflare_load_balancer__rules__overrides__session_affinity_attributes = {
  headers : string list option; [@option]
      (** Configures the HTTP header names to use when header session affinity is enabled. *)
  require_all_headers : bool option; [@option]
      (** Configures how headers are used when header session affinity is enabled. Set to true to require all headers to be present on requests in order for sessions to be created or false to require at least one header to be present. Defaults to `false`. *)
  samesite : string option; [@option]
      (** Configures the SameSite attribute on session affinity cookie. Value `Auto` will be translated to `Lax` or `None` depending if Always Use HTTPS is enabled. Note: when using value `None`, then you can not set [`secure=Never`](#secure). Available values: `Auto`, `Lax`, `None`, `Strict`. *)
  secure : string option; [@option]
      (** Configures the Secure attribute on session affinity cookie. Value `Always` indicates the Secure attribute will be set in the Set-Cookie header, `Never` indicates the Secure attribute will not be set, and `Auto` will set the Secure attribute depending if Always Use HTTPS is enabled. Available values: `Auto`, `Always`, `Never`. *)
  zero_downtime_failover : string option; [@option]
      (** Configures the zero-downtime failover between origins within a pool when session affinity is enabled. Value `none` means no failover takes place for sessions pinned to the origin. Value `temporary` means traffic will be sent to another other healthy origin until the originally pinned origin is available; note that this can potentially result in heavy origin flapping. Value `sticky` means the session affinity cookie is updated and subsequent requests are sent to the new origin. This feature is currently incompatible with Argo, Tiered Cache, and Bandwidth Alliance. Available values: `none`, `temporary`, `sticky`. *)
}
[@@deriving yojson_of]
(** Configure attributes for session affinity. Note that the property [`drain_duration`](#drain_duration) is not currently supported as a rule override. *)

type cloudflare_load_balancer__rules__overrides = {
  default_pools : string list option; [@option]
      (** A list of pool IDs ordered by their failover priority. Used whenever [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) are not defined. *)
  fallback_pool : string option; [@option]
      (** The pool ID to use when all other pools are detected as unhealthy. *)
  session_affinity : string option; [@option]
      (** Configure attributes for session affinity. *)
  session_affinity_ttl : float option; [@option]
      (** Time, in seconds, until this load balancer's session affinity cookie expires after being created. This parameter is ignored unless a supported session affinity policy is set. The current default of `82800` (23 hours) will be used unless [`session_affinity_ttl`](#session_affinity_ttl) is explicitly set. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. Valid values are between `1800` and `604800`. *)
  steering_policy : string option; [@option]
      (** The method the load balancer uses to determine the route to your origin. Value `off` uses [`default_pool_ids`](#default_pool_ids). Value `geo` uses [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools). For non-proxied requests, the [`country`](#country) for [`country_pools`](#country_pools) is determined by [`location_strategy`](#location_strategy). Value `random` selects a pool randomly. Value `dynamic_latency` uses round trip time to select the closest pool in [`default_pool_ids`](#default_pool_ids) (requires pool health checks). Value `proximity` uses the pools' latitude and longitude to select the closest pool using the Cloudflare PoP location for proxied requests or the location determined by [`location_strategy`](#location_strategy) for non-proxied requests. Value `least_outstanding_requests` selects a pool by taking into consideration [`random_steering`](#random_steering) weights, as well as each pool's number of outstanding requests. Pools with more pending requests are weighted proportionately less relative to others. Value `least_connections` selects a pool by taking into consideration [`random_steering`](#random_steering) weights, as well as each pool's number of open connections. Pools with more open connections are weighted proportionately less relative to others. Supported for HTTP/1 and HTTP/2 connections. Value `` maps to `geo` if you use [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) otherwise `off`. Available values: `off`, `geo`, `dynamic_latency`, `random`, `proximity`, `least_outstanding_requests`, `least_connections`, `` Defaults to ``. *)
  ttl : float option; [@option]
      (** Time to live (TTL) of the DNS entry for the IP address returned by this load balancer. This cannot be set for proxied load balancers. Defaults to `30`. *)
  adaptive_routing :
    cloudflare_load_balancer__rules__overrides__adaptive_routing list;
  country_pools :
    cloudflare_load_balancer__rules__overrides__country_pools list;
  location_strategy :
    cloudflare_load_balancer__rules__overrides__location_strategy
    list;
  pop_pools :
    cloudflare_load_balancer__rules__overrides__pop_pools list;
  random_steering :
    cloudflare_load_balancer__rules__overrides__random_steering list;
  region_pools :
    cloudflare_load_balancer__rules__overrides__region_pools list;
  session_affinity_attributes :
    cloudflare_load_balancer__rules__overrides__session_affinity_attributes
    list;
}
[@@deriving yojson_of]
(** The load balancer settings to alter if this rule's [`condition`](#condition) is true. Note: [`overrides`](#overrides) or [`fixed_response`](#fixed_response) must be set. *)

type cloudflare_load_balancer__rules = {
  condition : string option; [@option]
      (** The statement to evaluate to determine if this rule's effects should be applied. An empty condition is always true. See [load balancing rules](https://developers.cloudflare.com/load-balancing/understand-basics/load-balancing-rules). *)
  disabled : bool option; [@option]
      (** A disabled rule will not be executed. *)
  name : string;  (** Human readable name for this rule. *)
  priority : float option; [@option]
      (** Priority used when determining the order of rule execution. Lower values are executed first. If not provided, the list order will be used. *)
  terminates : bool option; [@option]
      (** Terminates indicates that if this rule is true no further rules should be executed. Note: setting a [`fixed_response`](#fixed_response) forces this field to `true`. *)
  fixed_response :
    cloudflare_load_balancer__rules__fixed_response list;
  overrides : cloudflare_load_balancer__rules__overrides list;
}
[@@deriving yojson_of]
(** A list of rules for this load balancer to execute. *)

type cloudflare_load_balancer__session_affinity_attributes = {
  drain_duration : float option; [@option]
      (** Configures the drain duration in seconds. This field is only used when session affinity is enabled on the load balancer. Defaults to `0`. *)
  headers : string list option; [@option]
      (** Configures the HTTP header names to use when header session affinity is enabled. *)
  require_all_headers : bool option; [@option]
      (** Configures how headers are used when header session affinity is enabled. Set to true to require all headers to be present on requests in order for sessions to be created or false to require at least one header to be present. Defaults to `false`. *)
  samesite : string option; [@option]
      (** Configures the SameSite attribute on session affinity cookie. Value `Auto` will be translated to `Lax` or `None` depending if Always Use HTTPS is enabled. Note: when using value `None`, then you can not set [`secure=Never`](#secure). Available values: `Auto`, `Lax`, `None`, `Strict`. Defaults to `Auto`. *)
  secure : string option; [@option]
      (** Configures the Secure attribute on session affinity cookie. Value `Always` indicates the Secure attribute will be set in the Set-Cookie header, `Never` indicates the Secure attribute will not be set, and `Auto` will set the Secure attribute depending if Always Use HTTPS is enabled. Available values: `Auto`, `Always`, `Never`. Defaults to `Auto`. *)
  zero_downtime_failover : string option; [@option]
      (** Configures the zero-downtime failover between origins within a pool when session affinity is enabled. Value `none` means no failover takes place for sessions pinned to the origin. Value `temporary` means traffic will be sent to another other healthy origin until the originally pinned origin is available; note that this can potentially result in heavy origin flapping. Value `sticky` means the session affinity cookie is updated and subsequent requests are sent to the new origin. This feature is currently incompatible with Argo, Tiered Cache, and Bandwidth Alliance. Available values: `none`, `temporary`, `sticky`. Defaults to `none`. *)
}
[@@deriving yojson_of]
(** Configure attributes for session affinity. *)

type cloudflare_load_balancer = {
  default_pool_ids : string list;
      (** A list of pool IDs ordered by their failover priority. Used whenever [`pop_pools`](#pop_pools)/[`country_pools`](#country_pools)/[`region_pools`](#region_pools) are not defined. *)
  description : string option; [@option]
      (** Free text description. *)
  enabled : bool option; [@option]
      (** Enable or disable the load balancer. Defaults to `true`. *)
  fallback_pool_id : string;
      (** The pool ID to use when all other pools are detected as unhealthy. *)
  name : string;
      (** The DNS hostname to associate with your load balancer. If this hostname already exists as a DNS record in Cloudflare's DNS, the load balancer will take precedence and the DNS record will not be used. *)
  proxied : bool option; [@option]
      (** Whether the hostname gets Cloudflare's origin protection. Defaults to `false`. Conflicts with `ttl`. *)
  session_affinity : string option; [@option]
      (** Specifies the type of session affinity the load balancer should use unless specified as `none` or `` (default). With value `cookie`, on the first request to a proxied load balancer, a cookie is generated, encoding information of which origin the request will be forwarded to. Subsequent requests, by the same client to the same load balancer, will be sent to the origin server the cookie encodes, for the duration of the cookie and as long as the origin server remains healthy. If the cookie has expired or the origin server is unhealthy then a new origin server is calculated and used. Value `ip_cookie` behaves the same as `cookie` except the initial origin selection is stable and based on the client's IP address. Available values: ``, `none`, `cookie`, `ip_cookie`, `header`. Defaults to `none`. *)
  session_affinity_ttl : float option; [@option]
      (** Time, in seconds, until this load balancer's session affinity cookie expires after being created. This parameter is ignored unless a supported session affinity policy is set. The current default of `82800` (23 hours) will be used unless [`session_affinity_ttl`](#session_affinity_ttl) is explicitly set. Once the expiry time has been reached, subsequent requests may get sent to a different origin server. Valid values are between `1800` and `604800`. *)
  zone_id : string;
      (** The zone ID to add the load balancer to. **Modifying this attribute will force creation of a new resource.** *)
  adaptive_routing : cloudflare_load_balancer__adaptive_routing list;
  country_pools : cloudflare_load_balancer__country_pools list;
  location_strategy :
    cloudflare_load_balancer__location_strategy list;
  pop_pools : cloudflare_load_balancer__pop_pools list;
  random_steering : cloudflare_load_balancer__random_steering list;
  region_pools : cloudflare_load_balancer__region_pools list;
  rules : cloudflare_load_balancer__rules list;
  session_affinity_attributes :
    cloudflare_load_balancer__session_affinity_attributes list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Load Balancer resource. This sits in front of
a number of defined pools of origins and provides various options
for geographically-aware load balancing. Note that the load balancing
feature must be enabled in your Cloudflare account before you can use
this resource.
 *)

let cloudflare_load_balancer ?description ?enabled ?proxied
    ?session_affinity ?session_affinity_ttl ~default_pool_ids
    ~fallback_pool_id ~name ~zone_id ~adaptive_routing ~country_pools
    ~location_strategy ~pop_pools ~random_steering ~region_pools
    ~rules ~session_affinity_attributes __resource_id =
  let __resource_type = "cloudflare_load_balancer" in
  let __resource =
    {
      default_pool_ids;
      description;
      enabled;
      fallback_pool_id;
      name;
      proxied;
      session_affinity;
      session_affinity_ttl;
      zone_id;
      adaptive_routing;
      country_pools;
      location_strategy;
      pop_pools;
      random_steering;
      region_pools;
      rules;
      session_affinity_attributes;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_load_balancer __resource);
  ()