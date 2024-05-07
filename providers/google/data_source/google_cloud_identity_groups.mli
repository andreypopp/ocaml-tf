(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups__group_key = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}

type groups__additional_group_keys = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}

type groups = {
  additional_group_keys : groups__additional_group_keys list;
      (** additional_group_keys *)
  create_time : string prop;  (** create_time *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  group_key : groups__group_key list;  (** group_key *)
  initial_group_config : string prop;  (** initial_group_config *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  parent : string prop;  (** parent *)
  update_time : string prop;  (** update_time *)
}

type google_cloud_identity_groups

val google_cloud_identity_groups :
  ?id:string prop ->
  parent:string prop ->
  unit ->
  google_cloud_identity_groups

val yojson_of_google_cloud_identity_groups :
  google_cloud_identity_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
  parent : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  parent:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  parent:string prop ->
  string ->
  t Tf_core.resource
