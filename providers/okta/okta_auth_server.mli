(** Creates an Authorization Server. This resource allows you to create and configure an Authorization Server. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server

val okta_auth_server :
  ?credentials_rotation_mode:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?status:string prop ->
  audiences:string prop list ->
  name:string prop ->
  unit ->
  okta_auth_server

val yojson_of_okta_auth_server : okta_auth_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  audiences : string list prop;
  credentials_last_rotated : string prop;
  credentials_next_rotation : string prop;
  credentials_rotation_mode : string prop;
  description : string prop;
  id : string prop;
  issuer : string prop;
  issuer_mode : string prop;
  kid : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?credentials_rotation_mode:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?status:string prop ->
  audiences:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?credentials_rotation_mode:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?status:string prop ->
  audiences:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
