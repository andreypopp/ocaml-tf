(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appconfig_extension__action_point__action
type aws_appconfig_extension__action_point
type aws_appconfig_extension__parameter
type aws_appconfig_extension

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val aws_appconfig_extension :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action_point:aws_appconfig_extension__action_point list ->
  parameter:aws_appconfig_extension__parameter list ->
  string ->
  t
