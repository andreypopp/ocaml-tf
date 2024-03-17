(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config__large_data_delivery_s3_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  key_prefix : string option; [@option]  (** key_prefix *)
}
[@@deriving yojson_of]
(** aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config__large_data_delivery_s3_config *)

type aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config = {
  log_group_name : string option; [@option]  (** log_group_name *)
  role_arn : string option; [@option]  (** role_arn *)
  large_data_delivery_s3_config :
    aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config__large_data_delivery_s3_config;
}
[@@deriving yojson_of]
(** aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config *)

type aws_bedrock_model_invocation_logging_configuration__logging_config__s3_config = {
  bucket_name : string option; [@option]  (** bucket_name *)
  key_prefix : string option; [@option]  (** key_prefix *)
}
[@@deriving yojson_of]
(** aws_bedrock_model_invocation_logging_configuration__logging_config__s3_config *)

type aws_bedrock_model_invocation_logging_configuration__logging_config = {
  embedding_data_delivery_enabled : bool;
      (** embedding_data_delivery_enabled *)
  image_data_delivery_enabled : bool;
      (** image_data_delivery_enabled *)
  text_data_delivery_enabled : bool;
      (** text_data_delivery_enabled *)
  cloudwatch_config :
    aws_bedrock_model_invocation_logging_configuration__logging_config__cloudwatch_config;
  s3_config :
    aws_bedrock_model_invocation_logging_configuration__logging_config__s3_config;
}
[@@deriving yojson_of]
(** aws_bedrock_model_invocation_logging_configuration__logging_config *)

type aws_bedrock_model_invocation_logging_configuration = {
  logging_config :
    aws_bedrock_model_invocation_logging_configuration__logging_config;
}
[@@deriving yojson_of]
(** aws_bedrock_model_invocation_logging_configuration *)

let aws_bedrock_model_invocation_logging_configuration
    ~logging_config __resource_id =
  let __resource_type =
    "aws_bedrock_model_invocation_logging_configuration"
  in
  let __resource = { logging_config } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_bedrock_model_invocation_logging_configuration
       __resource);
  ()
