(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_publishing_destination

val aws_guardduty_publishing_destination :
  ?destination_type:string ->
  destination_arn:string ->
  detector_id:string ->
  kms_key_arn:string ->
  string ->
  unit
