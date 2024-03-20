(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_model = {
  content_type : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  rest_api_id : string prop;
  schema : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_model) -> ()

let yojson_of_aws_api_gateway_model =
  (function
   | {
       content_type = v_content_type;
       description = v_description;
       id = v_id;
       name = v_name;
       rest_api_id = v_rest_api_id;
       schema = v_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_schema with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "schema", arg in
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
       `Assoc bnds
    : aws_api_gateway_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_model

[@@@deriving.end]

let aws_api_gateway_model ?description ?id ?schema ~content_type
    ~name ~rest_api_id () : aws_api_gateway_model =
  { content_type; description; id; name; rest_api_id; schema }

type t = {
  content_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  rest_api_id : string prop;
  schema : string prop;
}

let make ?description ?id ?schema ~content_type ~name ~rest_api_id
    __id =
  let __type = "aws_api_gateway_model" in
  let __attrs =
    ({
       content_type = Prop.computed __type __id "content_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       schema = Prop.computed __type __id "schema";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_model
        (aws_api_gateway_model ?description ?id ?schema ~content_type
           ~name ~rest_api_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?schema ~content_type ~name
    ~rest_api_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?schema ~content_type ~name ~rest_api_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
