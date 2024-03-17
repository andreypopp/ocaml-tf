(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_folder_membership

type t = private {
  aws_account_id: string prop;
  folder_id: string prop;
  id: string prop;
  member_id: string prop;
  member_type: string prop;
}

val aws_quicksight_folder_membership :
    ?aws_account_id:string prop ->
    folder_id:string prop ->
    member_id:string prop ->
    member_type:string prop ->
    string ->
    t

