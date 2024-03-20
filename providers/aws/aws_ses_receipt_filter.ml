(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_receipt_filter = {
  cidr : string prop;
  id : string prop option; [@option]
  name : string prop;
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_receipt_filter) -> ()

let yojson_of_aws_ses_receipt_filter =
  (function
   | { cidr = v_cidr; id = v_id; name = v_name; policy = v_policy }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cidr in
         ("cidr", arg) :: bnds
       in
       `Assoc bnds
    : aws_ses_receipt_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_receipt_filter

[@@@deriving.end]

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
