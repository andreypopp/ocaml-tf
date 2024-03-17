(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_apprunner_vpc_connector

type t = private {
  arn : string prop;
  id : string prop;
  security_groups : string list prop;
  status : string prop;
  subnets : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_connector_name : string prop;
  vpc_connector_revision : float prop;
}

val aws_apprunner_vpc_connector :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  security_groups:string prop list ->
  subnets:string prop list ->
  vpc_connector_name:string prop ->
  string ->
  t
