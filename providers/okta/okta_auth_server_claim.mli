(** Creates an Authorization Server Claim. This resource allows you to create and configure an Authorization Server Claim. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_claim

val okta_auth_server_claim :
  ?always_include_in_token:bool prop ->
  ?group_filter_type:string prop ->
  ?id:string prop ->
  ?scopes:string prop list ->
  ?status:string prop ->
  ?value_type:string prop ->
  auth_server_id:string prop ->
  claim_type:string prop ->
  name:string prop ->
  value:string prop ->
  unit ->
  okta_auth_server_claim

val yojson_of_okta_auth_server_claim : okta_auth_server_claim -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  always_include_in_token : bool prop;
  auth_server_id : string prop;
  claim_type : string prop;
  group_filter_type : string prop;
  id : string prop;
  name : string prop;
  scopes : string list prop;
  status : string prop;
  value : string prop;
  value_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?always_include_in_token:bool prop ->
  ?group_filter_type:string prop ->
  ?id:string prop ->
  ?scopes:string prop list ->
  ?status:string prop ->
  ?value_type:string prop ->
  auth_server_id:string prop ->
  claim_type:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t

val make :
  ?always_include_in_token:bool prop ->
  ?group_filter_type:string prop ->
  ?id:string prop ->
  ?scopes:string prop list ->
  ?status:string prop ->
  ?value_type:string prop ->
  auth_server_id:string prop ->
  claim_type:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t Tf_core.resource
