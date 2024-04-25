

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identities

val identities :
    ?group:string  prop list ->
    ?user:string  prop list ->
    unit ->
    identities

type aws_quicksight_iam_policy_assignment

val aws_quicksight_iam_policy_assignment :
    ?aws_account_id:string prop ->
    ?namespace:string prop ->
    ?policy_arn:string prop ->
    ?identities:identities list ->
    assignment_name:string prop ->
    assignment_status:string prop ->
    unit ->
    aws_quicksight_iam_policy_assignment

val yojson_of_aws_quicksight_iam_policy_assignment : aws_quicksight_iam_policy_assignment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  assignment_id: string prop;
  assignment_name: string prop;
  assignment_status: string prop;
  aws_account_id: string prop;
  id: string prop;
  namespace: string prop;
  policy_arn: string prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    ?namespace:string prop ->
    ?policy_arn:string prop ->
    ?identities:identities list ->
    assignment_name:string prop ->
    assignment_status:string prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    ?namespace:string prop ->
    ?policy_arn:string prop ->
    ?identities:identities list ->
    assignment_name:string prop ->
    assignment_status:string prop ->
    string ->
    t Tf_core.resource

