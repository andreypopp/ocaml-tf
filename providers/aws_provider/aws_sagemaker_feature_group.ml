(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sagemaker_feature_group__feature_definition = {
  feature_name : string prop option; [@option]  (** feature_name *)
  feature_type : string prop option; [@option]  (** feature_type *)
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__feature_definition *)

type aws_sagemaker_feature_group__offline_store_config__data_catalog_config = {
  catalog : string prop option; [@option]  (** catalog *)
  database : string prop option; [@option]  (** database *)
  table_name : string prop option; [@option]  (** table_name *)
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__offline_store_config__data_catalog_config *)

type aws_sagemaker_feature_group__offline_store_config__s3_storage_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  resolved_output_s3_uri : string prop option; [@option]
      (** resolved_output_s3_uri *)
  s3_uri : string prop;  (** s3_uri *)
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__offline_store_config__s3_storage_config *)

type aws_sagemaker_feature_group__offline_store_config = {
  disable_glue_table_creation : bool prop option; [@option]
      (** disable_glue_table_creation *)
  table_format : string prop option; [@option]  (** table_format *)
  data_catalog_config :
    aws_sagemaker_feature_group__offline_store_config__data_catalog_config
    list;
  s3_storage_config :
    aws_sagemaker_feature_group__offline_store_config__s3_storage_config
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__offline_store_config *)

type aws_sagemaker_feature_group__online_store_config__security_config = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__online_store_config__security_config *)

type aws_sagemaker_feature_group__online_store_config__ttl_duration = {
  unit : string prop option; [@option]  (** unit *)
  value : float prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__online_store_config__ttl_duration *)

type aws_sagemaker_feature_group__online_store_config = {
  enable_online_store : bool prop option; [@option]
      (** enable_online_store *)
  storage_type : string prop option; [@option]  (** storage_type *)
  security_config :
    aws_sagemaker_feature_group__online_store_config__security_config
    list;
  ttl_duration :
    aws_sagemaker_feature_group__online_store_config__ttl_duration
    list;
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group__online_store_config *)

type aws_sagemaker_feature_group = {
  description : string prop option; [@option]  (** description *)
  event_time_feature_name : string prop;
      (** event_time_feature_name *)
  feature_group_name : string prop;  (** feature_group_name *)
  id : string prop option; [@option]  (** id *)
  record_identifier_feature_name : string prop;
      (** record_identifier_feature_name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  feature_definition :
    aws_sagemaker_feature_group__feature_definition list;
  offline_store_config :
    aws_sagemaker_feature_group__offline_store_config list;
  online_store_config :
    aws_sagemaker_feature_group__online_store_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_feature_group *)

let aws_sagemaker_feature_group ?description ?id ?tags ?tags_all
    ~event_time_feature_name ~feature_group_name
    ~record_identifier_feature_name ~role_arn ~feature_definition
    ~offline_store_config ~online_store_config __resource_id =
  let __resource_type = "aws_sagemaker_feature_group" in
  let __resource =
    {
      description;
      event_time_feature_name;
      feature_group_name;
      id;
      record_identifier_feature_name;
      role_arn;
      tags;
      tags_all;
      feature_definition;
      offline_store_config;
      online_store_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sagemaker_feature_group __resource);
  ()
