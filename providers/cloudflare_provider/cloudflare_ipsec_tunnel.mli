(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_ipsec_tunnel

val cloudflare_ipsec_tunnel :
  ?account_id:string ->
  ?allow_null_cipher:bool ->
  ?description:string ->
  ?fqdn_id:string ->
  ?health_check_enabled:bool ->
  ?health_check_target:string ->
  ?health_check_type:string ->
  ?hex_id:string ->
  ?id:string ->
  ?psk:string ->
  ?remote_id:string ->
  ?user_id:string ->
  cloudflare_endpoint:string ->
  customer_endpoint:string ->
  interface_address:string ->
  name:string ->
  string ->
  unit
