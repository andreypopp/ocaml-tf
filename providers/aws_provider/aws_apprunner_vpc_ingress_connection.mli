(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration
type aws_apprunner_vpc_ingress_connection

val aws_apprunner_vpc_ingress_connection :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  service_arn:string prop ->
  ingress_vpc_configuration:
    aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration
    list ->
  string ->
  unit
