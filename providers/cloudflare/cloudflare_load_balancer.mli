(** Provides a Cloudflare Load Balancer resource. This sits in front of
a number of defined pools of origins and provides various options
for geographically-aware load balancing. Note that the load balancing
feature must be enabled in your Cloudflare account before you can use
this resource.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type adaptive_routing

val adaptive_routing :
  ?failover_across_pools:bool prop -> unit -> adaptive_routing

type country_pools

val country_pools :
  country:string prop ->
  pool_ids:string prop list ->
  unit ->
  country_pools

type location_strategy

val location_strategy :
  ?mode:string prop ->
  ?prefer_ecs:string prop ->
  unit ->
  location_strategy

type pop_pools

val pop_pools :
  pool_ids:string prop list -> pop:string prop -> unit -> pop_pools

type random_steering

val random_steering :
  ?default_weight:float prop ->
  ?pool_weights:(string * float prop) list ->
  unit ->
  random_steering

type region_pools

val region_pools :
  pool_ids:string prop list ->
  region:string prop ->
  unit ->
  region_pools

type rules__fixed_response

val rules__fixed_response :
  ?content_type:string prop ->
  ?location:string prop ->
  ?message_body:string prop ->
  ?status_code:float prop ->
  unit ->
  rules__fixed_response

type rules__overrides__adaptive_routing

val rules__overrides__adaptive_routing :
  ?failover_across_pools:bool prop ->
  unit ->
  rules__overrides__adaptive_routing

type rules__overrides__country_pools

val rules__overrides__country_pools :
  country:string prop ->
  pool_ids:string prop list ->
  unit ->
  rules__overrides__country_pools

type rules__overrides__location_strategy

val rules__overrides__location_strategy :
  ?mode:string prop ->
  ?prefer_ecs:string prop ->
  unit ->
  rules__overrides__location_strategy

type rules__overrides__pop_pools

val rules__overrides__pop_pools :
  pool_ids:string prop list ->
  pop:string prop ->
  unit ->
  rules__overrides__pop_pools

type rules__overrides__random_steering

val rules__overrides__random_steering :
  ?default_weight:float prop ->
  ?pool_weights:(string * float prop) list ->
  unit ->
  rules__overrides__random_steering

type rules__overrides__region_pools

val rules__overrides__region_pools :
  pool_ids:string prop list ->
  region:string prop ->
  unit ->
  rules__overrides__region_pools

type rules__overrides__session_affinity_attributes

val rules__overrides__session_affinity_attributes :
  ?headers:string prop list ->
  ?require_all_headers:bool prop ->
  ?samesite:string prop ->
  ?secure:string prop ->
  ?zero_downtime_failover:string prop ->
  unit ->
  rules__overrides__session_affinity_attributes

type rules__overrides

val rules__overrides :
  ?default_pools:string prop list ->
  ?fallback_pool:string prop ->
  ?session_affinity:string prop ->
  ?session_affinity_ttl:float prop ->
  ?steering_policy:string prop ->
  ?ttl:float prop ->
  adaptive_routing:rules__overrides__adaptive_routing list ->
  country_pools:rules__overrides__country_pools list ->
  location_strategy:rules__overrides__location_strategy list ->
  pop_pools:rules__overrides__pop_pools list ->
  random_steering:rules__overrides__random_steering list ->
  region_pools:rules__overrides__region_pools list ->
  session_affinity_attributes:
    rules__overrides__session_affinity_attributes list ->
  unit ->
  rules__overrides

type rules

val rules :
  ?condition:string prop ->
  ?disabled:bool prop ->
  ?priority:float prop ->
  ?terminates:bool prop ->
  name:string prop ->
  fixed_response:rules__fixed_response list ->
  overrides:rules__overrides list ->
  unit ->
  rules

type session_affinity_attributes

val session_affinity_attributes :
  ?drain_duration:float prop ->
  ?headers:string prop list ->
  ?require_all_headers:bool prop ->
  ?samesite:string prop ->
  ?secure:string prop ->
  ?zero_downtime_failover:string prop ->
  unit ->
  session_affinity_attributes

type cloudflare_load_balancer

val cloudflare_load_balancer :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?proxied:bool prop ->
  ?session_affinity:string prop ->
  ?session_affinity_ttl:float prop ->
  ?steering_policy:string prop ->
  ?ttl:float prop ->
  default_pool_ids:string prop list ->
  fallback_pool_id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  adaptive_routing:adaptive_routing list ->
  country_pools:country_pools list ->
  location_strategy:location_strategy list ->
  pop_pools:pop_pools list ->
  random_steering:random_steering list ->
  region_pools:region_pools list ->
  rules:rules list ->
  session_affinity_attributes:session_affinity_attributes list ->
  unit ->
  cloudflare_load_balancer

val yojson_of_cloudflare_load_balancer :
  cloudflare_load_balancer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_on : string prop;
  default_pool_ids : string list prop;
  description : string prop;
  enabled : bool prop;
  fallback_pool_id : string prop;
  id : string prop;
  modified_on : string prop;
  name : string prop;
  proxied : bool prop;
  session_affinity : string prop;
  session_affinity_ttl : float prop;
  steering_policy : string prop;
  ttl : float prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?proxied:bool prop ->
  ?session_affinity:string prop ->
  ?session_affinity_ttl:float prop ->
  ?steering_policy:string prop ->
  ?ttl:float prop ->
  default_pool_ids:string prop list ->
  fallback_pool_id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  adaptive_routing:adaptive_routing list ->
  country_pools:country_pools list ->
  location_strategy:location_strategy list ->
  pop_pools:pop_pools list ->
  random_steering:random_steering list ->
  region_pools:region_pools list ->
  rules:rules list ->
  session_affinity_attributes:session_affinity_attributes list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?proxied:bool prop ->
  ?session_affinity:string prop ->
  ?session_affinity_ttl:float prop ->
  ?steering_policy:string prop ->
  ?ttl:float prop ->
  default_pool_ids:string prop list ->
  fallback_pool_id:string prop ->
  name:string prop ->
  zone_id:string prop ->
  adaptive_routing:adaptive_routing list ->
  country_pools:country_pools list ->
  location_strategy:location_strategy list ->
  pop_pools:pop_pools list ->
  random_steering:random_steering list ->
  region_pools:region_pools list ->
  rules:rules list ->
  session_affinity_attributes:session_affinity_attributes list ->
  string ->
  t Tf_core.resource
