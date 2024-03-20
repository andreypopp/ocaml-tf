(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codecommit_approval_rule_template_association = {
  approval_rule_template_name : string prop;
      (** approval_rule_template_name *)
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template_association *)

let aws_codecommit_approval_rule_template_association ?id
    ~approval_rule_template_name ~repository_name () :
    aws_codecommit_approval_rule_template_association =
  { approval_rule_template_name; id; repository_name }

type t = {
  approval_rule_template_name : string prop;
  id : string prop;
  repository_name : string prop;
}

let make ?id ~approval_rule_template_name ~repository_name __id =
  let __type = "aws_codecommit_approval_rule_template_association" in
  let __attrs =
    ({
       approval_rule_template_name =
         Prop.computed __type __id "approval_rule_template_name";
       id = Prop.computed __type __id "id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_approval_rule_template_association
        (aws_codecommit_approval_rule_template_association ?id
           ~approval_rule_template_name ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~approval_rule_template_name
    ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~approval_rule_template_name ~repository_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
