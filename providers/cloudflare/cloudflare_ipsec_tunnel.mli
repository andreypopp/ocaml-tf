(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_ipsec_tunnel

val cloudflare_ipsec_tunnel :
  ?account_id:string prop ->
  ?allow_null_cipher:bool prop ->
  ?description:string prop ->
  ?fqdn_id:string prop ->
  ?health_check_enabled:bool prop ->
  ?health_check_target:string prop ->
  ?health_check_type:string prop ->
  ?hex_id:string prop ->
  ?id:string prop ->
  ?psk:string prop ->
  ?remote_id:string prop ->
  ?user_id:string prop ->
  cloudflare_endpoint:string prop ->
  customer_endpoint:string prop ->
  interface_address:string prop ->
  name:string prop ->
  unit ->
  cloudflare_ipsec_tunnel

val yojson_of_cloudflare_ipsec_tunnel :
  cloudflare_ipsec_tunnel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  allow_null_cipher : bool prop;
  cloudflare_endpoint : string prop;
  customer_endpoint : string prop;
  description : string prop;
  fqdn_id : string prop;
  health_check_enabled : bool prop;
  health_check_target : string prop;
  health_check_type : string prop;
  hex_id : string prop;
  id : string prop;
  interface_address : string prop;
  name : string prop;
  psk : string prop;
  remote_id : string prop;
  user_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?allow_null_cipher:bool prop ->
  ?description:string prop ->
  ?fqdn_id:string prop ->
  ?health_check_enabled:bool prop ->
  ?health_check_target:string prop ->
  ?health_check_type:string prop ->
  ?hex_id:string prop ->
  ?id:string prop ->
  ?psk:string prop ->
  ?remote_id:string prop ->
  ?user_id:string prop ->
  cloudflare_endpoint:string prop ->
  customer_endpoint:string prop ->
  interface_address:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?allow_null_cipher:bool prop ->
  ?description:string prop ->
  ?fqdn_id:string prop ->
  ?health_check_enabled:bool prop ->
  ?health_check_target:string prop ->
  ?health_check_type:string prop ->
  ?hex_id:string prop ->
  ?id:string prop ->
  ?psk:string prop ->
  ?remote_id:string prop ->
  ?user_id:string prop ->
  cloudflare_endpoint:string prop ->
  customer_endpoint:string prop ->
  interface_address:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
