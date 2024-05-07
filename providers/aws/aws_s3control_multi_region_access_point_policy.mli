(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type details

val details :
  name:string prop -> policy:string prop -> unit -> details

type timeouts

val timeouts :
  ?create:string prop -> ?update:string prop -> unit -> timeouts

type aws_s3control_multi_region_access_point_policy

val aws_s3control_multi_region_access_point_policy :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  details:details list ->
  unit ->
  aws_s3control_multi_region_access_point_policy

val yojson_of_aws_s3control_multi_region_access_point_policy :
  aws_s3control_multi_region_access_point_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  established : string prop;
  id : string prop;
  proposed : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  details:details list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  details:details list ->
  string ->
  t Tf_core.resource
