(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_model = {
  api_id : string prop;
  content_type : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  schema : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_model) -> ()

let yojson_of_aws_apigatewayv2_model =
  (function
   | {
       api_id = v_api_id;
       content_type = v_content_type;
       description = v_description;
       id = v_id;
       name = v_name;
       schema = v_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_type in
         ("content_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_model

[@@@deriving.end]

let aws_apigatewayv2_model ?description ?id ~api_id ~content_type
    ~name ~schema () : aws_apigatewayv2_model =
  { api_id; content_type; description; id; name; schema }

type t = {
  tf_name : string;
  api_id : string prop;
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  schema : string prop;
}

let make ?description ?id ~api_id ~content_type ~name ~schema __id =
  let __type = "aws_apigatewayv2_model" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       content_type = Prop.computed __type __id "content_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_model
        (aws_apigatewayv2_model ?description ?id ~api_id
           ~content_type ~name ~schema ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~api_id ~content_type ~name
    ~schema __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~api_id ~content_type ~name ~schema __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
