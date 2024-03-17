(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_location_tracker

val aws_location_tracker :
  ?description:string prop ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?position_filtering:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  tracker_name:string prop ->
  string ->
  unit
