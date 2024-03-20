(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_config = {
  additional_version_weights : (string * float prop) list option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_config) -> ()

let yojson_of_routing_config =
  (function
   | { additional_version_weights = v_additional_version_weights } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_additional_version_weights with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_float v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "additional_version_weights", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_config

[@@@deriving.end]

type aws_lambda_alias = {
  description : string prop option; [@option]
  function_name : string prop;
  function_version : string prop;
  id : string prop option; [@option]
  name : string prop;
  routing_config : routing_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lambda_alias) -> ()

let yojson_of_aws_lambda_alias =
  (function
   | {
       description = v_description;
       function_name = v_function_name;
       function_version = v_function_version;
       id = v_id;
       name = v_name;
       routing_config = v_routing_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_routing_config v_routing_config
         in
         ("routing_config", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_function_version
         in
         ("function_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_function_name in
         ("function_name", arg) :: bnds
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
    : aws_lambda_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lambda_alias

[@@@deriving.end]

let routing_config ?additional_version_weights () : routing_config =
  { additional_version_weights }

let aws_lambda_alias ?description ?id ~function_name
    ~function_version ~name ~routing_config () : aws_lambda_alias =
  {
    description;
    function_name;
    function_version;
    id;
    name;
    routing_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

let make ?description ?id ~function_name ~function_version ~name
    ~routing_config __id =
  let __type = "aws_lambda_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       function_name = Prop.computed __type __id "function_name";
       function_version =
         Prop.computed __type __id "function_version";
       id = Prop.computed __type __id "id";
       invoke_arn = Prop.computed __type __id "invoke_arn";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_alias
        (aws_lambda_alias ?description ?id ~function_name
           ~function_version ~name ~routing_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~function_name
    ~function_version ~name ~routing_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~function_name ~function_version ~name
      ~routing_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
