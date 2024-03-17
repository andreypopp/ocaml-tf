(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_folder__permissions

type aws_quicksight_folder__timeouts

type aws_quicksight_folder

val aws_quicksight_folder :
    ?aws_account_id:string ->
    ?folder_type:string ->
    ?id:string ->
    ?name:string ->
    ?parent_folder_arn:string ->
    ?tags:(string * string) list ->
    ?tags_all:(string * string) list ->
    ?timeouts:aws_quicksight_folder__timeouts ->
    folder_id:string ->
    permissions:aws_quicksight_folder__permissions list ->
    string ->
    unit

