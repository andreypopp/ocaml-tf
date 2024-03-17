(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_bedrock_custom_model__output_data_config = {
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model__output_data_config *)

type aws_bedrock_custom_model__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model__timeouts *)

type aws_bedrock_custom_model__training_data_config = {
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model__training_data_config *)

type aws_bedrock_custom_model__validation_data_config__validator = {
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model__validation_data_config__validator *)

type aws_bedrock_custom_model__validation_data_config = {
  validator :
    aws_bedrock_custom_model__validation_data_config__validator list;
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model__validation_data_config *)

type aws_bedrock_custom_model__vpc_config = {
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model__vpc_config *)

type aws_bedrock_custom_model__training_metrics = {
  training_loss : float prop;  (** training_loss *)
}
[@@deriving yojson_of]

type aws_bedrock_custom_model__validation_metrics = {
  validation_loss : float prop;  (** validation_loss *)
}
[@@deriving yojson_of]

type aws_bedrock_custom_model = {
  base_model_identifier : string prop;  (** base_model_identifier *)
  custom_model_kms_key_id : string prop option; [@option]
      (** custom_model_kms_key_id *)
  custom_model_name : string prop;  (** custom_model_name *)
  customization_type : string prop option; [@option]
      (** customization_type *)
  hyperparameters : (string * string prop) list;
      (** hyperparameters *)
  job_name : string prop;  (** job_name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  output_data_config :
    aws_bedrock_custom_model__output_data_config list;
  timeouts : aws_bedrock_custom_model__timeouts option;
  training_data_config :
    aws_bedrock_custom_model__training_data_config list;
  validation_data_config :
    aws_bedrock_custom_model__validation_data_config list;
  vpc_config : aws_bedrock_custom_model__vpc_config list;
}
[@@deriving yojson_of]
(** aws_bedrock_custom_model *)

type t = {
  base_model_identifier : string prop;
  custom_model_arn : string prop;
  custom_model_kms_key_id : string prop;
  custom_model_name : string prop;
  customization_type : string prop;
  hyperparameters : (string * string) list prop;
  id : string prop;
  job_arn : string prop;
  job_name : string prop;
  job_status : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  training_metrics :
    aws_bedrock_custom_model__training_metrics list prop;
  validation_metrics :
    aws_bedrock_custom_model__validation_metrics list prop;
}

let aws_bedrock_custom_model ?custom_model_kms_key_id
    ?customization_type ?tags ?timeouts ~base_model_identifier
    ~custom_model_name ~hyperparameters ~job_name ~role_arn
    ~output_data_config ~training_data_config ~validation_data_config
    ~vpc_config __resource_id =
  let __resource_type = "aws_bedrock_custom_model" in
  let __resource =
    ({
       base_model_identifier;
       custom_model_kms_key_id;
       custom_model_name;
       customization_type;
       hyperparameters;
       job_name;
       role_arn;
       tags;
       output_data_config;
       timeouts;
       training_data_config;
       validation_data_config;
       vpc_config;
     }
      : aws_bedrock_custom_model)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_bedrock_custom_model __resource);
  let __resource_attributes =
    ({
       base_model_identifier =
         Prop.computed __resource_type __resource_id
           "base_model_identifier";
       custom_model_arn =
         Prop.computed __resource_type __resource_id
           "custom_model_arn";
       custom_model_kms_key_id =
         Prop.computed __resource_type __resource_id
           "custom_model_kms_key_id";
       custom_model_name =
         Prop.computed __resource_type __resource_id
           "custom_model_name";
       customization_type =
         Prop.computed __resource_type __resource_id
           "customization_type";
       hyperparameters =
         Prop.computed __resource_type __resource_id
           "hyperparameters";
       id = Prop.computed __resource_type __resource_id "id";
       job_arn =
         Prop.computed __resource_type __resource_id "job_arn";
       job_name =
         Prop.computed __resource_type __resource_id "job_name";
       job_status =
         Prop.computed __resource_type __resource_id "job_status";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       training_metrics =
         Prop.computed __resource_type __resource_id
           "training_metrics";
       validation_metrics =
         Prop.computed __resource_type __resource_id
           "validation_metrics";
     }
      : t)
  in
  __resource_attributes
