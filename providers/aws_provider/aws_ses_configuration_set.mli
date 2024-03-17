(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_configuration_set__delivery_options
type aws_ses_configuration_set__tracking_options
type aws_ses_configuration_set

type t = private {
  arn : string prop;
  id : string prop;
  last_fresh_start : string prop;
  name : string prop;
  reputation_metrics_enabled : bool prop;
  sending_enabled : bool prop;
}

val aws_ses_configuration_set :
  ?id:string prop ->
  ?reputation_metrics_enabled:bool prop ->
  ?sending_enabled:bool prop ->
  name:string prop ->
  delivery_options:aws_ses_configuration_set__delivery_options list ->
  tracking_options:aws_ses_configuration_set__tracking_options list ->
  string ->
  t
