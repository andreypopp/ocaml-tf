(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_finspace_kx_dataview__segment_configurations
type aws_finspace_kx_dataview__timeouts
type aws_finspace_kx_dataview

type t = private {
  arn : string prop;
  auto_update : bool prop;
  availability_zone_id : string prop;
  az_mode : string prop;
  changeset_id : string prop;
  created_timestamp : string prop;
  database_name : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  last_modified_timestamp : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
