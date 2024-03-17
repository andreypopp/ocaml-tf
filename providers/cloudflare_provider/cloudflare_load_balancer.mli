(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_load_balancer__adaptive_routing
type cloudflare_load_balancer__country_pools
type cloudflare_load_balancer__location_strategy
type cloudflare_load_balancer__pop_pools
type cloudflare_load_balancer__random_steering
type cloudflare_load_balancer__region_pools
type cloudflare_load_balancer__rules__fixed_response
type cloudflare_load_balancer__rules__overrides__adaptive_routing
type cloudflare_load_balancer__rules__overrides__country_pools
type cloudflare_load_balancer__rules__overrides__location_strategy
type cloudflare_load_balancer__rules__overrides__pop_pools
type cloudflare_load_balancer__rules__overrides__random_steering
type cloudflare_load_balancer__rules__overrides__region_pools

type cloudflare_load_balancer__rules__overrides__session_affinity_attributes

type cloudflare_load_balancer__rules__overrides
type cloudflare_load_balancer__rules
type cloudflare_load_balancer__session_affinity_attributes
type cloudflare_load_balancer

val cloudflare_load_balancer :
  ?description:string ->
  ?enabled:bool ->
  ?proxied:bool ->
  ?session_affinity:string ->
  ?session_affinity_ttl:float ->
  default_pool_ids:string list ->
  fallback_pool_id:string ->
  name:string ->
  zone_id:string ->
  adaptive_routing:cloudflare_load_balancer__adaptive_routing list ->
  country_pools:cloudflare_load_balancer__country_pools list ->
  location_strategy:cloudflare_load_balancer__location_strategy list ->
  pop_pools:cloudflare_load_balancer__pop_pools list ->
  random_steering:cloudflare_load_balancer__random_steering list ->
  region_pools:cloudflare_load_balancer__region_pools list ->
  rules:cloudflare_load_balancer__rules list ->
  session_affinity_attributes:
    cloudflare_load_balancer__session_affinity_attributes list ->
  string ->
  unit
