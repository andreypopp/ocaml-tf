(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_medialive_multiplex__multiplex_settings
type aws_medialive_multiplex__timeouts
type aws_medialive_multiplex

val aws_medialive_multiplex :
  ?start_multiplex:bool ->
  ?tags:(string * string) list ->
  ?timeouts:aws_medialive_multiplex__timeouts ->
  availability_zones:string list ->
  name:string ->
  multiplex_settings:aws_medialive_multiplex__multiplex_settings list ->
  string ->
  unit
