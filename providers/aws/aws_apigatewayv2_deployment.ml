(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_deployment = {
  api_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  triggers : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_deployment) -> ()

let yojson_of_aws_apigatewayv2_deployment =
  (function
   | {
       api_id = v_api_id;
       description = v_description;
       id = v_id;
       triggers = v_triggers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_triggers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "triggers", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_apigatewayv2_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_deployment

[@@@deriving.end]

let aws_apigatewayv2_deployment ?description ?id ?triggers ~api_id ()
    : aws_apigatewayv2_deployment =
  { api_id; description; id; triggers }

type t = {
  tf_name : string;
  api_id : string prop;
  auto_deployed : bool prop;
  description : string prop;
  id : string prop;
  triggers : string Tf_core.assoc prop;
}

let make ?description ?id ?triggers ~api_id __id =
  let __type = "aws_apigatewayv2_deployment" in
  let __attrs =
    ({
       tf_name = __id;
       api_id = Prop.computed __type __id "api_id";
       auto_deployed = Prop.computed __type __id "auto_deployed";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_deployment
        (aws_apigatewayv2_deployment ?description ?id ?triggers
           ~api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?triggers ~api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?triggers ~api_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
