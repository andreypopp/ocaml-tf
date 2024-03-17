(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_threatintelset

val aws_guardduty_threatintelset :
  ?tags:(string * string) list ->
  activate:bool ->
  detector_id:string ->
  format:string ->
  location:string ->
  name:string ->
  string ->
  unit
