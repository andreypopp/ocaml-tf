(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type data_source_configuration = {
  intended_use : string prop;  (** intended_use *)
}

type aws_location_place_index

val aws_location_place_index :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
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
  data_source_configuration : data_source_configuration list prop;
  description : string prop;
  id : string prop;
  index_arn : string prop;
  index_name : string prop;
  tags : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  index_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  index_name:string prop ->
  string ->
  t Tf_core.resource
