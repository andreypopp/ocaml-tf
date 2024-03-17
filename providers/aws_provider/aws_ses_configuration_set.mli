(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_configuration_set__delivery_options
type aws_ses_configuration_set__tracking_options
type aws_ses_configuration_set

val aws_ses_configuration_set :
  ?reputation_metrics_enabled:bool ->
  ?sending_enabled:bool ->
  name:string ->
  delivery_options:aws_ses_configuration_set__delivery_options list ->
  tracking_options:aws_ses_configuration_set__tracking_options list ->
  string ->
  unit
