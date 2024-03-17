(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_oam_link__timeouts
type aws_oam_link

val aws_oam_link :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_oam_link__timeouts ->
  label_template:string prop ->
  resource_types:string prop list ->
  sink_identifier:string prop ->
  string ->
  unit
