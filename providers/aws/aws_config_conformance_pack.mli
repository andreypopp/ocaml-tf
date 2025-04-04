(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type input_parameter

val input_parameter :
  parameter_name:string prop ->
  parameter_value:string prop ->
  unit ->
  input_parameter

type aws_config_conformance_pack

val aws_config_conformance_pack :
  ?delivery_s3_bucket:string prop ->
  ?delivery_s3_key_prefix:string prop ->
  ?id:string prop ->
  ?template_body:string prop ->
  ?template_s3_uri:string prop ->
  name:string prop ->
  input_parameter:input_parameter list ->
  unit ->
  aws_config_conformance_pack

val yojson_of_aws_config_conformance_pack :
  aws_config_conformance_pack -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  delivery_s3_bucket : string prop;
  delivery_s3_key_prefix : string prop;
  id : string prop;
  name : string prop;
  template_body : string prop;
  template_s3_uri : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?delivery_s3_bucket:string prop ->
  ?delivery_s3_key_prefix:string prop ->
  ?id:string prop ->
  ?template_body:string prop ->
  ?template_s3_uri:string prop ->
  name:string prop ->
  input_parameter:input_parameter list ->
  string ->
  t

val make :
  ?delivery_s3_bucket:string prop ->
  ?delivery_s3_key_prefix:string prop ->
  ?id:string prop ->
  ?template_body:string prop ->
  ?template_s3_uri:string prop ->
  name:string prop ->
  input_parameter:input_parameter list ->
  string ->
  t Tf_core.resource
