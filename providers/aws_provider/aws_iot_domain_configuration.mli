(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_domain_configuration__authorizer_config
type aws_iot_domain_configuration__tls_config
type aws_iot_domain_configuration

val aws_iot_domain_configuration :
  ?domain_name:string prop ->
  ?id:string prop ->
  ?server_certificate_arns:string prop list ->
  ?service_type:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?validation_certificate_arn:string prop ->
  name:string prop ->
  authorizer_config:
    aws_iot_domain_configuration__authorizer_config list ->
  tls_config:aws_iot_domain_configuration__tls_config list ->
  string ->
  unit
