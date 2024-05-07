(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_active_receipt_rule_set = {
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_active_receipt_rule_set) -> ()

let yojson_of_aws_ses_active_receipt_rule_set =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ses_active_receipt_rule_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_active_receipt_rule_set

[@@@deriving.end]

let aws_ses_active_receipt_rule_set ?id () :
    aws_ses_active_receipt_rule_set =
  { id }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  rule_set_name : string prop;
}

let make ?id __id =
  let __type = "aws_ses_active_receipt_rule_set" in
  let __attrs =
    ({
       tf_name = __id;
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
        (aws_ses_active_receipt_rule_set ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
