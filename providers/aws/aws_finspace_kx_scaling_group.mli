(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  availability_zone_id:string prop ->
  environment_id:string prop ->
  host_type:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  availability_zone_id:string prop ->
  environment_id:string prop ->
  host_type:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
