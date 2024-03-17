(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_iam_policy_assignment__identities

type aws_quicksight_iam_policy_assignment

val aws_quicksight_iam_policy_assignment :
    ?aws_account_id:string ->
    ?namespace:string ->
    ?policy_arn:string ->
    assignment_name:string ->
    assignment_status:string ->
    identities:aws_quicksight_iam_policy_assignment__identities list ->
    string ->
    unit

