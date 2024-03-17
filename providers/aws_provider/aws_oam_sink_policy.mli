(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_oam_sink_policy__timeouts
type aws_oam_sink_policy

val aws_oam_sink_policy :
  ?id:string prop ->
  ?timeouts:aws_oam_sink_policy__timeouts ->
  policy:string prop ->
  sink_identifier:string prop ->
  string ->
  unit
