(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_login

val vault_aws_auth_backend_login :
  ?backend:string prop ->
  ?iam_http_request_method:string prop ->
  ?iam_request_body:string prop ->
  ?iam_request_headers:string prop ->
  ?iam_request_url:string prop ->
  ?id:string prop ->
  ?identity:string prop ->
  ?namespace:string prop ->
  ?nonce:string prop ->
  ?pkcs7:string prop ->
  ?role:string prop ->
  ?signature:string prop ->
  unit ->
  vault_aws_auth_backend_login

val yojson_of_vault_aws_auth_backend_login : vault_aws_auth_backend_login -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accessor : string prop;
  auth_type : string prop;
  backend : string prop;
  client_token : string prop;
  iam_http_request_method : string prop;
  iam_request_body : string prop;
  iam_request_headers : string prop;
  iam_request_url : string prop;
  id : string prop;
  identity : string prop;
  lease_duration : float prop;
  lease_start_time : string prop;
  metadata : string Tf_core.assoc prop;
  namespace : string prop;
  nonce : string prop;
  pkcs7 : string prop;
  policies : string list prop;
  renewable : bool prop;
  role : string prop;
  signature : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?iam_http_request_method:string prop ->
  ?iam_request_body:string prop ->
  ?iam_request_headers:string prop ->
  ?iam_request_url:string prop ->
  ?id:string prop ->
  ?identity:string prop ->
  ?namespace:string prop ->
  ?nonce:string prop ->
  ?pkcs7:string prop ->
  ?role:string prop ->
  ?signature:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?iam_http_request_method:string prop ->
  ?iam_request_body:string prop ->
  ?iam_request_headers:string prop ->
  ?iam_request_url:string prop ->
  ?id:string prop ->
  ?identity:string prop ->
  ?namespace:string prop ->
  ?nonce:string prop ->
  ?pkcs7:string prop ->
  ?role:string prop ->
  ?signature:string prop ->
  string ->
  t Tf_core.resource
