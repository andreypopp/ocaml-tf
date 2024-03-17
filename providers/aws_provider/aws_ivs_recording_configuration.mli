(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ivs_recording_configuration__destination_configuration__s3
type aws_ivs_recording_configuration__destination_configuration
type aws_ivs_recording_configuration__thumbnail_configuration
type aws_ivs_recording_configuration__timeouts
type aws_ivs_recording_configuration

val aws_ivs_recording_configuration :
  ?tags:(string * string) list ->
  ?timeouts:aws_ivs_recording_configuration__timeouts ->
  destination_configuration:
    aws_ivs_recording_configuration__destination_configuration list ->
  thumbnail_configuration:
    aws_ivs_recording_configuration__thumbnail_configuration list ->
  string ->
  unit
