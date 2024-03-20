(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_product_subscription = {
  id : string prop option; [@option]  (** id *)
  product_arn : string prop;  (** product_arn *)
}
[@@deriving yojson_of]
(** aws_securityhub_product_subscription *)

let aws_securityhub_product_subscription ?id ~product_arn () :
    aws_securityhub_product_subscription =
  { id; product_arn }

type t = {
  arn : string prop;
  id : string prop;
  product_arn : string prop;
}

let make ?id ~product_arn __id =
  let __type = "aws_securityhub_product_subscription" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       product_arn = Prop.computed __type __id "product_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_product_subscription
        (aws_securityhub_product_subscription ?id ~product_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~product_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~product_arn __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
