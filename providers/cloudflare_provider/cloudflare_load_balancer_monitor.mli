(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_load_balancer_monitor__header
type cloudflare_load_balancer_monitor

val cloudflare_load_balancer_monitor :
  ?allow_insecure:bool ->
  ?consecutive_down:float ->
  ?consecutive_up:float ->
  ?description:string ->
  ?expected_body:string ->
  ?expected_codes:string ->
  ?follow_redirects:bool ->
  ?interval:float ->
  ?port:float ->
  ?probe_zone:string ->
  ?retries:float ->
  ?timeout:float ->
  ?type_:string ->
  account_id:string ->
  header:cloudflare_load_balancer_monitor__header list ->
  string ->
  unit
