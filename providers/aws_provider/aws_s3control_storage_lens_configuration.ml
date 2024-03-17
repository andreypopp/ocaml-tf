(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__activity_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__activity_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__advanced_cost_optimization_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__advanced_cost_optimization_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__advanced_data_protection_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__advanced_data_protection_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__activity_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__activity_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria = {
  delimiter : string option; [@option]  (** delimiter *)
  max_depth : float option; [@option]  (** max_depth *)
  min_storage_bytes_percentage : float option; [@option]
      (** min_storage_bytes_percentage *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics = {
  enabled : bool option; [@option]  (** enabled *)
  selection_criteria :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics__selection_criteria
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level = {
  storage_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level__storage_metrics
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level = {
  activity_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__activity_metrics
    list;
  advanced_cost_optimization_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__advanced_cost_optimization_metrics
    list;
  advanced_data_protection_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__advanced_data_protection_metrics
    list;
  detailed_status_code_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__detailed_status_code_metrics
    list;
  prefix_level :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level__prefix_level
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__detailed_status_code_metrics = {
  enabled : bool option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__detailed_status_code_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level = {
  activity_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__activity_metrics
    list;
  advanced_cost_optimization_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__advanced_cost_optimization_metrics
    list;
  advanced_data_protection_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__advanced_data_protection_metrics
    list;
  bucket_level :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__bucket_level
    list;
  detailed_status_code_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level__detailed_status_code_metrics
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__aws_org = {
  arn : string;  (** arn *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__aws_org *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__cloud_watch_metrics = {
  enabled : bool;  (** enabled *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__cloud_watch_metrics *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms = {
  key_id : string;  (** key_id *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3 =
  unit
[@@deriving yojson_of]

type aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption = {
  sse_kms :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_kms
    list;
  sse_s3 :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption__sse_s3
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination = {
  account_id : string;  (** account_id *)
  arn : string;  (** arn *)
  format : string;  (** format *)
  output_schema_version : string;  (** output_schema_version *)
  prefix : string option; [@option]  (** prefix *)
  encryption :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination__encryption
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export = {
  cloud_watch_metrics :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__cloud_watch_metrics
    list;
  s3_bucket_destination :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export__s3_bucket_destination
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__exclude = {
  buckets : string list option; [@option]  (** buckets *)
  regions : string list option; [@option]  (** regions *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__exclude *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration__include = {
  buckets : string list option; [@option]  (** buckets *)
  regions : string list option; [@option]  (** regions *)
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration__include *)

type aws_s3control_storage_lens_configuration__storage_lens_configuration = {
  enabled : bool;  (** enabled *)
  account_level :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__account_level
    list;
  aws_org :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__aws_org
    list;
  data_export :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__data_export
    list;
  exclude :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__exclude
    list;
  include_ :
    aws_s3control_storage_lens_configuration__storage_lens_configuration__include
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration__storage_lens_configuration *)

type aws_s3control_storage_lens_configuration = {
  account_id : string option; [@option]  (** account_id *)
  config_id : string;  (** config_id *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  storage_lens_configuration :
    aws_s3control_storage_lens_configuration__storage_lens_configuration
    list;
}
[@@deriving yojson_of]
(** aws_s3control_storage_lens_configuration *)

let aws_s3control_storage_lens_configuration ?account_id ?id ?tags
    ?tags_all ~config_id ~storage_lens_configuration __resource_id =
  let __resource_type = "aws_s3control_storage_lens_configuration" in
  let __resource =
    {
      account_id;
      config_id;
      id;
      tags;
      tags_all;
      storage_lens_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_storage_lens_configuration __resource);
  ()
