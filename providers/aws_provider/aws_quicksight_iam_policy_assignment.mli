(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_iam_policy_assignment__identities

type aws_quicksight_iam_policy_assignment

type t = private {
  assignment_id: string prop;
  assignment_name: string prop;
  assignment_status: string prop;
  aws_account_id: string prop;
  id: string prop;
  namespace: string prop;
  policy_arn: string prop;
}

val aws_quicksight_iam_policy_assignment :
    ?aws_account_id:string prop ->
    ?namespace:string prop ->
    ?policy_arn:string prop ->
    assignment_name:string prop ->
    assignment_status:string prop ->
    identities:aws_quicksight_iam_policy_assignment__identities list ->
    string ->
    t

