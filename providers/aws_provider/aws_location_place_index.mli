(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_place_index__data_source_configuration
type aws_location_place_index

val aws_location_place_index :
  ?description:string ->
  ?tags:(string * string) list ->
  data_source:string ->
  index_name:string ->
  data_source_configuration:
    aws_location_place_index__data_source_configuration list ->
  string ->
  unit
