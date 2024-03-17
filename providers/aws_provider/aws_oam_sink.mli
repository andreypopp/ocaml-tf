(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_oam_sink__timeouts
type aws_oam_sink

val aws_oam_sink :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_oam_sink__timeouts ->
  name:string prop ->
  string ->
  unit
