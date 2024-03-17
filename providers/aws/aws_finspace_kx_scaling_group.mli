(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_scaling_group__timeouts
type aws_finspace_kx_scaling_group

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

val aws_finspace_kx_scaling_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_finspace_kx_scaling_group__timeouts ->
  availability_zone_id:string prop ->
  environment_id:string prop ->
  host_type:string prop ->
  name:string prop ->
  string ->
  t
