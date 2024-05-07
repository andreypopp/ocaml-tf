(** Provides a Cloudflare device policy certificates resource. Device
policy certificate resources enable client device certificate
generation.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type cloudflare_device_policy_certificates

val cloudflare_device_policy_certificates :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  unit ->
  cloudflare_device_policy_certificates

val yojson_of_cloudflare_device_policy_certificates :
  cloudflare_device_policy_certificates -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  enabled : bool prop;
  id : string prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  enabled:bool prop ->
  zone_id:string prop ->
  string ->
  t Tf_core.resource
