

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_quicksight_folder_membership

val aws_quicksight_folder_membership :
    ?aws_account_id:string prop ->
    folder_id:string prop ->
    member_id:string prop ->
    member_type:string prop ->
    unit ->
    aws_quicksight_folder_membership

val yojson_of_aws_quicksight_folder_membership : aws_quicksight_folder_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  aws_account_id: string prop;
  folder_id: string prop;
  id: string prop;
  member_id: string prop;
  member_type: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    folder_id:string prop ->
    member_id:string prop ->
    member_type:string prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    folder_id:string prop ->
    member_id:string prop ->
    member_type:string prop ->
    string ->
    t Tf_core.resource

