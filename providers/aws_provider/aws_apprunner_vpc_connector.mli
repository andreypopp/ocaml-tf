(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_vpc_connector

val aws_apprunner_vpc_connector :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  security_groups:string list ->
  subnets:string list ->
  vpc_connector_name:string ->
  string ->
  unit
