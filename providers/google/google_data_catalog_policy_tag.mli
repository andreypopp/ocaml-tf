(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_data_catalog_policy_tag

val google_data_catalog_policy_tag :
  ?description:string prop ->
  ?id:string prop ->
  ?parent_policy_tag:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  taxonomy:string prop ->
  unit ->
  google_data_catalog_policy_tag

val yojson_of_google_data_catalog_policy_tag :
  google_data_catalog_policy_tag -> json

(** RESOURCE REGISTRATION *)

type t = private {
  child_policy_tags : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_policy_tag : string prop;
  taxonomy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?parent_policy_tag:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  taxonomy:string prop ->
  string ->
  t
