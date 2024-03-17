(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_map__configuration
type aws_location_map

val aws_location_map :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  map_name:string prop ->
  configuration:aws_location_map__configuration list ->
  string ->
  unit
