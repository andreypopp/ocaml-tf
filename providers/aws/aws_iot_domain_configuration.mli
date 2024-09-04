(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type authorizer_config

val authorizer_config :
  ?allow_authorizer_override:bool prop ->
  ?default_authorizer_name:string prop ->
  unit ->
  authorizer_config

type tls_config

val tls_config : ?security_policy:string prop -> unit -> tls_config

type aws_iot_domain_configuration

val aws_iot_domain_configuration :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?server_certificate_arns:string prop list ->
  ?service_type:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?validation_certificate_arn:string prop ->
  ?authorizer_config:authorizer_config list ->
  ?tls_config:tls_config list ->
  name:string prop ->
  unit ->
  aws_iot_domain_configuration

val yojson_of_aws_iot_domain_configuration :
  aws_iot_domain_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  domain_name : string prop;
  domain_type : string prop;
  id : string prop;
  name : string prop;
  server_certificate_arns : string list prop;
  service_type : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  validation_certificate_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?domain_name:string prop ->
  ?id:string prop ->
  ?server_certificate_arns:string prop list ->
  ?service_type:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?validation_certificate_arn:string prop ->
  ?authorizer_config:authorizer_config list ->
  ?tls_config:tls_config list ->
  name:string prop ->
  string ->
  t

val make :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?server_certificate_arns:string prop list ->
  ?service_type:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?validation_certificate_arn:string prop ->
  ?authorizer_config:authorizer_config list ->
  ?tls_config:tls_config list ->
  name:string prop ->
  string ->
  t Tf_core.resource
