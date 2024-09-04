

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type permissions

val permissions :
    actions:string  prop list ->
    principal:string prop ->
    unit ->
    permissions

type timeouts

val timeouts :
    ?create:string prop ->
    ?delete:string prop ->
    ?read:string prop ->
    ?update:string prop ->
    unit ->
    timeouts

type aws_quicksight_folder

val aws_quicksight_folder :
    ?aws_account_id:string prop ->
    ?folder_type:string prop ->
    ?id:string prop ->
    ?name:string prop ->
    ?parent_folder_arn:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ?permissions:permissions list ->
    ?timeouts:timeouts ->
    folder_id:string prop ->
    unit ->
    aws_quicksight_folder

val yojson_of_aws_quicksight_folder : aws_quicksight_folder -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  arn: string prop;
  aws_account_id: string prop;
  created_time: string prop;
  folder_id: string prop;
  folder_path: string list prop;
  folder_type: string prop;
  id: string prop;
  last_updated_time: string prop;
  name: string prop;
  parent_folder_arn: string prop;
  tags: string Tf_core.assoc prop;
  tags_all: string Tf_core.assoc prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?folder_type:string prop ->
    ?id:string prop ->
    ?name:string prop ->
    ?parent_folder_arn:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ?permissions:permissions list ->
    ?timeouts:timeouts ->
    folder_id:string prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    ?folder_type:string prop ->
    ?id:string prop ->
    ?name:string prop ->
    ?parent_folder_arn:string prop ->
    ?tags:string  prop Tf_core.assoc ->
    ?tags_all:string  prop Tf_core.assoc ->
    ?permissions:permissions list ->
    ?timeouts:timeouts ->
    folder_id:string prop ->
    string ->
    t Tf_core.resource

