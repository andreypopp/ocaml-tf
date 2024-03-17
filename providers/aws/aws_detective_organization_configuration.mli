(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_detective_organization_configuration

type t = private {
  auto_enable : bool prop;
  graph_arn : string prop;
  id : string prop;
}

val aws_detective_organization_configuration :
  ?id:string prop ->
  auto_enable:bool prop ->
  graph_arn:string prop ->
  string ->
  t
