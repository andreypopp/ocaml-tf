(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_xray_group__insights_configuration
type aws_xray_group

val aws_xray_group :
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  filter_expression:string ->
  group_name:string ->
  insights_configuration:aws_xray_group__insights_configuration list ->
  string ->
  unit
