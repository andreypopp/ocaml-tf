(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_group

type t = private {
  arn: string prop;
  aws_account_id: string prop;
  description: string prop;
  group_name: string prop;
  id: string prop;
  namespace: string prop;
}

val aws_quicksight_group :
    ?aws_account_id:string prop ->
    ?description:string prop ->
    ?id:string prop ->
    ?namespace:string prop ->
    group_name:string prop ->
    string ->
    t

