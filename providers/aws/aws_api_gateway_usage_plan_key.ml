(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_usage_plan_key = {
  id : string prop option; [@option]
  key_id : string prop;
  key_type : string prop;
  usage_plan_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_usage_plan_key) -> ()

let yojson_of_aws_api_gateway_usage_plan_key =
  (function
   | {
       id = v_id;
       key_id = v_key_id;
       key_type = v_key_type;
       usage_plan_id = v_usage_plan_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_usage_plan_id in
         ("usage_plan_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_type in
         ("key_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
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
    : aws_api_gateway_usage_plan_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_usage_plan_key

[@@@deriving.end]

let aws_api_gateway_usage_plan_key ?id ~key_id ~key_type
    ~usage_plan_id () : aws_api_gateway_usage_plan_key =
  { id; key_id; key_type; usage_plan_id }

type t = {
  id : string prop;
  key_id : string prop;
  key_type : string prop;
  name : string prop;
  usage_plan_id : string prop;
  value : string prop;
}

let make ?id ~key_id ~key_type ~usage_plan_id __id =
  let __type = "aws_api_gateway_usage_plan_key" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_type = Prop.computed __type __id "key_type";
       name = Prop.computed __type __id "name";
       usage_plan_id = Prop.computed __type __id "usage_plan_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_usage_plan_key
        (aws_api_gateway_usage_plan_key ?id ~key_id ~key_type
           ~usage_plan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_id ~key_type ~usage_plan_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key_id ~key_type ~usage_plan_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
