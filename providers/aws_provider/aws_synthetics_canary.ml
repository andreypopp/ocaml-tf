(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_synthetics_canary__artifact_config__s3_encryption = {
  encryption_mode : string option; [@option]  (** encryption_mode *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_synthetics_canary__artifact_config__s3_encryption *)

type aws_synthetics_canary__artifact_config = {
  s3_encryption :
    aws_synthetics_canary__artifact_config__s3_encryption list;
}
[@@deriving yojson_of]
(** aws_synthetics_canary__artifact_config *)

type aws_synthetics_canary__run_config = {
  active_tracing : bool option; [@option]  (** active_tracing *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  memory_in_mb : float option; [@option]  (** memory_in_mb *)
  timeout_in_seconds : float option; [@option]
      (** timeout_in_seconds *)
}
[@@deriving yojson_of]
(** aws_synthetics_canary__run_config *)

type aws_synthetics_canary__schedule = {
  duration_in_seconds : float option; [@option]
      (** duration_in_seconds *)
  expression : string;  (** expression *)
}
[@@deriving yojson_of]
(** aws_synthetics_canary__schedule *)

type aws_synthetics_canary__vpc_config = {
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_synthetics_canary__vpc_config *)

type aws_synthetics_canary__timeline = {
  created : string;  (** created *)
  last_modified : string;  (** last_modified *)
  last_started : string;  (** last_started *)
  last_stopped : string;  (** last_stopped *)
}
[@@deriving yojson_of]

type aws_synthetics_canary = {
  artifact_s3_location : string;  (** artifact_s3_location *)
  delete_lambda : bool option; [@option]  (** delete_lambda *)
  execution_role_arn : string;  (** execution_role_arn *)
  failure_retention_period : float option; [@option]
      (** failure_retention_period *)
  handler : string;  (** handler *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  runtime_version : string;  (** runtime_version *)
  s3_bucket : string option; [@option]  (** s3_bucket *)
  s3_key : string option; [@option]  (** s3_key *)
  s3_version : string option; [@option]  (** s3_version *)
  start_canary : bool option; [@option]  (** start_canary *)
  success_retention_period : float option; [@option]
      (** success_retention_period *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  zip_file : string option; [@option]  (** zip_file *)
  artifact_config : aws_synthetics_canary__artifact_config list;
  run_config : aws_synthetics_canary__run_config list;
  schedule : aws_synthetics_canary__schedule list;
  vpc_config : aws_synthetics_canary__vpc_config list;
}
[@@deriving yojson_of]
(** aws_synthetics_canary *)

let aws_synthetics_canary ?delete_lambda ?failure_retention_period
    ?id ?s3_bucket ?s3_key ?s3_version ?start_canary
    ?success_retention_period ?tags ?tags_all ?zip_file
    ~artifact_s3_location ~execution_role_arn ~handler ~name
    ~runtime_version ~artifact_config ~run_config ~schedule
    ~vpc_config __resource_id =
  let __resource_type = "aws_synthetics_canary" in
  let __resource =
    {
      artifact_s3_location;
      delete_lambda;
      execution_role_arn;
      failure_retention_period;
      handler;
      id;
      name;
      runtime_version;
      s3_bucket;
      s3_key;
      s3_version;
      start_canary;
      success_retention_period;
      tags;
      tags_all;
      zip_file;
      artifact_config;
      run_config;
      schedule;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_synthetics_canary __resource);
  ()
