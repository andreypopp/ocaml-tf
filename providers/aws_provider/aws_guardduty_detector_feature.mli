(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_detector_feature__additional_configuration
type aws_guardduty_detector_feature

val aws_guardduty_detector_feature :
  ?id:string prop ->
  detector_id:string prop ->
  name:string prop ->
  status:string prop ->
  additional_configuration:
    aws_guardduty_detector_feature__additional_configuration list ->
  string ->
  unit
