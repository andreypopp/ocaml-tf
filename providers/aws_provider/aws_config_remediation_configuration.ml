(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_remediation_configuration__execution_controls__ssm_controls = {
  concurrent_execution_rate_percentage : float prop option; [@option]
      (** concurrent_execution_rate_percentage *)
  error_percentage : float prop option; [@option]
      (** error_percentage *)
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration__execution_controls__ssm_controls *)

type aws_config_remediation_configuration__execution_controls = {
  ssm_controls :
    aws_config_remediation_configuration__execution_controls__ssm_controls
    list;
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration__execution_controls *)

type aws_config_remediation_configuration__parameter = {
  name : string prop;  (** name *)
  resource_value : string prop option; [@option]
      (** resource_value *)
  static_value : string prop option; [@option]  (** static_value *)
  static_values : string prop list option; [@option]
      (** static_values *)
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration__parameter *)

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
  execution_controls :
    aws_config_remediation_configuration__execution_controls list;
  parameter : aws_config_remediation_configuration__parameter list;
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration *)

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

let aws_config_remediation_configuration ?automatic ?id
    ?maximum_automatic_attempts ?resource_type ?retry_attempt_seconds
    ?target_version ~config_rule_name ~target_id ~target_type
    ~execution_controls ~parameter __resource_id =
  let __resource_type = "aws_config_remediation_configuration" in
  let __resource =
    ({
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
      : aws_config_remediation_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_remediation_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       automatic =
         Prop.computed __resource_type __resource_id "automatic";
       config_rule_name =
         Prop.computed __resource_type __resource_id
           "config_rule_name";
       id = Prop.computed __resource_type __resource_id "id";
       maximum_automatic_attempts =
         Prop.computed __resource_type __resource_id
           "maximum_automatic_attempts";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
       retry_attempt_seconds =
         Prop.computed __resource_type __resource_id
           "retry_attempt_seconds";
       target_id =
         Prop.computed __resource_type __resource_id "target_id";
       target_type =
         Prop.computed __resource_type __resource_id "target_type";
       target_version =
         Prop.computed __resource_type __resource_id "target_version";
     }
      : t)
  in
  __resource_attributes
