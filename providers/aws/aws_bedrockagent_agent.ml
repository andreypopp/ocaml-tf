(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type prompt_override_configuration__prompt_configurations__inference_configuration = {
  max_length : float prop;
  stop_sequences : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  temperature : float prop;
  top_k : float prop;
  top_p : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       prompt_override_configuration__prompt_configurations__inference_configuration) ->
  ()

let yojson_of_prompt_override_configuration__prompt_configurations__inference_configuration
    =
  (function
   | {
       max_length = v_max_length;
       stop_sequences = v_stop_sequences;
       temperature = v_temperature;
       top_k = v_top_k;
       top_p = v_top_p;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_top_p in
         ("top_p", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_top_k in
         ("top_k", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_temperature in
         ("temperature", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_stop_sequences then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_stop_sequences
           in
           let bnd = "stop_sequences", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_length in
         ("max_length", arg) :: bnds
       in
       `Assoc bnds
    : prompt_override_configuration__prompt_configurations__inference_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_prompt_override_configuration__prompt_configurations__inference_configuration

[@@@deriving.end]

type prompt_override_configuration__prompt_configurations = {
  base_prompt_template : string prop;
  inference_configuration :
    prompt_override_configuration__prompt_configurations__inference_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  parser_mode : string prop;
  prompt_creation_mode : string prop;
  prompt_state : string prop;
  prompt_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : prompt_override_configuration__prompt_configurations) -> ()

let yojson_of_prompt_override_configuration__prompt_configurations =
  (function
   | {
       base_prompt_template = v_base_prompt_template;
       inference_configuration = v_inference_configuration;
       parser_mode = v_parser_mode;
       prompt_creation_mode = v_prompt_creation_mode;
       prompt_state = v_prompt_state;
       prompt_type = v_prompt_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prompt_type in
         ("prompt_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_prompt_state in
         ("prompt_state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_prompt_creation_mode
         in
         ("prompt_creation_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parser_mode in
         ("parser_mode", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_inference_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_prompt_override_configuration__prompt_configurations__inference_configuration)
               v_inference_configuration
           in
           let bnd = "inference_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_base_prompt_template
         in
         ("base_prompt_template", arg) :: bnds
       in
       `Assoc bnds
    : prompt_override_configuration__prompt_configurations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_prompt_override_configuration__prompt_configurations

[@@@deriving.end]

type prompt_override_configuration = {
  override_lambda : string prop;
  prompt_configurations :
    prompt_override_configuration__prompt_configurations list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : prompt_override_configuration) -> ()

let yojson_of_prompt_override_configuration =
  (function
   | {
       override_lambda = v_override_lambda;
       prompt_configurations = v_prompt_configurations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_prompt_configurations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_prompt_override_configuration__prompt_configurations)
               v_prompt_configurations
           in
           let bnd = "prompt_configurations", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_override_lambda
         in
         ("override_lambda", arg) :: bnds
       in
       `Assoc bnds
    : prompt_override_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_prompt_override_configuration

[@@@deriving.end]

type aws_bedrockagent_agent = {
  agent_name : string prop;
  agent_resource_role_arn : string prop;
  customer_encryption_key_arn : string prop option; [@option]
  description : string prop option; [@option]
  foundation_model : string prop;
  idle_session_ttl_in_seconds : float prop option; [@option]
  instruction : string prop option; [@option]
  prepare_agent : bool prop option; [@option]
  prompt_override_configuration :
    prompt_override_configuration list option;
      [@option]
  skip_resource_in_use_check : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrockagent_agent) -> ()

let yojson_of_aws_bedrockagent_agent =
  (function
   | {
       agent_name = v_agent_name;
       agent_resource_role_arn = v_agent_resource_role_arn;
       customer_encryption_key_arn = v_customer_encryption_key_arn;
       description = v_description;
       foundation_model = v_foundation_model;
       idle_session_ttl_in_seconds = v_idle_session_ttl_in_seconds;
       instruction = v_instruction;
       prepare_agent = v_prepare_agent;
       prompt_override_configuration =
         v_prompt_override_configuration;
       skip_resource_in_use_check = v_skip_resource_in_use_check;
       tags = v_tags;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_skip_resource_in_use_check with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_resource_in_use_check", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prompt_override_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list yojson_of_prompt_override_configuration
                 v
             in
             let bnd = "prompt_override_configuration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_prepare_agent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "prepare_agent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instruction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instruction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idle_session_ttl_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_session_ttl_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_foundation_model
         in
         ("foundation_model", arg) :: bnds
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
         match v_customer_encryption_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_encryption_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_agent_resource_role_arn
         in
         ("agent_resource_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_agent_name in
         ("agent_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrockagent_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrockagent_agent

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_bedrockagent_agent ?customer_encryption_key_arn ?description
    ?idle_session_ttl_in_seconds ?instruction ?prepare_agent
    ?prompt_override_configuration ?skip_resource_in_use_check ?tags
    ?timeouts ~agent_name ~agent_resource_role_arn ~foundation_model
    () : aws_bedrockagent_agent =
  {
    agent_name;
    agent_resource_role_arn;
    customer_encryption_key_arn;
    description;
    foundation_model;
    idle_session_ttl_in_seconds;
    instruction;
    prepare_agent;
    prompt_override_configuration;
    skip_resource_in_use_check;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  agent_arn : string prop;
  agent_id : string prop;
  agent_name : string prop;
  agent_resource_role_arn : string prop;
  agent_version : string prop;
  customer_encryption_key_arn : string prop;
  description : string prop;
  foundation_model : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  instruction : string prop;
  prepare_agent : bool prop;
  prompt_override_configuration :
    prompt_override_configuration list prop;
  skip_resource_in_use_check : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?customer_encryption_key_arn ?description
    ?idle_session_ttl_in_seconds ?instruction ?prepare_agent
    ?prompt_override_configuration ?skip_resource_in_use_check ?tags
    ?timeouts ~agent_name ~agent_resource_role_arn ~foundation_model
    __id =
  let __type = "aws_bedrockagent_agent" in
  let __attrs =
    ({
       tf_name = __id;
       agent_arn = Prop.computed __type __id "agent_arn";
       agent_id = Prop.computed __type __id "agent_id";
       agent_name = Prop.computed __type __id "agent_name";
       agent_resource_role_arn =
         Prop.computed __type __id "agent_resource_role_arn";
       agent_version = Prop.computed __type __id "agent_version";
       customer_encryption_key_arn =
         Prop.computed __type __id "customer_encryption_key_arn";
       description = Prop.computed __type __id "description";
       foundation_model =
         Prop.computed __type __id "foundation_model";
       id = Prop.computed __type __id "id";
       idle_session_ttl_in_seconds =
         Prop.computed __type __id "idle_session_ttl_in_seconds";
       instruction = Prop.computed __type __id "instruction";
       prepare_agent = Prop.computed __type __id "prepare_agent";
       prompt_override_configuration =
         Prop.computed __type __id "prompt_override_configuration";
       skip_resource_in_use_check =
         Prop.computed __type __id "skip_resource_in_use_check";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrockagent_agent
        (aws_bedrockagent_agent ?customer_encryption_key_arn
           ?description ?idle_session_ttl_in_seconds ?instruction
           ?prepare_agent ?prompt_override_configuration
           ?skip_resource_in_use_check ?tags ?timeouts ~agent_name
           ~agent_resource_role_arn ~foundation_model ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_encryption_key_arn ?description
    ?idle_session_ttl_in_seconds ?instruction ?prepare_agent
    ?prompt_override_configuration ?skip_resource_in_use_check ?tags
    ?timeouts ~agent_name ~agent_resource_role_arn ~foundation_model
    __id =
  let (r : _ Tf_core.resource) =
    make ?customer_encryption_key_arn ?description
      ?idle_session_ttl_in_seconds ?instruction ?prepare_agent
      ?prompt_override_configuration ?skip_resource_in_use_check
      ?tags ?timeouts ~agent_name ~agent_resource_role_arn
      ~foundation_model __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
