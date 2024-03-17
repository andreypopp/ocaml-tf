(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_conformance_pack__input_parameter
type aws_config_conformance_pack

val aws_config_conformance_pack :
  ?delivery_s3_bucket:string ->
  ?delivery_s3_key_prefix:string ->
  ?id:string ->
  ?template_body:string ->
  ?template_s3_uri:string ->
  name:string ->
  input_parameter:aws_config_conformance_pack__input_parameter list ->
  string ->
  unit
