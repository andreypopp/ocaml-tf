(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_flow_definition__human_loop_activation_config__human_loop_activation_conditions_config = {
  human_loop_activation_conditions : string;
      (** human_loop_activation_conditions *)
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_activation_config__human_loop_activation_conditions_config *)

type aws_sagemaker_flow_definition__human_loop_activation_config = {
  human_loop_activation_conditions_config :
    aws_sagemaker_flow_definition__human_loop_activation_config__human_loop_activation_conditions_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_activation_config *)

type aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price__amount_in_usd = {
  cents : float option; [@option]  (** cents *)
  dollars : float option; [@option]  (** dollars *)
  tenth_fractions_of_a_cent : float option; [@option]
      (** tenth_fractions_of_a_cent *)
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price__amount_in_usd *)

type aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price = {
  amount_in_usd :
    aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price__amount_in_usd
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price *)

type aws_sagemaker_flow_definition__human_loop_config = {
  human_task_ui_arn : string;  (** human_task_ui_arn *)
  task_availability_lifetime_in_seconds : float option; [@option]
      (** task_availability_lifetime_in_seconds *)
  task_count : float;  (** task_count *)
  task_description : string;  (** task_description *)
  task_keywords : string list option; [@option]  (** task_keywords *)
  task_time_limit_in_seconds : float option; [@option]
      (** task_time_limit_in_seconds *)
  task_title : string;  (** task_title *)
  workteam_arn : string;  (** workteam_arn *)
  public_workforce_task_price :
    aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_config *)

type aws_sagemaker_flow_definition__human_loop_request_source = {
  aws_managed_human_loop_request_source : string;
      (** aws_managed_human_loop_request_source *)
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_request_source *)

type aws_sagemaker_flow_definition__output_config = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  s3_output_path : string;  (** s3_output_path *)
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__output_config *)

type aws_sagemaker_flow_definition = {
  flow_definition_name : string;  (** flow_definition_name *)
  id : string option; [@option]  (** id *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  human_loop_activation_config :
    aws_sagemaker_flow_definition__human_loop_activation_config list;
  human_loop_config :
    aws_sagemaker_flow_definition__human_loop_config list;
  human_loop_request_source :
    aws_sagemaker_flow_definition__human_loop_request_source list;
  output_config : aws_sagemaker_flow_definition__output_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition *)

let aws_sagemaker_flow_definition ?id ?tags ?tags_all
    ~flow_definition_name ~role_arn ~human_loop_activation_config
    ~human_loop_config ~human_loop_request_source ~output_config
    __resource_id =
  let __resource_type = "aws_sagemaker_flow_definition" in
  let __resource =
    {
      flow_definition_name;
      id;
      role_arn;
      tags;
      tags_all;
      human_loop_activation_config;
      human_loop_config;
      human_loop_request_source;
      output_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_flow_definition __resource);
  ()
