(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_map__configuration
type aws_location_map

val aws_location_map :
  ?description:string ->
  ?tags:(string * string) list ->
  map_name:string ->
  configuration:aws_location_map__configuration list ->
  string ->
  unit
