(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securityhub_action_target

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  identifier : string prop;
  name : string prop;
}

val aws_securityhub_action_target :
  ?id:string prop ->
  description:string prop ->
  identifier:string prop ->
  name:string prop ->
  string ->
  t
