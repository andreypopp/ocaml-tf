(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_documentation_version = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  rest_api_id : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_documentation_version) -> ()

let yojson_of_aws_api_gateway_documentation_version =
  (function
   | {
       description = v_description;
       id = v_id;
       rest_api_id = v_rest_api_id;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rest_api_id in
         ("rest_api_id", arg) :: bnds
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
       `Assoc bnds
    : aws_api_gateway_documentation_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_documentation_version

[@@@deriving.end]

let aws_api_gateway_documentation_version ?description ?id
    ~rest_api_id ~version () : aws_api_gateway_documentation_version
    =
  { description; id; rest_api_id; version }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  rest_api_id : string prop;
  version : string prop;
}

let make ?description ?id ~rest_api_id ~version __id =
  let __type = "aws_api_gateway_documentation_version" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       rest_api_id = Prop.computed __type __id "rest_api_id";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_documentation_version
        (aws_api_gateway_documentation_version ?description ?id
           ~rest_api_id ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~rest_api_id ~version __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~rest_api_id ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
