(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_api_cache

val aws_appsync_api_cache :
  ?at_rest_encryption_enabled:bool ->
  ?id:string ->
  ?transit_encryption_enabled:bool ->
  api_caching_behavior:string ->
  api_id:string ->
  ttl:float ->
  type_:string ->
  string ->
  unit
