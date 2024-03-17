(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_xray_group__insights_configuration
type aws_xray_group

val aws_xray_group :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  filter_expression:string prop ->
  group_name:string prop ->
  insights_configuration:aws_xray_group__insights_configuration list ->
  string ->
  unit
