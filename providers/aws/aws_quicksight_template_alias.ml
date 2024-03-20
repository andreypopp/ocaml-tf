(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_template_alias = {
  alias_name: string prop;  (** alias_name *)
  aws_account_id: string  prop option; [@option] (** aws_account_id *)
  template_id: string prop;  (** template_id *)
  template_version_number: float prop;  (** template_version_number *)
} [@@deriving yojson_of]
(** aws_quicksight_template_alias *)

let aws_quicksight_template_alias ?aws_account_id ~alias_name ~template_id ~template_version_number () =
  ({
    alias_name;
    aws_account_id;
    template_id;
    template_version_number;
  } : aws_quicksight_template_alias);;

type t = {
  alias_name: string prop;
  arn: string prop;
  aws_account_id: string prop;
  id: string prop;
  template_id: string prop;
  template_version_number: float prop;
}

let make ?aws_account_id ~alias_name ~template_id ~template_version_number __id =
  let __type = "aws_quicksight_template_alias" in
  let __attrs = ({
    alias_name = Prop.computed __type __id "alias_name";
    arn = Prop.computed __type __id "arn";
    aws_account_id = Prop.computed __type __id "aws_account_id";
    id = Prop.computed __type __id "id";
    template_id = Prop.computed __type __id "template_id";
    template_version_number = Prop.computed __type __id "template_version_number";
  } : t) in
  {Tf_core.
    id=__id;
    type_=__type;
    json=yojson_of_aws_quicksight_template_alias (aws_quicksight_template_alias ?aws_account_id ~alias_name ~template_id ~template_version_number ());
    attrs=__attrs;
  };;

let register ?tf_module ?aws_account_id ~alias_name ~template_id ~template_version_number __id =
  let (r : _ Tf_core.resource) = make ?aws_account_id ~alias_name ~template_id ~template_version_number __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs;;

