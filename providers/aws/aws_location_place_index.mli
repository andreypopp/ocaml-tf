(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type data_source_configuration

val data_source_configuration :
  ?intended_use:string prop -> unit -> data_source_configuration

type aws_location_place_index

val aws_location_place_index :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_source:string prop ->
  index_name:string prop ->
  data_source_configuration:data_source_configuration list ->
  unit ->
  aws_location_place_index

val yojson_of_aws_location_place_index :
  aws_location_place_index -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  data_source : string prop;
  description : string prop;
  id : string prop;
  index_arn : string prop;
  index_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_source:string prop ->
  index_name:string prop ->
  data_source_configuration:data_source_configuration list ->
  string ->
  t
