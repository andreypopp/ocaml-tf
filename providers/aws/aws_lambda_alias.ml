(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_config = {
  additional_version_weights : float prop Tf_core.assoc option;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_float)
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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_routing_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_config)
               v_routing_config
           in
           let bnd = "routing_config", arg in
           bnd :: bnds
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

let aws_lambda_alias ?description ?id ?(routing_config = [])
    ~function_name ~function_version ~name () : aws_lambda_alias =
  {
    description;
    function_name;
    function_version;
    id;
    name;
    routing_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

let make ?description ?id ?(routing_config = []) ~function_name
    ~function_version ~name __id =
  let __type = "aws_lambda_alias" in
  let __attrs =
    ({
       tf_name = __id;
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
        (aws_lambda_alias ?description ?id ~routing_config
           ~function_name ~function_version ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?(routing_config = [])
    ~function_name ~function_version ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~routing_config ~function_name
      ~function_version ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
