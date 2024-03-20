(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identities = {
  group: string   prop list option; [@option]
  user: string   prop list option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

type aws_quicksight_iam_policy_assignment = {
  assignment_name: string prop; 
  assignment_status: string prop; 
  aws_account_id: string  prop option; [@option]
  namespace: string  prop option; [@option]
  policy_arn: string  prop option; [@option]
  identities: identities list;
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let identities ?group ?user () =
  ({
    group;
    user;
  } : identities);;

let aws_quicksight_iam_policy_assignment ?aws_account_id ?namespace ?policy_arn ~assignment_name ~assignment_status ~identities () =
  ({
    assignment_name;
    assignment_status;
    aws_account_id;
    namespace;
    policy_arn;
    identities;
  } : aws_quicksight_iam_policy_assignment);;

type t = {
  assignment_id: string prop;
  assignment_name: string prop;
  assignment_status: string prop;
  aws_account_id: string prop;
  id: string prop;
  namespace: string prop;
  policy_arn: string prop;
}

let make ?aws_account_id ?namespace ?policy_arn ~assignment_name ~assignment_status ~identities __id =
  let __type = "aws_quicksight_iam_policy_assignment" in
  let __attrs = ({
    assignment_id = Prop.computed __type __id "assignment_id";
    assignment_name = Prop.computed __type __id "assignment_name";
    assignment_status = Prop.computed __type __id "assignment_status";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    id = Prop.computed __type __id "id";
    namespace = Prop.computed __type __id "namespace";
    policy_arn = Prop.computed __type __id "policy_arn";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_iam_policy_assignment (aws_quicksight_iam_policy_assignment ?aws_account_id ?namespace ?policy_arn ~assignment_name ~assignment_status ~identities ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?namespace ?policy_arn ~assignment_name ~assignment_status ~identities __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?namespace ?policy_arn ~assignment_name ~assignment_status ~identities __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

