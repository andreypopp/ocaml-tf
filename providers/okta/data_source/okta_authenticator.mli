(** Get an authenticator by key, name of ID. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_authenticator

val okta_authenticator :
  ?id:string prop ->
  ?key:string prop ->
  ?name:string prop ->
  unit ->
  okta_authenticator

val yojson_of_okta_authenticator : okta_authenticator -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  key : string prop;
  name : string prop;
  provider_auth_port : float prop;
  provider_hostname : string prop;
  provider_instance_id : string prop;
  provider_json : string prop;
  provider_type : string prop;
  provider_user_name_template : string prop;
  settings : string prop;
  status : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?key:string prop ->
  ?name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?key:string prop ->
  ?name:string prop ->
  string ->
  t Tf_core.resource
