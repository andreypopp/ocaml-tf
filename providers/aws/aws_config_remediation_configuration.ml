(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type execution_controls__ssm_controls = {
  concurrent_execution_rate_percentage : float prop option; [@option]
      (** concurrent_execution_rate_percentage *)
  error_percentage : float prop option; [@option]
      (** error_percentage *)
}
[@@deriving yojson_of]
(** execution_controls__ssm_controls *)

type execution_controls = {
  ssm_controls : execution_controls__ssm_controls list;
}
[@@deriving yojson_of]
(** execution_controls *)

type parameter = {
  name : string prop;  (** name *)
  resource_value : string prop option; [@option]
      (** resource_value *)
  static_value : string prop option; [@option]  (** static_value *)
  static_values : string prop list option; [@option]
      (** static_values *)
}
[@@deriving yojson_of]
(** parameter *)

type aws_config_remediation_configuration = {
  automatic : bool prop option; [@option]  (** automatic *)
  config_rule_name : string prop;  (** config_rule_name *)
  id : string prop option; [@option]  (** id *)
  maximum_automatic_attempts : float prop option; [@option]
      (** maximum_automatic_attempts *)
  resource_type : string prop option; [@option]  (** resource_type *)
  retry_attempt_seconds : float prop option; [@option]
      (** retry_attempt_seconds *)
  target_id : string prop;  (** target_id *)
  target_type : string prop;  (** target_type *)
  target_version : string prop option; [@option]
      (** target_version *)
  execution_controls : execution_controls list;
  parameter : parameter list;
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration *)

let execution_controls__ssm_controls
    ?concurrent_execution_rate_percentage ?error_percentage () :
    execution_controls__ssm_controls =
  { concurrent_execution_rate_percentage; error_percentage }

let execution_controls ~ssm_controls () : execution_controls =
  { ssm_controls }

let parameter ?resource_value ?static_value ?static_values ~name () :
    parameter =
  { name; resource_value; static_value; static_values }

let aws_config_remediation_configuration ?automatic ?id
    ?maximum_automatic_attempts ?resource_type ?retry_attempt_seconds
    ?target_version ~config_rule_name ~target_id ~target_type
    ~execution_controls ~parameter () :
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
    ?retry_attempt_seconds ?target_version ~config_rule_name
    ~target_id ~target_type ~execution_controls ~parameter __id =
  let __type = "aws_config_remediation_configuration" in
  let __attrs =
    ({
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
           ?retry_attempt_seconds ?target_version ~config_rule_name
           ~target_id ~target_type ~execution_controls ~parameter ());
    attrs = __attrs;
  }

let register ?tf_module ?automatic ?id ?maximum_automatic_attempts
    ?resource_type ?retry_attempt_seconds ?target_version
    ~config_rule_name ~target_id ~target_type ~execution_controls
    ~parameter __id =
  let (r : _ Tf_core.resource) =
    make ?automatic ?id ?maximum_automatic_attempts ?resource_type
      ?retry_attempt_seconds ?target_version ~config_rule_name
      ~target_id ~target_type ~execution_controls ~parameter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
