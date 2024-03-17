(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appsync_api_cache

val aws_appsync_api_cache :
  ?at_rest_encryption_enabled:bool prop ->
  ?id:string prop ->
  ?transit_encryption_enabled:bool prop ->
  api_caching_behavior:string prop ->
  api_id:string prop ->
  ttl:float prop ->
  type_:string prop ->
  string ->
  unit
