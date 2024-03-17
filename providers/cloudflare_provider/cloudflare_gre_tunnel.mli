(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_gre_tunnel

val cloudflare_gre_tunnel :
  ?account_id:string ->
  ?description:string ->
  ?health_check_enabled:bool ->
  ?health_check_target:string ->
  ?health_check_type:string ->
  ?id:string ->
  ?mtu:float ->
  ?ttl:float ->
  cloudflare_gre_endpoint:string ->
  customer_gre_endpoint:string ->
  interface_address:string ->
  name:string ->
  string ->
  unit
