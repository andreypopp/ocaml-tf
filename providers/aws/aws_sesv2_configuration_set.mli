(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_sesv2_configuration_set__delivery_options
type aws_sesv2_configuration_set__reputation_options
type aws_sesv2_configuration_set__sending_options
type aws_sesv2_configuration_set__suppression_options
type aws_sesv2_configuration_set__tracking_options
type aws_sesv2_configuration_set__vdm_options__dashboard_options
type aws_sesv2_configuration_set__vdm_options__guardian_options
type aws_sesv2_configuration_set__vdm_options
type aws_sesv2_configuration_set

type t = private {
  arn : string prop;
  configuration_set_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_sesv2_configuration_set :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  configuration_set_name:string prop ->
  delivery_options:aws_sesv2_configuration_set__delivery_options list ->
  reputation_options:
    aws_sesv2_configuration_set__reputation_options list ->
  sending_options:aws_sesv2_configuration_set__sending_options list ->
  suppression_options:
    aws_sesv2_configuration_set__suppression_options list ->
  tracking_options:aws_sesv2_configuration_set__tracking_options list ->
  vdm_options:aws_sesv2_configuration_set__vdm_options list ->
  string ->
  t
