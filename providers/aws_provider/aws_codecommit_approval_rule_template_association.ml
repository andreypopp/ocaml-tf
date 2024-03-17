(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_approval_rule_template_association = {
  approval_rule_template_name : string prop;
      (** approval_rule_template_name *)
  id : string prop option; [@option]  (** id *)
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template_association *)

type t = {
  approval_rule_template_name : string prop;
  id : string prop;
  repository_name : string prop;
}

let aws_codecommit_approval_rule_template_association ?id
    ~approval_rule_template_name ~repository_name __resource_id =
  let __resource_type =
    "aws_codecommit_approval_rule_template_association"
  in
  let __resource =
    ({ approval_rule_template_name; id; repository_name }
      : aws_codecommit_approval_rule_template_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_approval_rule_template_association
       __resource);
  let __resource_attributes =
    ({
       approval_rule_template_name =
         Prop.computed __resource_type __resource_id
           "approval_rule_template_name";
       id = Prop.computed __resource_type __resource_id "id";
       repository_name =
         Prop.computed __resource_type __resource_id
           "repository_name";
     }
      : t)
  in
  __resource_attributes
