(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_remediation_configuration__execution_controls__ssm_controls = {
  concurrent_execution_rate_percentage : float option; [@option]
      (** concurrent_execution_rate_percentage *)
  error_percentage : float option; [@option]  (** error_percentage *)
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
  name : string;  (** name *)
  resource_value : string option; [@option]  (** resource_value *)
  static_value : string option; [@option]  (** static_value *)
  static_values : string list option; [@option]  (** static_values *)
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration__parameter *)

type aws_config_remediation_configuration = {
  automatic : bool option; [@option]  (** automatic *)
  config_rule_name : string;  (** config_rule_name *)
  id : string option; [@option]  (** id *)
  maximum_automatic_attempts : float option; [@option]
      (** maximum_automatic_attempts *)
  resource_type : string option; [@option]  (** resource_type *)
  retry_attempt_seconds : float option; [@option]
      (** retry_attempt_seconds *)
  target_id : string;  (** target_id *)
  target_type : string;  (** target_type *)
  target_version : string option; [@option]  (** target_version *)
  execution_controls :
    aws_config_remediation_configuration__execution_controls list;
  parameter : aws_config_remediation_configuration__parameter list;
}
[@@deriving yojson_of]
(** aws_config_remediation_configuration *)

let aws_config_remediation_configuration ?automatic ?id
    ?maximum_automatic_attempts ?resource_type ?retry_attempt_seconds
    ?target_version ~config_rule_name ~target_id ~target_type
    ~execution_controls ~parameter __resource_id =
  let __resource_type = "aws_config_remediation_configuration" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_remediation_configuration __resource);
  ()
