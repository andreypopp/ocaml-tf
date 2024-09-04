(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_sdk = {
  id : string prop option; [@option]
  parameters : string prop Tf_core.assoc option; [@option]
  rest_api_id : string prop;
  sdk_type : string prop;
  stage_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_sdk) -> ()

let yojson_of_aws_api_gateway_sdk =
  (function
   | {
       id = v_id;
       parameters = v_parameters;
       rest_api_id = v_rest_api_id;
       sdk_type = v_sdk_type;
       stage_name = v_stage_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage_name in
         ("stage_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sdk_type in
         ("sdk_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
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
    : aws_api_gateway_sdk -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_sdk

[@@@deriving.end]

let aws_api_gateway_sdk ?id ?parameters ~rest_api_id ~sdk_type
    ~stage_name () : aws_api_gateway_sdk =
  { id; parameters; rest_api_id; sdk_type; stage_name }

type t = {
  tf_name : string;
  body : string prop;
  content_disposition : string prop;
  content_type : string prop;
  id : string prop;
  parameters : string Tf_core.assoc prop;
  rest_api_id : string prop;
  sdk_type : string prop;
  stage_name : string prop;
}

let make ?id ?parameters ~rest_api_id ~sdk_type ~stage_name __id =
  let __type = "aws_api_gateway_sdk" in
  let __attrs =
    ({
       tf_name = __id;
       body = Prop.computed __type __id "body";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_type = Prop.computed __type __id "content_type";
       id = Prop.computed __type __id "id";
       parameters = Prop.computed __type __id "parameters";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       sdk_type = Prop.computed __type __id "sdk_type";
       stage_name = Prop.computed __type __id "stage_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_sdk
        (aws_api_gateway_sdk ?id ?parameters ~rest_api_id ~sdk_type
           ~stage_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ~rest_api_id ~sdk_type
    ~stage_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ~rest_api_id ~sdk_type ~stage_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
