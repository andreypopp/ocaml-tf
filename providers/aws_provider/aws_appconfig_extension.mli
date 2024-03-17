(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_extension__action_point__action
type aws_appconfig_extension__action_point
type aws_appconfig_extension__parameter
type aws_appconfig_extension

val aws_appconfig_extension :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action_point:aws_appconfig_extension__action_point list ->
  parameter:aws_appconfig_extension__parameter list ->
  string ->
  unit
