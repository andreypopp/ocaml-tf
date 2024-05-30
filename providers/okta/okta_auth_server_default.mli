(** Configures Default Authorization Server. This resource allows you to configure Default Authorization Server. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_default

val okta_auth_server_default :
  ?audiences:string prop list ->
  ?credentials_rotation_mode:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?name:string prop ->
  ?status:string prop ->
  unit ->
  okta_auth_server_default

val yojson_of_okta_auth_server_default :
  okta_auth_server_default -> json

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
  ?audiences:string prop list ->
  ?credentials_rotation_mode:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?name:string prop ->
  ?status:string prop ->
  string ->
  t

val make :
  ?audiences:string prop list ->
  ?credentials_rotation_mode:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?issuer_mode:string prop ->
  ?name:string prop ->
  ?status:string prop ->
  string ->
  t Tf_core.resource
