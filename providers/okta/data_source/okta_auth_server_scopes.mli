(** Get a list of authorization server scopes from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type scopes = {
  consent : string prop;  (** consent *)
  default : bool prop;  (** default *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop;  (** id *)
  metadata_publish : string prop;  (** metadata_publish *)
  name : string prop;  (** name *)
  optional : bool prop;  (** optional *)
  system : bool prop;  (** system *)
}

type okta_auth_server_scopes

val okta_auth_server_scopes :
  ?id:string prop ->
  auth_server_id:string prop ->
  unit ->
  okta_auth_server_scopes

val yojson_of_okta_auth_server_scopes :
  okta_auth_server_scopes -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auth_server_id : string prop;
  id : string prop;
  scopes : scopes list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  auth_server_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  auth_server_id:string prop ->
  string ->
  t Tf_core.resource
