(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_inspector_assessment_target

type t = private {
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_group_arn : string prop;
}

val aws_inspector_assessment_target :
  ?id:string prop ->
  ?resource_group_arn:string prop ->
  name:string prop ->
  string ->
  t
