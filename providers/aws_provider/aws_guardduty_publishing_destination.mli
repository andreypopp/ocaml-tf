(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_publishing_destination

val aws_guardduty_publishing_destination :
  ?destination_type:string prop ->
  ?id:string prop ->
  destination_arn:string prop ->
  detector_id:string prop ->
  kms_key_arn:string prop ->
  string ->
  unit
