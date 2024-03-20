(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_product_subscription = {
  id : string prop option; [@option]
  product_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_product_subscription) -> ()

let yojson_of_aws_securityhub_product_subscription =
  (function
   | { id = v_id; product_arn = v_product_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_arn in
         ("product_arn", arg) :: bnds
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
    : aws_securityhub_product_subscription ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_product_subscription

[@@@deriving.end]

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
