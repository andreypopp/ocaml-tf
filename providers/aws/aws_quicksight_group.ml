(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_group = {
  aws_account_id: string  prop option; [@option]
  description: string  prop option; [@option]
  group_name: string prop; 
  id: string  prop option; [@option]
  namespace: string  prop option; [@option]
} [@@deriving_inline yojson_of]
[@@@deriving.end]

let aws_quicksight_group ?aws_account_id ?description ?id ?namespace ~group_name () =
  ({
    aws_account_id;
    description;
    group_name;
    id;
    namespace;
  } : aws_quicksight_group);;

type t = {
  tf_name: string;
  arn: string prop;
  aws_account_id: string prop;
  description: string prop;
  group_name: string prop;
  id: string prop;
  namespace: string prop;
}

let make ?aws_account_id ?description ?id ?namespace ~group_name __id =
  let __type = "aws_quicksight_group" in
  let __attrs = ({
    tf_name = __id;
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    description = Prop.computed __type __id "description";
    group_name = Prop.computed __type __id "group_name";
    id = Prop.computed __type __id "id";
    namespace = Prop.computed __type __id "namespace";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_group (aws_quicksight_group ?aws_account_id ?description ?id ?namespace ~group_name ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ?description ?id ?namespace ~group_name __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ?description ?id ?namespace ~group_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

