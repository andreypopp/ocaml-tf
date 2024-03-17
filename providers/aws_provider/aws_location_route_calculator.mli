(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_route_calculator__timeouts
type aws_location_route_calculator

val aws_location_route_calculator :
  ?description:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_location_route_calculator__timeouts ->
  calculator_name:string ->
  data_source:string ->
  string ->
  unit
