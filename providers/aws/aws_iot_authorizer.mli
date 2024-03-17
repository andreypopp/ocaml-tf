(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_authorizer

type t = private {
  arn : string prop;
  authorizer_function_arn : string prop;
  enable_caching_for_http : bool prop;
  id : string prop;
  name : string prop;
  signing_disabled : bool prop;
  status : string prop;
  token_key_name : string prop;
  token_signing_public_keys : (string * string) list prop;
}

val aws_iot_authorizer :
  ?enable_caching_for_http:bool prop ->
  ?id:string prop ->
  ?signing_disabled:bool prop ->
  ?status:string prop ->
  ?token_key_name:string prop ->
  ?token_signing_public_keys:(string * string prop) list ->
  authorizer_function_arn:string prop ->
  name:string prop ->
  string ->
  t
