(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_route_calculator__timeouts
type aws_location_route_calculator

val aws_location_route_calculator :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_location_route_calculator__timeouts ->
  calculator_name:string prop ->
  data_source:string prop ->
  string ->
  unit
