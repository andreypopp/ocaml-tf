(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_rekognition_project__timeouts
type aws_rekognition_project

type t = private {
  arn : string prop;
  auto_update : string prop;
  feature : string prop;
  id : string prop;
  name : string prop;
}

val aws_rekognition_project :
  ?auto_update:string prop ->
  ?feature:string prop ->
  ?timeouts:aws_rekognition_project__timeouts ->
  name:string prop ->
  string ->
  t
