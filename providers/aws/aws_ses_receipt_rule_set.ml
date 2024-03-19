(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_receipt_rule_set = {
  id : string prop option; [@option]  (** id *)
  rule_set_name : string prop;  (** rule_set_name *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_rule_set *)

let aws_ses_receipt_rule_set ?id ~rule_set_name () :
    aws_ses_receipt_rule_set =
  { id; rule_set_name }

type t = {
  arn : string prop;
  id : string prop;
  rule_set_name : string prop;
}

let register ?tf_module ?id ~rule_set_name __resource_id =
  let __resource_type = "aws_ses_receipt_rule_set" in
  let __resource = aws_ses_receipt_rule_set ?id ~rule_set_name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_receipt_rule_set __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       rule_set_name =
         Prop.computed __resource_type __resource_id "rule_set_name";
     }
      : t)
  in
  __resource_attributes
