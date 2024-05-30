(** Creates an Authorization Server Policy. This resource allows you to create and configure an Authorization Server Policy. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_policy

val okta_auth_server_policy :
  ?id:string prop ->
  ?status:string prop ->
  auth_server_id:string prop ->
  client_whitelist:string prop list ->
  description:string prop ->
  name:string prop ->
  priority:float prop ->
  unit ->
  okta_auth_server_policy

val yojson_of_okta_auth_server_policy :
  okta_auth_server_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auth_server_id : string prop;
  client_whitelist : string list prop;
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  auth_server_id:string prop ->
  client_whitelist:string prop list ->
  description:string prop ->
  name:string prop ->
  priority:float prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  auth_server_id:string prop ->
  client_whitelist:string prop list ->
  description:string prop ->
  name:string prop ->
  priority:float prop ->
  string ->
  t Tf_core.resource
