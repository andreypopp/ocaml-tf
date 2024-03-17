(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_dataview__segment_configurations
type aws_finspace_kx_dataview__timeouts
type aws_finspace_kx_dataview

val aws_finspace_kx_dataview :
  ?availability_zone_id:string ->
  ?changeset_id:string ->
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_finspace_kx_dataview__timeouts ->
  auto_update:bool ->
  az_mode:string ->
  database_name:string ->
  environment_id:string ->
  name:string ->
  segment_configurations:
    aws_finspace_kx_dataview__segment_configurations list ->
  string ->
  unit
