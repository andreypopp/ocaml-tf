(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_authorizer

val aws_iot_authorizer :
  ?enable_caching_for_http:bool ->
  ?signing_disabled:bool ->
  ?status:string ->
  ?token_key_name:string ->
  ?token_signing_public_keys:(string * string) list ->
  authorizer_function_arn:string ->
  name:string ->
  string ->
  unit
