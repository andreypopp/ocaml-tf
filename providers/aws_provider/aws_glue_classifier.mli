(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_glue_classifier__csv_classifier
type aws_glue_classifier__grok_classifier
type aws_glue_classifier__json_classifier
type aws_glue_classifier__xml_classifier
type aws_glue_classifier

val aws_glue_classifier :
  ?id:string ->
  name:string ->
  csv_classifier:aws_glue_classifier__csv_classifier list ->
  grok_classifier:aws_glue_classifier__grok_classifier list ->
  json_classifier:aws_glue_classifier__json_classifier list ->
  xml_classifier:aws_glue_classifier__xml_classifier list ->
  string ->
  unit
