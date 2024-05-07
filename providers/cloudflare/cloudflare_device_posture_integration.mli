(** Provides a Cloudflare Device Posture Integration resource. Device
posture integrations configure third-party data providers for device
posture rules.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type config

val config :
  ?access_client_id:string prop ->
  ?access_client_secret:string prop ->
  ?api_url:string prop ->
  ?auth_url:string prop ->
  ?client_id:string prop ->
  ?client_key:string prop ->
  ?client_secret:string prop ->
  ?customer_id:string prop ->
  unit ->
  config

type cloudflare_device_posture_integration

val cloudflare_device_posture_integration :
  ?id:string prop ->
  ?identifier:string prop ->
  ?interval:string prop ->
  ?config:config list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  unit ->
  cloudflare_device_posture_integration

val yojson_of_cloudflare_device_posture_integration :
  cloudflare_device_posture_integration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  identifier : string prop;
  interval : string prop;
  name : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?identifier:string prop ->
  ?interval:string prop ->
  ?config:config list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?identifier:string prop ->
  ?interval:string prop ->
  ?config:config list ->
  account_id:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
