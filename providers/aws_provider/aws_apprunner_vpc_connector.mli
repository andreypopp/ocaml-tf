(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_vpc_connector

val aws_apprunner_vpc_connector :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  string ->
  unit
