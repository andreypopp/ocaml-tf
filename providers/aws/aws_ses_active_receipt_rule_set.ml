(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_active_receipt_rule_set = {
  id : string prop option; [@option]  (** id *)
  rule_set_name : string prop;  (** rule_set_name *)
}
[@@deriving yojson_of]
(** aws_ses_active_receipt_rule_set *)

let aws_ses_active_receipt_rule_set ?id ~rule_set_name () :
    aws_ses_active_receipt_rule_set =
  { id; rule_set_name }

type t = {
  arn : string prop;
  id : string prop;
  rule_set_name : string prop;
}

let make ?id ~rule_set_name __id =
  let __type = "aws_ses_active_receipt_rule_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       rule_set_name = Prop.computed __type __id "rule_set_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_active_receipt_rule_set
        (aws_ses_active_receipt_rule_set ?id ~rule_set_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~rule_set_name __id =
  let (r : _ Tf_core.resource) = make ?id ~rule_set_name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
