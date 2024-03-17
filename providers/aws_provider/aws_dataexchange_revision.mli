(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dataexchange_revision

val aws_dataexchange_revision :
  ?comment:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data_set_id:string prop ->
  string ->
  unit
