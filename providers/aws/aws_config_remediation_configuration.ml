(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type execution_controls__ssm_controls = {
  concurrent_execution_rate_percentage : float prop option; [@option]
  error_percentage : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_controls__ssm_controls) -> ()

let yojson_of_execution_controls__ssm_controls =
  (function
   | {
       concurrent_execution_rate_percentage =
         v_concurrent_execution_rate_percentage;
       error_percentage = v_error_percentage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_error_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "error_percentage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_concurrent_execution_rate_percentage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "concurrent_execution_rate_percentage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : execution_controls__ssm_controls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_controls__ssm_controls

[@@@deriving.end]

type execution_controls = {
  ssm_controls : execution_controls__ssm_controls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_controls) -> ()

let yojson_of_execution_controls =
  (function
   | { ssm_controls = v_ssm_controls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_execution_controls__ssm_controls
             v_ssm_controls
         in
         ("ssm_controls", arg) :: bnds
       in
       `Assoc bnds
    : execution_controls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_controls

[@@@deriving.end]

type parameter = {
  name : string prop;
  resource_value : string prop option; [@option]
  static_value : string prop option; [@option]
  static_values : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : parameter) -> ()

let yojson_of_parameter =
  (function
   | {
       name = v_name;
       resource_value = v_resource_value;
       static_value = v_static_value;
       static_values = v_static_values;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_static_values with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "static_values", arg in
             bnd :: bnds
       in
       let bnds =
         match v_static_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "static_value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_value", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : parameter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_parameter

[@@@deriving.end]

type aws_config_remediation_configuration = {
  automatic : bool prop option; [@option]
  config_rule_name : string prop;
  id : string prop option; [@option]
  maximum_automatic_attempts : float prop option; [@option]
  resource_type : string prop option; [@option]
  retry_attempt_seconds : float prop option; [@option]
  target_id : string prop;
  target_type : string prop;
  target_version : string prop option; [@option]
  execution_controls : execution_controls list;
  parameter : parameter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_remediation_configuration) -> ()

let yojson_of_aws_config_remediation_configuration =
  (function
   | {
       automatic = v_automatic;
       config_rule_name = v_config_rule_name;
       id = v_id;
       maximum_automatic_attempts = v_maximum_automatic_attempts;
       resource_type = v_resource_type;
       retry_attempt_seconds = v_retry_attempt_seconds;
       target_id = v_target_id;
       target_type = v_target_type;
       target_version = v_target_version;
       execution_controls = v_execution_controls;
       parameter = v_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_parameter v_parameter in
         ("parameter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_execution_controls
             v_execution_controls
         in
         ("execution_controls", arg) :: bnds
       in
       let bnds =
         match v_target_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_type in
         ("target_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_id in
         ("target_id", arg) :: bnds
       in
       let bnds =
         match v_retry_attempt_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retry_attempt_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_automatic_attempts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_automatic_attempts", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_config_rule_name
         in
         ("config_rule_name", arg) :: bnds
       in
       let bnds =
         match v_automatic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "automatic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_config_remediation_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_remediation_configuration

[@@@deriving.end]

let execution_controls__ssm_controls
    ?concurrent_execution_rate_percentage ?error_percentage () :
    execution_controls__ssm_controls =
  { concurrent_execution_rate_percentage; error_percentage }

let execution_controls ?(ssm_controls = []) () : execution_controls =
  { ssm_controls }

let parameter ?resource_value ?static_value ?static_values ~name () :
    parameter =
  { name; resource_value; static_value; static_values }

let aws_config_remediation_configuration ?automatic ?id
    ?maximum_automatic_attempts ?resource_type ?retry_attempt_seconds
    ?target_version ?(execution_controls = []) ?(parameter = [])
    ~config_rule_name ~target_id ~target_type () :
    aws_config_remediation_configuration =
  {
    automatic;
    config_rule_name;
    id;
    maximum_automatic_attempts;
    resource_type;
    retry_attempt_seconds;
    target_id;
    target_type;
    target_version;
    execution_controls;
    parameter;
  }

type t = {
  tf_name : string;
  arn : string prop;
  automatic : bool prop;
  config_rule_name : string prop;
  id : string prop;
  maximum_automatic_attempts : float prop;
  resource_type : string prop;
  retry_attempt_seconds : float prop;
  target_id : string prop;
  target_type : string prop;
  target_version : string prop;
}

let make ?automatic ?id ?maximum_automatic_attempts ?resource_type
    ?retry_attempt_seconds ?target_version ?(execution_controls = [])
    ?(parameter = []) ~config_rule_name ~target_id ~target_type __id
    =
  let __type = "aws_config_remediation_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       automatic = Prop.computed __type __id "automatic";
       config_rule_name =
         Prop.computed __type __id "config_rule_name";
       id = Prop.computed __type __id "id";
       maximum_automatic_attempts =
         Prop.computed __type __id "maximum_automatic_attempts";
       resource_type = Prop.computed __type __id "resource_type";
       retry_attempt_seconds =
         Prop.computed __type __id "retry_attempt_seconds";
       target_id = Prop.computed __type __id "target_id";
       target_type = Prop.computed __type __id "target_type";
       target_version = Prop.computed __type __id "target_version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_remediation_configuration
        (aws_config_remediation_configuration ?automatic ?id
           ?maximum_automatic_attempts ?resource_type
           ?retry_attempt_seconds ?target_version ~execution_controls
           ~parameter ~config_rule_name ~target_id ~target_type ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic ?id ?maximum_automatic_attempts
    ?resource_type ?retry_attempt_seconds ?target_version
    ?(execution_controls = []) ?(parameter = []) ~config_rule_name
    ~target_id ~target_type __id =
  let (r : _ Tf_core.resource) =
    make ?automatic ?id ?maximum_automatic_attempts ?resource_type
      ?retry_attempt_seconds ?target_version ~execution_controls
      ~parameter ~config_rule_name ~target_id ~target_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
