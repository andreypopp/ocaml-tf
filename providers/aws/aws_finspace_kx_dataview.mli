(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type segment_configurations

val segment_configurations :
  ?on_demand:bool prop ->
  db_paths:string prop list ->
  volume_name:string prop ->
  unit ->
  segment_configurations

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_finspace_kx_dataview

val aws_finspace_kx_dataview :
  ?availability_zone_id:string prop ->
  ?changeset_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?read_write:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?segment_configurations:segment_configurations list ->
  ?timeouts:timeouts ->
  auto_update:bool prop ->
  az_mode:string prop ->
  database_name:string prop ->
  environment_id:string prop ->
  name:string prop ->
  unit ->
  aws_finspace_kx_dataview

val yojson_of_aws_finspace_kx_dataview :
  aws_finspace_kx_dataview -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  read_write : bool prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?availability_zone_id:string prop ->
  ?changeset_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?read_write:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?segment_configurations:segment_configurations list ->
  ?timeouts:timeouts ->
  auto_update:bool prop ->
  az_mode:string prop ->
  database_name:string prop ->
  environment_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?availability_zone_id:string prop ->
  ?changeset_id:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?read_write:bool prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?segment_configurations:segment_configurations list ->
  ?timeouts:timeouts ->
  auto_update:bool prop ->
  az_mode:string prop ->
  database_name:string prop ->
  environment_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
