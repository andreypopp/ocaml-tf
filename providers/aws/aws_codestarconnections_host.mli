(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_configuration

val vpc_configuration :
  ?tls_certificate:string prop ->
  security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  vpc_id:string prop ->
  unit ->
  vpc_configuration

type aws_codestarconnections_host

val aws_codestarconnections_host :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  provider_endpoint:string prop ->
  provider_type:string prop ->
  vpc_configuration:vpc_configuration list ->
  unit ->
  aws_codestarconnections_host

val yojson_of_aws_codestarconnections_host :
  aws_codestarconnections_host -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  provider_endpoint : string prop;
  provider_type : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  provider_endpoint:string prop ->
  provider_type:string prop ->
  vpc_configuration:vpc_configuration list ->
  string ->
  t
