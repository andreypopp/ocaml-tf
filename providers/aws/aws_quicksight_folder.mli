(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_folder__permissions
type aws_quicksight_folder__timeouts
type aws_quicksight_folder

type t = private {
  arn : string prop;
  aws_account_id : string prop;
  created_time : string prop;
  folder_id : string prop;
  folder_path : string list prop;
  folder_type : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  parent_folder_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_quicksight_folder :
  ?aws_account_id:string prop ->
  ?folder_type:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?parent_folder_arn:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_quicksight_folder__timeouts ->
  folder_id:string prop ->
  permissions:aws_quicksight_folder__permissions list ->
  string ->
  t
