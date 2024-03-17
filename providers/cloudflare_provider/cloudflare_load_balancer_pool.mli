(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_load_balancer_pool__load_shedding
type cloudflare_load_balancer_pool__origin_steering
type cloudflare_load_balancer_pool__origins__header
type cloudflare_load_balancer_pool__origins
type cloudflare_load_balancer_pool

val cloudflare_load_balancer_pool :
  ?check_regions:string prop list ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?latitude:float prop ->
  ?longitude:float prop ->
  ?minimum_origins:float prop ->
  ?monitor:string prop ->
  ?notification_email:string prop ->
  account_id:string prop ->
  name:string prop ->
  load_shedding:cloudflare_load_balancer_pool__load_shedding list ->
  origin_steering:cloudflare_load_balancer_pool__origin_steering list ->
  origins:cloudflare_load_balancer_pool__origins list ->
  string ->
  unit
