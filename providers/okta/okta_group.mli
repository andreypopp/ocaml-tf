(** Creates an Okta Group. This resource allows you to create and configure an Okta Group. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_group

val okta_group :
  ?custom_profile_attributes:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?skip_users:bool prop ->
  name:string prop ->
  unit ->
  okta_group

val yojson_of_okta_group : okta_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  custom_profile_attributes : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  skip_users : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_profile_attributes:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?skip_users:bool prop ->
  name:string prop ->
  string ->
  t

val make :
  ?custom_profile_attributes:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?skip_users:bool prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
