(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_oam_link__timeouts
type aws_oam_link

val aws_oam_link :
  ?tags:(string * string) list ->
  ?timeouts:aws_oam_link__timeouts ->
  label_template:string ->
  resource_types:string list ->
  sink_identifier:string ->
  string ->
  unit
