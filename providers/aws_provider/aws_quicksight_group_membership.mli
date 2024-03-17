(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_group_membership

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  group_name: string prop;
  id: string prop;
  member_name: string prop;
  namespace: string prop;
}

val aws_quicksight_group_membership :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?namespace:string prop ->
    group_name:string prop ->
    member_name:string prop ->
    string ->
    t

