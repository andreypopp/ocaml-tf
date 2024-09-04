(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_source_configuration

val data_source_configuration :
  ?intended_use:string prop -> unit -> data_source_configuration

type aws_location_place_index

val aws_location_place_index :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?data_source_configuration:data_source_configuration list ->
  data_source:string prop ->
  index_name:string prop ->
  unit ->
  aws_location_place_index

val yojson_of_aws_location_place_index :
  aws_location_place_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  index_arn : string prop;
  index_name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?data_source_configuration:data_source_configuration list ->
  data_source:string prop ->
  index_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?data_source_configuration:data_source_configuration list ->
  data_source:string prop ->
  index_name:string prop ->
  string ->
  t Tf_core.resource
