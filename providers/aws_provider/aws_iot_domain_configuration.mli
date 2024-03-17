(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_domain_configuration__authorizer_config
type aws_iot_domain_configuration__tls_config
type aws_iot_domain_configuration

val aws_iot_domain_configuration :
  ?domain_name:string ->
  ?id:string ->
  ?server_certificate_arns:string list ->
  ?service_type:string ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?validation_certificate_arn:string ->
  name:string ->
  authorizer_config:
    aws_iot_domain_configuration__authorizer_config list ->
  tls_config:aws_iot_domain_configuration__tls_config list ->
  string ->
  unit
