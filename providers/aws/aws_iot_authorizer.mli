(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iot_authorizer

val aws_iot_authorizer :
  ?enable_caching_for_http:bool prop ->
  ?id:string prop ->
  ?signing_disabled:bool prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?token_key_name:string prop ->
  ?token_signing_public_keys:string prop Tf_core.assoc ->
  authorizer_function_arn:string prop ->
  name:string prop ->
  unit ->
  aws_iot_authorizer

val yojson_of_aws_iot_authorizer : aws_iot_authorizer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  authorizer_function_arn : string prop;
  enable_caching_for_http : bool prop;
  id : string prop;
  name : string prop;
  signing_disabled : bool prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  token_key_name : string prop;
  token_signing_public_keys : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?enable_caching_for_http:bool prop ->
  ?id:string prop ->
  ?signing_disabled:bool prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?token_key_name:string prop ->
  ?token_signing_public_keys:string prop Tf_core.assoc ->
  authorizer_function_arn:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?enable_caching_for_http:bool prop ->
  ?id:string prop ->
  ?signing_disabled:bool prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?token_key_name:string prop ->
  ?token_signing_public_keys:string prop Tf_core.assoc ->
  authorizer_function_arn:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
