(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_cert

val vault_aws_auth_backend_cert :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?type_:string prop ->
  aws_public_cert:string prop ->
  cert_name:string prop ->
  unit ->
  vault_aws_auth_backend_cert

val yojson_of_vault_aws_auth_backend_cert : vault_aws_auth_backend_cert -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  aws_public_cert : string prop;
  backend : string prop;
  cert_name : string prop;
  id : string prop;
  namespace : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?type_:string prop ->
  aws_public_cert:string prop ->
  cert_name:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?type_:string prop ->
  aws_public_cert:string prop ->
  cert_name:string prop ->
  string ->
  t Tf_core.resource
