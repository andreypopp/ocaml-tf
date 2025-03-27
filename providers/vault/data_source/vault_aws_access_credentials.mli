(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_access_credentials

val vault_aws_access_credentials :
  ?id:string prop ->
  ?namespace:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?ttl:string prop ->
  ?type_:string prop ->
  backend:string prop ->
  role:string prop ->
  unit ->
  vault_aws_access_credentials

val yojson_of_vault_aws_access_credentials : vault_aws_access_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_key : string prop;
  backend : string prop;
  id : string prop;
  lease_duration : float prop;
  lease_id : string prop;
  lease_renewable : bool prop;
  lease_start_time : string prop;
  namespace : string prop;
  region : string prop;
  role : string prop;
  role_arn : string prop;
  secret_key : string prop;
  security_token : string prop;
  ttl : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?ttl:string prop ->
  ?type_:string prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?region:string prop ->
  ?role_arn:string prop ->
  ?ttl:string prop ->
  ?type_:string prop ->
  backend:string prop ->
  role:string prop ->
  string ->
  t Tf_core.resource
