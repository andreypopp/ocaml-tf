(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codepipeline_webhook__authentication_configuration
type aws_codepipeline_webhook__filter
type aws_codepipeline_webhook

type t = private {
  arn : string prop;
  authentication : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_action : string prop;
  target_pipeline : string prop;
  url : string prop;
}

val aws_codepipeline_webhook :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  authentication:string prop ->
  name:string prop ->
  target_action:string prop ->
  target_pipeline:string prop ->
  authentication_configuration:
    aws_codepipeline_webhook__authentication_configuration list ->
  filter:aws_codepipeline_webhook__filter list ->
  string ->
  t
