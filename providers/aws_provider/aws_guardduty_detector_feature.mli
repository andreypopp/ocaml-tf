(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_detector_feature__additional_configuration
type aws_guardduty_detector_feature

val aws_guardduty_detector_feature :
  detector_id:string ->
  name:string ->
  status:string ->
  additional_configuration:
    aws_guardduty_detector_feature__additional_configuration list ->
  string ->
  unit
