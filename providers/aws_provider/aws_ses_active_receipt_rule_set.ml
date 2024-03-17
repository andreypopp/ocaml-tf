(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_active_receipt_rule_set = {
  id : string option; [@option]  (** id *)
  rule_set_name : string;  (** rule_set_name *)
}
[@@deriving yojson_of]
(** aws_ses_active_receipt_rule_set *)

let aws_ses_active_receipt_rule_set ?id ~rule_set_name __resource_id
    =
  let __resource_type = "aws_ses_active_receipt_rule_set" in
  let __resource = { id; rule_set_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_active_receipt_rule_set __resource);
  ()
