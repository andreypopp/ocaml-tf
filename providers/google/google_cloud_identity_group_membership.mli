(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type preferred_member_key

val preferred_member_key :
  ?namespace:string prop ->
  id:string prop ->
  unit ->
  preferred_member_key

type roles__expiry_detail

val roles__expiry_detail :
  expire_time:string prop -> unit -> roles__expiry_detail

type roles

val roles :
  ?expiry_detail:roles__expiry_detail list ->
  name:string prop ->
  unit ->
  roles

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_cloud_identity_group_membership

val google_cloud_identity_group_membership :
  ?id:string prop ->
  ?preferred_member_key:preferred_member_key list ->
  ?timeouts:timeouts ->
  group:string prop ->
  roles:roles list ->
  unit ->
  google_cloud_identity_group_membership

val yojson_of_google_cloud_identity_group_membership :
  google_cloud_identity_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  group : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?preferred_member_key:preferred_member_key list ->
  ?timeouts:timeouts ->
  group:string prop ->
  roles:roles list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?preferred_member_key:preferred_member_key list ->
  ?timeouts:timeouts ->
  group:string prop ->
  roles:roles list ->
  string ->
  t Tf_core.resource
