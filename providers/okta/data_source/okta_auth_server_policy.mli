(** Get an authorization server policy from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_policy

val okta_auth_server_policy :
  ?id:string prop ->
  auth_server_id:string prop ->
  name:string prop ->
  unit ->
  okta_auth_server_policy

val yojson_of_okta_auth_server_policy :
  okta_auth_server_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  assigned_clients : string list prop;
  auth_server_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  auth_server_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  auth_server_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
