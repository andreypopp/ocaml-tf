(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_api_gateway_base_path_mapping = {
  api_id : string prop;
  base_path : string prop option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
  stage_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_api_gateway_base_path_mapping) -> ()

let yojson_of_aws_api_gateway_base_path_mapping =
  (function
   | {
       api_id = v_api_id;
       base_path = v_base_path;
       domain_name = v_domain_name;
       id = v_id;
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
         match v_base_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_id in
         ("api_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_api_gateway_base_path_mapping ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_api_gateway_base_path_mapping

[@@@deriving.end]

let aws_api_gateway_base_path_mapping ?base_path ?id ?stage_name
    ~api_id ~domain_name () : aws_api_gateway_base_path_mapping =
  { api_id; base_path; domain_name; id; stage_name }

type t = {
  api_id : string prop;
  base_path : string prop;
  domain_name : string prop;
  id : string prop;
  stage_name : string prop;
}

let make ?base_path ?id ?stage_name ~api_id ~domain_name __id =
  let __type = "aws_api_gateway_base_path_mapping" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       base_path = Prop.computed __type __id "base_path";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       stage_name = Prop.computed __type __id "stage_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_api_gateway_base_path_mapping
        (aws_api_gateway_base_path_mapping ?base_path ?id ?stage_name
           ~api_id ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?base_path ?id ?stage_name ~api_id
    ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?base_path ?id ?stage_name ~api_id ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
