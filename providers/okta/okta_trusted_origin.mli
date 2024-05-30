(** Creates a Trusted Origin. This resource allows you to create and configure a Trusted Origin. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_trusted_origin

val okta_trusted_origin :
  ?active:bool prop ->
  ?id:string prop ->
  name:string prop ->
  origin:string prop ->
  scopes:string prop list ->
  unit ->
  okta_trusted_origin

val yojson_of_okta_trusted_origin : okta_trusted_origin -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  active : bool prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  scopes : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?active:bool prop ->
  ?id:string prop ->
  name:string prop ->
  origin:string prop ->
  scopes:string prop list ->
  string ->
  t

val make :
  ?active:bool prop ->
  ?id:string prop ->
  name:string prop ->
  origin:string prop ->
  scopes:string prop list ->
  string ->
  t Tf_core.resource
