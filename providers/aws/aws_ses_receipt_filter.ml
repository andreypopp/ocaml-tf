(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_receipt_filter = {
  cidr : string prop;  (** cidr *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_ses_receipt_filter *)

let aws_ses_receipt_filter ?id ~cidr ~name ~policy () :
    aws_ses_receipt_filter =
  { cidr; id; name; policy }

type t = {
  arn : string prop;
  cidr : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
}

let make ?id ~cidr ~name ~policy __id =
  let __type = "aws_ses_receipt_filter" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cidr = Prop.computed __type __id "cidr";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_receipt_filter
        (aws_ses_receipt_filter ?id ~cidr ~name ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cidr ~name ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ~cidr ~name ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
