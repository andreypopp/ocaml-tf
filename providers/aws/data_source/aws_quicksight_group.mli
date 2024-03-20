(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_quicksight_group

val aws_quicksight_group :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  group_name:string prop ->
  unit ->
  aws_quicksight_group

val yojson_of_aws_quicksight_group : aws_quicksight_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  aws_account_id : string prop;
  description : string prop;
  group_name : string prop;
  id : string prop;
  namespace : string prop;
  principal_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  group_name:string prop ->
  string ->
  t

val make :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  group_name:string prop ->
  string ->
  t Tf_core.resource
