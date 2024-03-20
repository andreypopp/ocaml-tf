(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type memberships__roles__expiry_detail = {
  expire_time : string prop;  (** expire_time *)
}

type memberships__roles = {
  expiry_detail : memberships__roles__expiry_detail list;
      (** expiry_detail *)
  name : string prop;  (** name *)
}

type memberships__preferred_member_key = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}

type memberships = {
  create_time : string prop;  (** create_time *)
  group : string prop;  (** group *)
  name : string prop;  (** name *)
  preferred_member_key : memberships__preferred_member_key list;
      (** preferred_member_key *)
  roles : memberships__roles list;  (** roles *)
  type_ : string prop; [@key "type"]  (** type *)
  update_time : string prop;  (** update_time *)
}

type google_cloud_identity_group_memberships

val google_cloud_identity_group_memberships :
  ?id:string prop ->
  group:string prop ->
  unit ->
  google_cloud_identity_group_memberships

val yojson_of_google_cloud_identity_group_memberships :
  google_cloud_identity_group_memberships -> json

(** RESOURCE REGISTRATION *)

type t = private {
  group : string prop;
  id : string prop;
  memberships : memberships list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  group:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  group:string prop ->
  string ->
  t Tf_core.resource
