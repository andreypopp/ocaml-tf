(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lambda_function__dead_letter_config = {
  target_arn : string;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_lambda_function__dead_letter_config *)

type aws_lambda_function__environment = {
  variables : (string * string) list option; [@option]
      (** variables *)
}
[@@deriving yojson_of]
(** aws_lambda_function__environment *)

type aws_lambda_function__ephemeral_storage = {
  size : float option; [@option]  (** size *)
}
[@@deriving yojson_of]
(** aws_lambda_function__ephemeral_storage *)

type aws_lambda_function__file_system_config = {
  arn : string;  (** arn *)
  local_mount_path : string;  (** local_mount_path *)
}
[@@deriving yojson_of]
(** aws_lambda_function__file_system_config *)

type aws_lambda_function__image_config = {
  command : string list option; [@option]  (** command *)
  entry_point : string list option; [@option]  (** entry_point *)
  working_directory : string option; [@option]
      (** working_directory *)
}
[@@deriving yojson_of]
(** aws_lambda_function__image_config *)

type aws_lambda_function__logging_config = {
  application_log_level : string option; [@option]
      (** application_log_level *)
  log_format : string;  (** log_format *)
  log_group : string option; [@option]  (** log_group *)
  system_log_level : string option; [@option]  (** system_log_level *)
}
[@@deriving yojson_of]
(** aws_lambda_function__logging_config *)

type aws_lambda_function__snap_start = {
  apply_on : string;  (** apply_on *)
  optimization_status : string;  (** optimization_status *)
}
[@@deriving yojson_of]
(** aws_lambda_function__snap_start *)

type aws_lambda_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lambda_function__timeouts *)

type aws_lambda_function__tracing_config = {
  mode : string;  (** mode *)
}
[@@deriving yojson_of]
(** aws_lambda_function__tracing_config *)

type aws_lambda_function__vpc_config = {
  ipv6_allowed_for_dual_stack : bool option; [@option]
      (** ipv6_allowed_for_dual_stack *)
  security_group_ids : string list;  (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_lambda_function__vpc_config *)

type aws_lambda_function = {
  code_signing_config_arn : string option; [@option]
      (** code_signing_config_arn *)
  description : string option; [@option]  (** description *)
  filename : string option; [@option]  (** filename *)
  function_name : string;  (** function_name *)
  handler : string option; [@option]  (** handler *)
  image_uri : string option; [@option]  (** image_uri *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  layers : string list option; [@option]  (** layers *)
  memory_size : float option; [@option]  (** memory_size *)
  package_type : string option; [@option]  (** package_type *)
  publish : bool option; [@option]  (** publish *)
  replace_security_groups_on_destroy : bool option; [@option]
      (** replace_security_groups_on_destroy *)
  replacement_security_group_ids : string list option; [@option]
      (** replacement_security_group_ids *)
  reserved_concurrent_executions : float option; [@option]
      (** reserved_concurrent_executions *)
  role : string;  (** role *)
  runtime : string option; [@option]  (** runtime *)
  s3_bucket : string option; [@option]  (** s3_bucket *)
  s3_key : string option; [@option]  (** s3_key *)
  s3_object_version : string option; [@option]
      (** s3_object_version *)
  skip_destroy : bool option; [@option]  (** skip_destroy *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout : float option; [@option]  (** timeout *)
  dead_letter_config : aws_lambda_function__dead_letter_config list;
  environment : aws_lambda_function__environment list;
  ephemeral_storage : aws_lambda_function__ephemeral_storage list;
  file_system_config : aws_lambda_function__file_system_config list;
  image_config : aws_lambda_function__image_config list;
  logging_config : aws_lambda_function__logging_config list;
  snap_start : aws_lambda_function__snap_start list;
  timeouts : aws_lambda_function__timeouts option;
  tracing_config : aws_lambda_function__tracing_config list;
  vpc_config : aws_lambda_function__vpc_config list;
}
[@@deriving yojson_of]
(** aws_lambda_function *)

let aws_lambda_function ?code_signing_config_arn ?description
    ?filename ?handler ?image_uri ?kms_key_arn ?layers ?memory_size
    ?package_type ?publish ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?tags ?timeout ?timeouts ~function_name ~role ~dead_letter_config
    ~environment ~ephemeral_storage ~file_system_config ~image_config
    ~logging_config ~snap_start ~tracing_config ~vpc_config
    __resource_id =
  let __resource_type = "aws_lambda_function" in
  let __resource =
    {
      code_signing_config_arn;
      description;
      filename;
      function_name;
      handler;
      image_uri;
      kms_key_arn;
      layers;
      memory_size;
      package_type;
      publish;
      replace_security_groups_on_destroy;
      replacement_security_group_ids;
      reserved_concurrent_executions;
      role;
      runtime;
      s3_bucket;
      s3_key;
      s3_object_version;
      skip_destroy;
      tags;
      timeout;
      dead_letter_config;
      environment;
      ephemeral_storage;
      file_system_config;
      image_config;
      logging_config;
      snap_start;
      timeouts;
      tracing_config;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_function __resource);
  ()
