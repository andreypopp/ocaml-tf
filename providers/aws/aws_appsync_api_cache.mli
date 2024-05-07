(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appsync_api_cache

val aws_appsync_api_cache :
  ?at_rest_encryption_enabled:bool prop ->
  ?id:string prop ->
  ?transit_encryption_enabled:bool prop ->
  api_caching_behavior:string prop ->
  api_id:string prop ->
  ttl:float prop ->
  type_:string prop ->
  unit ->
  aws_appsync_api_cache

val yojson_of_aws_appsync_api_cache : aws_appsync_api_cache -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_caching_behavior : string prop;
  api_id : string prop;
  at_rest_encryption_enabled : bool prop;
  id : string prop;
  transit_encryption_enabled : bool prop;
  ttl : float prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?at_rest_encryption_enabled:bool prop ->
  ?id:string prop ->
  ?transit_encryption_enabled:bool prop ->
  api_caching_behavior:string prop ->
  api_id:string prop ->
  ttl:float prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?at_rest_encryption_enabled:bool prop ->
  ?id:string prop ->
  ?transit_encryption_enabled:bool prop ->
  api_caching_behavior:string prop ->
  api_id:string prop ->
  ttl:float prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
