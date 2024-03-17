(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_place_index__data_source_configuration
type aws_location_place_index

val aws_location_place_index :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_source:string prop ->
  index_name:string prop ->
  data_source_configuration:
    aws_location_place_index__data_source_configuration list ->
  string ->
  unit
