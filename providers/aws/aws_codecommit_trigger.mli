(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type trigger

val trigger :
  ?branches:string prop list ->
  ?custom_data:string prop ->
  destination_arn:string prop ->
  events:string prop list ->
  name:string prop ->
  unit ->
  trigger

type aws_codecommit_trigger

val aws_codecommit_trigger :
  ?id:string prop ->
  repository_name:string prop ->
  trigger:trigger list ->
  unit ->
  aws_codecommit_trigger

val yojson_of_aws_codecommit_trigger : aws_codecommit_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  configuration_id : string prop;
  id : string prop;
  repository_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  repository_name:string prop ->
  trigger:trigger list ->
  string ->
  t

val make :
  ?id:string prop ->
  repository_name:string prop ->
  trigger:trigger list ->
  string ->
  t Tf_core.resource
