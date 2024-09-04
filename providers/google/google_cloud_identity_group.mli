(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type additional_group_keys = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}

type group_key

val group_key :
  ?namespace:string prop -> id:string prop -> unit -> group_key

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_identity_group

val google_cloud_identity_group :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?initial_group_config:string prop ->
  ?timeouts:timeouts ->
  labels:string prop Tf_core.assoc ->
  parent:string prop ->
  group_key:group_key list ->
  unit ->
  google_cloud_identity_group

val yojson_of_google_cloud_identity_group :
  google_cloud_identity_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  additional_group_keys : additional_group_keys list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  initial_group_config : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?initial_group_config:string prop ->
  ?timeouts:timeouts ->
  labels:string prop Tf_core.assoc ->
  parent:string prop ->
  group_key:group_key list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?initial_group_config:string prop ->
  ?timeouts:timeouts ->
  labels:string prop Tf_core.assoc ->
  parent:string prop ->
  group_key:group_key list ->
  string ->
  t Tf_core.resource
