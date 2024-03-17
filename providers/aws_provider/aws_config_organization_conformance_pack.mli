(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_organization_conformance_pack__input_parameter
type aws_config_organization_conformance_pack__timeouts
type aws_config_organization_conformance_pack

val aws_config_organization_conformance_pack :
  ?delivery_s3_bucket:string ->
  ?delivery_s3_key_prefix:string ->
  ?excluded_accounts:string list ->
  ?id:string ->
  ?template_body:string ->
  ?template_s3_uri:string ->
  ?timeouts:aws_config_organization_conformance_pack__timeouts ->
  name:string ->
  input_parameter:
    aws_config_organization_conformance_pack__input_parameter list ->
  string ->
  unit
