(** Get a list of authorization server claims from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type claims = {
  always_include_in_token : bool prop;
      (** always_include_in_token *)
  claim_type : string prop;  (** claim_type *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** scopes *)
  status : string prop;  (** status *)
  value : string prop;  (** value *)
  value_type : string prop;  (** value_type *)
}

type okta_auth_server_claims

val okta_auth_server_claims :
  ?id:string prop ->
  auth_server_id:string prop ->
  unit ->
  okta_auth_server_claims

val yojson_of_okta_auth_server_claims :
  okta_auth_server_claims -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auth_server_id : string prop;
  claims : claims list prop;
  id : string prop;
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
