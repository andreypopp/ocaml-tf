(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_export = {
  api_id : string prop;
  export_version : string prop option; [@option]
  id : string prop option; [@option]
  include_extensions : bool prop option; [@option]
  output_type : string prop;
  specification : string prop;
  stage_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_export) -> ()

let yojson_of_aws_apigatewayv2_export =
  (function
   | {
       api_id = v_api_id;
       export_version = v_export_version;
       id = v_id;
       include_extensions = v_include_extensions;
       output_type = v_output_type;
       specification = v_specification;
       stage_name = v_stage_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_stage_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stage_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_specification in
         ("specification", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_output_type in
         ("output_type", arg) :: bnds
       in
       let bnds =
         match v_include_extensions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_extensions", arg in
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
       let bnds =
         match v_export_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "export_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_export -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_export

[@@@deriving.end]

let aws_apigatewayv2_export ?export_version ?id ?include_extensions
    ?stage_name ~api_id ~output_type ~specification () :
    aws_apigatewayv2_export =
  {
    api_id;
    export_version;
    id;
    include_extensions;
    output_type;
    specification;
    stage_name;
  }

type t = {
  api_id : string prop;
  body : string prop;
  export_version : string prop;
  id : string prop;
  include_extensions : bool prop;
  output_type : string prop;
  specification : string prop;
  stage_name : string prop;
}

let make ?export_version ?id ?include_extensions ?stage_name ~api_id
    ~output_type ~specification __id =
  let __type = "aws_apigatewayv2_export" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       body = Prop.computed __type __id "body";
       export_version = Prop.computed __type __id "export_version";
       id = Prop.computed __type __id "id";
       include_extensions =
         Prop.computed __type __id "include_extensions";
       output_type = Prop.computed __type __id "output_type";
       specification = Prop.computed __type __id "specification";
       stage_name = Prop.computed __type __id "stage_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_export
        (aws_apigatewayv2_export ?export_version ?id
           ?include_extensions ?stage_name ~api_id ~output_type
           ~specification ());
    attrs = __attrs;
  }

let register ?tf_module ?export_version ?id ?include_extensions
    ?stage_name ~api_id ~output_type ~specification __id =
  let (r : _ Tf_core.resource) =
    make ?export_version ?id ?include_extensions ?stage_name ~api_id
      ~output_type ~specification __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
