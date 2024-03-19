(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type meta_data = {
  created_at : string prop;  (** created_at *)
  last_modified_at : string prop;  (** last_modified_at *)
  sub_type : string prop;  (** sub_type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_sharedflow

val google_apigee_sharedflow :
  ?detect_md5hash:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  config_bundle:string prop ->
  name:string prop ->
  org_id:string prop ->
  unit ->
  google_apigee_sharedflow

val yojson_of_google_apigee_sharedflow :
  google_apigee_sharedflow -> json

(** RESOURCE REGISTRATION *)

type t = private {
  config_bundle : string prop;
  detect_md5hash : string prop;
  id : string prop;
  latest_revision_id : string prop;
  md5hash : string prop;
  meta_data : meta_data list prop;
  name : string prop;
  org_id : string prop;
  revision : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?detect_md5hash:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  config_bundle:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t
