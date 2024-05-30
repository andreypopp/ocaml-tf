(** Get a list of groups from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type groups = {
  custom_profile_attributes : string prop;
      (** custom_profile_attributes *)
  description : string prop;  (** description *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type okta_groups

val okta_groups :
  ?id:string prop ->
  ?q:string prop ->
  ?search:string prop ->
  ?type_:string prop ->
  unit ->
  okta_groups

val yojson_of_okta_groups : okta_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  groups : groups list prop;
  id : string prop;
  q : string prop;
  search : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?q:string prop ->
  ?search:string prop ->
  ?type_:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?q:string prop ->
  ?search:string prop ->
  ?type_:string prop ->
  string ->
  t Tf_core.resource
