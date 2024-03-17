(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_config_organization_conformance_pack__input_parameter
type aws_config_organization_conformance_pack__timeouts
type aws_config_organization_conformance_pack

type t = private {
  arn : string prop;
  delivery_s3_bucket : string prop;
  delivery_s3_key_prefix : string prop;
  excluded_accounts : string list prop;
  id : string prop;
  name : string prop;
  template_body : string prop;
  template_s3_uri : string prop;
}

val aws_config_organization_conformance_pack :
  ?delivery_s3_bucket:string prop ->
  ?delivery_s3_key_prefix:string prop ->
  ?excluded_accounts:string prop list ->
  ?id:string prop ->
  ?template_body:string prop ->
  ?template_s3_uri:string prop ->
  ?timeouts:aws_config_organization_conformance_pack__timeouts ->
  name:string prop ->
  input_parameter:
    aws_config_organization_conformance_pack__input_parameter list ->
  string ->
  t
