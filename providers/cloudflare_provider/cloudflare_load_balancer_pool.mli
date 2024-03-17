(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_load_balancer_pool__load_shedding
type cloudflare_load_balancer_pool__origin_steering
type cloudflare_load_balancer_pool__origins__header
type cloudflare_load_balancer_pool__origins
type cloudflare_load_balancer_pool

val cloudflare_load_balancer_pool :
  ?check_regions:string list ->
  ?description:string ->
  ?enabled:bool ->
  ?id:string ->
  ?latitude:float ->
  ?longitude:float ->
  ?minimum_origins:float ->
  ?monitor:string ->
  ?notification_email:string ->
  account_id:string ->
  name:string ->
  load_shedding:cloudflare_load_balancer_pool__load_shedding list ->
  origin_steering:cloudflare_load_balancer_pool__origin_steering list ->
  origins:cloudflare_load_balancer_pool__origins list ->
  string ->
  unit
