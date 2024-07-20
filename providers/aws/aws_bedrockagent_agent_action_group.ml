(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action_group_executor = {
  custom_control : string prop option; [@option]
  lambda : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : action_group_executor) -> ()

let yojson_of_action_group_executor =
  (function
   | { custom_control = v_custom_control; lambda = v_lambda } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lambda with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lambda", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_control", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : action_group_executor -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_action_group_executor

[@@@deriving.end]

type api_schema__s3 = {
  s3_bucket_name : string prop option; [@option]
  s3_object_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_schema__s3) -> ()

let yojson_of_api_schema__s3 =
  (function
   | {
       s3_bucket_name = v_s3_bucket_name;
       s3_object_key = v_s3_object_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_s3_object_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_object_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : api_schema__s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_schema__s3

[@@@deriving.end]

type api_schema = {
  payload : string prop option; [@option]
  s3 : api_schema__s3 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : api_schema) -> ()

let yojson_of_api_schema =
  (function
   | { payload = v_payload; s3 = v_s3 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_api_schema__s3) v_s3
           in
           let bnd = "s3", arg in
           bnd :: bnds
       in
       let bnds =
         match v_payload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "payload", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : api_schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_api_schema

[@@@deriving.end]

type function_schema__member_functions__functions__parameters = {
  description : string prop option; [@option]
  map_block_key : string prop;
  required : bool prop option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : function_schema__member_functions__functions__parameters) ->
  ()

let yojson_of_function_schema__member_functions__functions__parameters
    =
  (function
   | {
       description = v_description;
       map_block_key = v_map_block_key;
       required = v_required;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "required", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_map_block_key in
         ("map_block_key", arg) :: bnds
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
    : function_schema__member_functions__functions__parameters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_function_schema__member_functions__functions__parameters

[@@@deriving.end]

type function_schema__member_functions__functions = {
  description : string prop option; [@option]
  name : string prop;
  parameters :
    function_schema__member_functions__functions__parameters list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : function_schema__member_functions__functions) -> ()

let yojson_of_function_schema__member_functions__functions =
  (function
   | {
       description = v_description;
       name = v_name;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_parameters then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_function_schema__member_functions__functions__parameters)
               v_parameters
           in
           let bnd = "parameters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : function_schema__member_functions__functions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_function_schema__member_functions__functions

[@@@deriving.end]

type function_schema__member_functions = {
  functions : function_schema__member_functions__functions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : function_schema__member_functions) -> ()

let yojson_of_function_schema__member_functions =
  (function
   | { functions = v_functions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_functions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_function_schema__member_functions__functions)
               v_functions
           in
           let bnd = "functions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : function_schema__member_functions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_function_schema__member_functions

[@@@deriving.end]

type function_schema = {
  member_functions : function_schema__member_functions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : function_schema) -> ()

let yojson_of_function_schema =
  (function
   | { member_functions = v_member_functions } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_member_functions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_function_schema__member_functions)
               v_member_functions
           in
           let bnd = "member_functions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : function_schema -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_function_schema

[@@@deriving.end]

type aws_bedrockagent_agent_action_group = {
  action_group_name : string prop;
  action_group_state : string prop option; [@option]
  agent_id : string prop;
  agent_version : string prop;
  description : string prop option; [@option]
  parent_action_group_signature : string prop option; [@option]
  skip_resource_in_use_check : bool prop option; [@option]
  action_group_executor : action_group_executor list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  api_schema : api_schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  function_schema : function_schema list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrockagent_agent_action_group) -> ()

let yojson_of_aws_bedrockagent_agent_action_group =
  (function
   | {
       action_group_name = v_action_group_name;
       action_group_state = v_action_group_state;
       agent_id = v_agent_id;
       agent_version = v_agent_version;
       description = v_description;
       parent_action_group_signature =
         v_parent_action_group_signature;
       skip_resource_in_use_check = v_skip_resource_in_use_check;
       action_group_executor = v_action_group_executor;
       api_schema = v_api_schema;
       function_schema = v_function_schema;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_function_schema then bnds
         else
           let arg =
             (yojson_of_list yojson_of_function_schema)
               v_function_schema
           in
           let bnd = "function_schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_api_schema then bnds
         else
           let arg =
             (yojson_of_list yojson_of_api_schema) v_api_schema
           in
           let bnd = "api_schema", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_action_group_executor then bnds
         else
           let arg =
             (yojson_of_list yojson_of_action_group_executor)
               v_action_group_executor
           in
           let bnd = "action_group_executor", arg in
           bnd :: bnds
       in
       let bnds =
         match v_skip_resource_in_use_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_resource_in_use_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parent_action_group_signature with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_action_group_signature", arg in
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
         let arg = yojson_of_prop yojson_of_string v_agent_version in
         ("agent_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_agent_id in
         ("agent_id", arg) :: bnds
       in
       let bnds =
         match v_action_group_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action_group_state", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_action_group_name
         in
         ("action_group_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrockagent_agent_action_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrockagent_agent_action_group

[@@@deriving.end]

let action_group_executor ?custom_control ?lambda () :
    action_group_executor =
  { custom_control; lambda }

let api_schema__s3 ?s3_bucket_name ?s3_object_key () : api_schema__s3
    =
  { s3_bucket_name; s3_object_key }

let api_schema ?payload ?(s3 = []) () : api_schema = { payload; s3 }

let function_schema__member_functions__functions__parameters
    ?description ?required ~map_block_key ~type_ () :
    function_schema__member_functions__functions__parameters =
  { description; map_block_key; required; type_ }

let function_schema__member_functions__functions ?description ~name
    ~parameters () : function_schema__member_functions__functions =
  { description; name; parameters }

let function_schema__member_functions ?(functions = []) () :
    function_schema__member_functions =
  { functions }

let function_schema ?(member_functions = []) () : function_schema =
  { member_functions }

let aws_bedrockagent_agent_action_group ?action_group_state
    ?description ?parent_action_group_signature
    ?skip_resource_in_use_check ?(action_group_executor = [])
    ?(api_schema = []) ?(function_schema = []) ~action_group_name
    ~agent_id ~agent_version () : aws_bedrockagent_agent_action_group
    =
  {
    action_group_name;
    action_group_state;
    agent_id;
    agent_version;
    description;
    parent_action_group_signature;
    skip_resource_in_use_check;
    action_group_executor;
    api_schema;
    function_schema;
  }

type t = {
  tf_name : string;
  action_group_id : string prop;
  action_group_name : string prop;
  action_group_state : string prop;
  agent_id : string prop;
  agent_version : string prop;
  description : string prop;
  id : string prop;
  parent_action_group_signature : string prop;
  skip_resource_in_use_check : bool prop;
}

let make ?action_group_state ?description
    ?parent_action_group_signature ?skip_resource_in_use_check
    ?(action_group_executor = []) ?(api_schema = [])
    ?(function_schema = []) ~action_group_name ~agent_id
    ~agent_version __id =
  let __type = "aws_bedrockagent_agent_action_group" in
  let __attrs =
    ({
       tf_name = __id;
       action_group_id = Prop.computed __type __id "action_group_id";
       action_group_name =
         Prop.computed __type __id "action_group_name";
       action_group_state =
         Prop.computed __type __id "action_group_state";
       agent_id = Prop.computed __type __id "agent_id";
       agent_version = Prop.computed __type __id "agent_version";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       parent_action_group_signature =
         Prop.computed __type __id "parent_action_group_signature";
       skip_resource_in_use_check =
         Prop.computed __type __id "skip_resource_in_use_check";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrockagent_agent_action_group
        (aws_bedrockagent_agent_action_group ?action_group_state
           ?description ?parent_action_group_signature
           ?skip_resource_in_use_check ~action_group_executor
           ~api_schema ~function_schema ~action_group_name ~agent_id
           ~agent_version ());
    attrs = __attrs;
  }

let register ?tf_module ?action_group_state ?description
    ?parent_action_group_signature ?skip_resource_in_use_check
    ?(action_group_executor = []) ?(api_schema = [])
    ?(function_schema = []) ~action_group_name ~agent_id
    ~agent_version __id =
  let (r : _ Tf_core.resource) =
    make ?action_group_state ?description
      ?parent_action_group_signature ?skip_resource_in_use_check
      ~action_group_executor ~api_schema ~function_schema
      ~action_group_name ~agent_id ~agent_version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
