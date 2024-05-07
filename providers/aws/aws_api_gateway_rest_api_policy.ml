(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_rest_api_policy = {
  id : string prop option; [@option]
  policy : string prop;
  rest_api_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_rest_api_policy) -> ()

let yojson_of_aws_api_gateway_rest_api_policy =
  (function
   | { id = v_id; policy = v_policy; rest_api_id = v_rest_api_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
    : aws_api_gateway_rest_api_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_rest_api_policy

[@@@deriving.end]

let aws_api_gateway_rest_api_policy ?id ~policy ~rest_api_id () :
    aws_api_gateway_rest_api_policy =
  { id; policy; rest_api_id }

type t = {
  tf_name : string;
  id : string prop;
  policy : string prop;
  rest_api_id : string prop;
}

let make ?id ~policy ~rest_api_id __id =
  let __type = "aws_api_gateway_rest_api_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       rest_api_id = Prop.computed __type __id "rest_api_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_rest_api_policy
        (aws_api_gateway_rest_api_policy ?id ~policy ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
