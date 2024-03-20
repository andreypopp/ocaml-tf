(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_group_membership = {
  aws_account_id: string  prop option; [@option]
  group_name: string prop; 
  id: string  prop option; [@option]
  member_name: string prop; 
  namespace: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let aws_quicksight_group_membership ?aws_account_id ?id ?namespace ~group_name ~member_name () =
  ({
    aws_account_id;
    group_name;
    id;
    member_name;
    namespace;
  } : aws_quicksight_group_membership);;

type t = {
  arn: string prop;
  aws_account_id: string prop;
  group_name: string prop;
  id: string prop;
  member_name: string prop;
  namespace: string prop;
}

let make ?aws_account_id ?id ?namespace ~group_name ~member_name __id =
  let __type = "aws_quicksight_group_membership" in
  let __attrs = ({
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    group_name = Prop.computed __type __id "group_name";
    id = Prop.computed __type __id "id";
    member_name = Prop.computed __type __id "member_name";
    namespace = Prop.computed __type __id "namespace";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_group_membership (aws_quicksight_group_membership ?aws_account_id ?id ?namespace ~group_name ~member_name ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?id ?namespace ~group_name ~member_name __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?id ?namespace ~group_name ~member_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

