(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_dataview__segment_configurations
type aws_finspace_kx_dataview__timeouts
type aws_finspace_kx_dataview

val aws_finspace_kx_dataview :
  ?availability_zone_id:string prop ->
  ?changeset_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_finspace_kx_dataview__timeouts ->
  auto_update:bool prop ->
  az_mode:string prop ->
  database_name:string prop ->
  environment_id:string prop ->
  name:string prop ->
  segment_configurations:
    aws_finspace_kx_dataview__segment_configurations list ->
  string ->
  unit
