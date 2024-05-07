(** Use this data source to lookup a list of [Device Posture Rule](https://developers.cloudflare.com/cloudflare-one/identity/devices) *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rules = {
  description : string prop;  (** description *)
  expiration : string prop;  (** expiration *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  schedule : string prop;  (** schedule *)
  type_ : string prop; [@key "type"]  (** type *)
}

type cloudflare_device_posture_rules

val cloudflare_device_posture_rules :
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  unit ->
  cloudflare_device_posture_rules

val yojson_of_cloudflare_device_posture_rules :
  cloudflare_device_posture_rules -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  name : string prop;
  rules : rules list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  ?type_:string prop ->
  account_id:string prop ->
  string ->
  t Tf_core.resource
