(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_tracker

val aws_location_tracker :
  ?description:string ->
  ?id:string ->
  ?kms_key_id:string ->
  ?position_filtering:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  tracker_name:string ->
  string ->
  unit
