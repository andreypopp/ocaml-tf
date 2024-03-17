(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration
type aws_apprunner_vpc_ingress_connection

val aws_apprunner_vpc_ingress_connection :
  ?tags:(string * string) list ->
  name:string ->
  service_arn:string ->
  ingress_vpc_configuration:
    aws_apprunner_vpc_ingress_connection__ingress_vpc_configuration
    list ->
  string ->
  unit
