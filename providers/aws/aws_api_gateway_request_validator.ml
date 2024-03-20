(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_request_validator = {
  id : string prop option; [@option]
  name : string prop;
  rest_api_id : string prop;
  validate_request_body : bool prop option; [@option]
  validate_request_parameters : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_request_validator) -> ()

let yojson_of_aws_api_gateway_request_validator =
  (function
   | {
       id = v_id;
       name = v_name;
       rest_api_id = v_rest_api_id;
       validate_request_body = v_validate_request_body;
       validate_request_parameters = v_validate_request_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validate_request_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_request_parameters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_validate_request_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_request_body", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
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
       `Assoc bnds
    : aws_api_gateway_request_validator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_request_validator

[@@@deriving.end]

let aws_api_gateway_request_validator ?id ?validate_request_body
    ?validate_request_parameters ~name ~rest_api_id () :
    aws_api_gateway_request_validator =
  {
    id;
    name;
    rest_api_id;
    validate_request_body;
    validate_request_parameters;
  }

type t = {
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  validate_request_body : bool prop;
  validate_request_parameters : bool prop;
}

let make ?id ?validate_request_body ?validate_request_parameters
    ~name ~rest_api_id __id =
  let __type = "aws_api_gateway_request_validator" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       validate_request_body =
         Prop.computed __type __id "validate_request_body";
       validate_request_parameters =
         Prop.computed __type __id "validate_request_parameters";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_request_validator
        (aws_api_gateway_request_validator ?id ?validate_request_body
           ?validate_request_parameters ~name ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validate_request_body
    ?validate_request_parameters ~name ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validate_request_body ?validate_request_parameters
      ~name ~rest_api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
