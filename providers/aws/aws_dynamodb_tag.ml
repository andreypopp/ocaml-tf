(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dynamodb_tag = {
  id : string prop option; [@option]
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_tag) -> ()

let yojson_of_aws_dynamodb_tag =
  (function
   | {
       id = v_id;
       key = v_key;
       resource_arn = v_resource_arn;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
    : aws_dynamodb_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_tag

[@@@deriving.end]

let aws_dynamodb_tag ?id ~key ~resource_arn ~value () :
    aws_dynamodb_tag =
  { id; key; resource_arn; value }

type t = {
  tf_name : string;
  id : string prop;
  key : string prop;
  resource_arn : string prop;
  value : string prop;
}

let make ?id ~key ~resource_arn ~value __id =
  let __type = "aws_dynamodb_tag" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       resource_arn = Prop.computed __type __id "resource_arn";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_tag
        (aws_dynamodb_tag ?id ~key ~resource_arn ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key ~resource_arn ~value __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key ~resource_arn ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
