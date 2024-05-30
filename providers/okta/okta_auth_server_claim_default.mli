(** Configures Default Authorization Server Claim.
This resource allows you to configure Default Authorization Server Claims. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_auth_server_claim_default

val okta_auth_server_claim_default :
  ?always_include_in_token:bool prop ->
  ?id:string prop ->
  ?value:string prop ->
  auth_server_id:string prop ->
  name:string prop ->
  unit ->
  okta_auth_server_claim_default

val yojson_of_okta_auth_server_claim_default :
  okta_auth_server_claim_default -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  always_include_in_token : bool prop;
  auth_server_id : string prop;
  claim_type : string prop;
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
  ?id:string prop ->
  ?value:string prop ->
  auth_server_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?always_include_in_token:bool prop ->
  ?id:string prop ->
  ?value:string prop ->
  auth_server_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
