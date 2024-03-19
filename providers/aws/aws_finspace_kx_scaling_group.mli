(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_finspace_kx_scaling_group

val aws_finspace_kx_scaling_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  availability_zone_id:string prop ->
  environment_id:string prop ->
  host_type:string prop ->
  name:string prop ->
  unit ->
  aws_finspace_kx_scaling_group

val yojson_of_aws_finspace_kx_scaling_group :
  aws_finspace_kx_scaling_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  availability_zone_id : string prop;
  clusters : string list prop;
  created_timestamp : string prop;
  environment_id : string prop;
  host_type : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  status_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  availability_zone_id:string prop ->
  environment_id:string prop ->
  host_type:string prop ->
  name:string prop ->
  string ->
  t
