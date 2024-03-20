(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_apigatewayv2_apis = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  protocol_type : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_apigatewayv2_apis) -> ()

let yojson_of_aws_apigatewayv2_apis =
  (function
   | {
       id = v_id;
       name = v_name;
       protocol_type = v_protocol_type;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
    : aws_apigatewayv2_apis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_apigatewayv2_apis

[@@@deriving.end]

let aws_apigatewayv2_apis ?id ?name ?protocol_type ?tags () :
    aws_apigatewayv2_apis =
  { id; name; protocol_type; tags }

type t = {
  id : string prop;
  ids : string list prop;
  name : string prop;
  protocol_type : string prop;
  tags : (string * string) list prop;
}

let make ?id ?name ?protocol_type ?tags __id =
  let __type = "aws_apigatewayv2_apis" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       name = Prop.computed __type __id "name";
       protocol_type = Prop.computed __type __id "protocol_type";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_apigatewayv2_apis
        (aws_apigatewayv2_apis ?id ?name ?protocol_type ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?protocol_type ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?protocol_type ?tags __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
