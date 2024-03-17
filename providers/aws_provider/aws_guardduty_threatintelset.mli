(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_threatintelset

val aws_guardduty_threatintelset :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  activate:bool prop ->
  detector_id:string prop ->
  format:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
