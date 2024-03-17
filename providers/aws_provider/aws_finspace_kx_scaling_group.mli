(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_scaling_group__timeouts
type aws_finspace_kx_scaling_group

val aws_finspace_kx_scaling_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_finspace_kx_scaling_group__timeouts ->
  availability_zone_id:string ->
  environment_id:string ->
  host_type:string ->
  name:string ->
  string ->
  unit
