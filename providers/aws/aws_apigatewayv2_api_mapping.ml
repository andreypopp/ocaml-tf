(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_api_mapping = {
  api_id : string prop;
  api_mapping_key : string prop option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
  stage : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_api_mapping) -> ()

let yojson_of_aws_apigatewayv2_api_mapping =
  (function
   | {
       api_id = v_api_id;
       api_mapping_key = v_api_mapping_key;
       domain_name = v_domain_name;
       id = v_id;
       stage = v_stage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stage in
         ("stage", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_api_mapping_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_mapping_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_api_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_api_mapping

[@@@deriving.end]

let aws_apigatewayv2_api_mapping ?api_mapping_key ?id ~api_id
    ~domain_name ~stage () : aws_apigatewayv2_api_mapping =
  { api_id; api_mapping_key; domain_name; id; stage }

type t = {
  api_id : string prop;
  api_mapping_key : string prop;
  domain_name : string prop;
  id : string prop;
  stage : string prop;
}

let make ?api_mapping_key ?id ~api_id ~domain_name ~stage __id =
  let __type = "aws_apigatewayv2_api_mapping" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       api_mapping_key = Prop.computed __type __id "api_mapping_key";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       stage = Prop.computed __type __id "stage";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_api_mapping
        (aws_apigatewayv2_api_mapping ?api_mapping_key ?id ~api_id
           ~domain_name ~stage ());
    attrs = __attrs;
  }

let register ?tf_module ?api_mapping_key ?id ~api_id ~domain_name
    ~stage __id =
  let (r : _ Tf_core.resource) =
    make ?api_mapping_key ?id ~api_id ~domain_name ~stage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
