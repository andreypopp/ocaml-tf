(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_codecommit_approval_rule_template_association = {
  approval_rule_template_name : string;
      (** approval_rule_template_name *)
  repository_name : string;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_codecommit_approval_rule_template_association *)

let aws_codecommit_approval_rule_template_association
    ~approval_rule_template_name ~repository_name __resource_id =
  let __resource_type =
    "aws_codecommit_approval_rule_template_association"
  in
  let __resource =
    { approval_rule_template_name; repository_name }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_approval_rule_template_association
       __resource);
  ()