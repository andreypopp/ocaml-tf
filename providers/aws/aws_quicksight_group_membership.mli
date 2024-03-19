(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_quicksight_group_membership

val aws_quicksight_group_membership :
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?namespace:string prop ->
    group_name:string prop ->
    member_name:string prop ->
    unit ->
    aws_quicksight_group_membership

val yojson_of_aws_quicksight_group_membership : aws_quicksight_group_membership -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  group_name: string prop;
  id: string prop;
  member_name: string prop;
  namespace: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?id:string prop ->
    ?namespace:string prop ->
    group_name:string prop ->
    member_name:string prop ->
    string ->
    t

