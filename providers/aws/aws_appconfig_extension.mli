(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action_point__action

val action_point__action :
  ?description:string prop ->
  name:string prop ->
  role_arn:string prop ->
  uri:string prop ->
  unit ->
  action_point__action

type action_point

val action_point :
  point:string prop ->
  action:action_point__action list ->
  unit ->
  action_point

type parameter

val parameter :
  ?description:string prop ->
  ?required:bool prop ->
  name:string prop ->
  unit ->
  parameter

type aws_appconfig_extension

val aws_appconfig_extension :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action_point:action_point list ->
  parameter:parameter list ->
  unit ->
  aws_appconfig_extension

val yojson_of_aws_appconfig_extension :
  aws_appconfig_extension -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action_point:action_point list ->
  parameter:parameter list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  action_point:action_point list ->
  parameter:parameter list ->
  string ->
  t Tf_core.resource
