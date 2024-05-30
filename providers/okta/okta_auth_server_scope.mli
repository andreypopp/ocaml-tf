(** Creates an Authorization Server Scope. This resource allows you to create and configure an Authorization Server Scope. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_scope

val okta_auth_server_scope :
  ?consent:string prop ->
  ?default:bool prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?metadata_publish:string prop ->
  ?optional:bool prop ->
  auth_server_id:string prop ->
  name:string prop ->
  unit ->
  okta_auth_server_scope

val yojson_of_okta_auth_server_scope : okta_auth_server_scope -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auth_server_id : string prop;
  consent : string prop;
  default : bool prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  metadata_publish : string prop;
  name : string prop;
  optional : bool prop;
  system : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?consent:string prop ->
  ?default:bool prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?metadata_publish:string prop ->
  ?optional:bool prop ->
  auth_server_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?consent:string prop ->
  ?default:bool prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?metadata_publish:string prop ->
  ?optional:bool prop ->
  auth_server_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
