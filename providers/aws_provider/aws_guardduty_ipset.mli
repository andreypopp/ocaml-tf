(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_ipset

val aws_guardduty_ipset :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  activate:bool ->
  detector_id:string ->
  format:string ->
  location:string ->
  name:string ->
  string ->
  unit
