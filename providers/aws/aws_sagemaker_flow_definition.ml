(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_flow_definition__human_loop_activation_config__human_loop_activation_conditions_config = {
  human_loop_activation_conditions : string prop;
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
  cents : float prop option; [@option]  (** cents *)
  dollars : float prop option; [@option]  (** dollars *)
  tenth_fractions_of_a_cent : float prop option; [@option]
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
  human_task_ui_arn : string prop;  (** human_task_ui_arn *)
  task_availability_lifetime_in_seconds : float prop option;
      [@option]
      (** task_availability_lifetime_in_seconds *)
  task_count : float prop;  (** task_count *)
  task_description : string prop;  (** task_description *)
  task_keywords : string prop list option; [@option]
      (** task_keywords *)
  task_time_limit_in_seconds : float prop option; [@option]
      (** task_time_limit_in_seconds *)
  task_title : string prop;  (** task_title *)
  workteam_arn : string prop;  (** workteam_arn *)
  public_workforce_task_price :
    aws_sagemaker_flow_definition__human_loop_config__public_workforce_task_price
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_config *)

type aws_sagemaker_flow_definition__human_loop_request_source = {
  aws_managed_human_loop_request_source : string prop;
      (** aws_managed_human_loop_request_source *)
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__human_loop_request_source *)

type aws_sagemaker_flow_definition__output_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  s3_output_path : string prop;  (** s3_output_path *)
}
[@@deriving yojson_of]
(** aws_sagemaker_flow_definition__output_config *)

type aws_sagemaker_flow_definition = {
  flow_definition_name : string prop;  (** flow_definition_name *)
  id : string prop option; [@option]  (** id *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
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

type t = {
  arn : string prop;
  flow_definition_name : string prop;
  id : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_sagemaker_flow_definition ?id ?tags ?tags_all
    ~flow_definition_name ~role_arn ~human_loop_activation_config
    ~human_loop_config ~human_loop_request_source ~output_config
    __resource_id =
  let __resource_type = "aws_sagemaker_flow_definition" in
  let __resource =
    ({
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
      : aws_sagemaker_flow_definition)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_flow_definition __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       flow_definition_name =
         Prop.computed __resource_type __resource_id
           "flow_definition_name";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
