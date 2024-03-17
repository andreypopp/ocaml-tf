(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_function__dead_letter_config = {
  target_arn : string prop;  (** target_arn *)
}
[@@deriving yojson_of]
(** aws_lambda_function__dead_letter_config *)

type aws_lambda_function__environment = {
  variables : (string * string prop) list option; [@option]
      (** variables *)
}
[@@deriving yojson_of]
(** aws_lambda_function__environment *)

type aws_lambda_function__ephemeral_storage = {
  size : float prop option; [@option]  (** size *)
}
[@@deriving yojson_of]
(** aws_lambda_function__ephemeral_storage *)

type aws_lambda_function__file_system_config = {
  arn : string prop;  (** arn *)
  local_mount_path : string prop;  (** local_mount_path *)
}
[@@deriving yojson_of]
(** aws_lambda_function__file_system_config *)

type aws_lambda_function__image_config = {
  command : string prop list option; [@option]  (** command *)
  entry_point : string prop list option; [@option]
      (** entry_point *)
  working_directory : string prop option; [@option]
      (** working_directory *)
}
[@@deriving yojson_of]
(** aws_lambda_function__image_config *)

type aws_lambda_function__logging_config = {
  application_log_level : string prop option; [@option]
      (** application_log_level *)
  log_format : string prop;  (** log_format *)
  log_group : string prop option; [@option]  (** log_group *)
  system_log_level : string prop option; [@option]
      (** system_log_level *)
}
[@@deriving yojson_of]
(** aws_lambda_function__logging_config *)

type aws_lambda_function__snap_start = {
  apply_on : string prop;  (** apply_on *)
  optimization_status : string prop;  (** optimization_status *)
}
[@@deriving yojson_of]
(** aws_lambda_function__snap_start *)

type aws_lambda_function__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lambda_function__timeouts *)

type aws_lambda_function__tracing_config = {
  mode : string prop;  (** mode *)
}
[@@deriving yojson_of]
(** aws_lambda_function__tracing_config *)

type aws_lambda_function__vpc_config = {
  ipv6_allowed_for_dual_stack : bool prop option; [@option]
      (** ipv6_allowed_for_dual_stack *)
  security_group_ids : string prop list;  (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_lambda_function__vpc_config *)

type aws_lambda_function = {
  architectures : string prop list option; [@option]
      (** architectures *)
  code_signing_config_arn : string prop option; [@option]
      (** code_signing_config_arn *)
  description : string prop option; [@option]  (** description *)
  filename : string prop option; [@option]  (** filename *)
  function_name : string prop;  (** function_name *)
  handler : string prop option; [@option]  (** handler *)
  id : string prop option; [@option]  (** id *)
  image_uri : string prop option; [@option]  (** image_uri *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  layers : string prop list option; [@option]  (** layers *)
  memory_size : float prop option; [@option]  (** memory_size *)
  package_type : string prop option; [@option]  (** package_type *)
  publish : bool prop option; [@option]  (** publish *)
  replace_security_groups_on_destroy : bool prop option; [@option]
      (** replace_security_groups_on_destroy *)
  replacement_security_group_ids : string prop list option; [@option]
      (** replacement_security_group_ids *)
  reserved_concurrent_executions : float prop option; [@option]
      (** reserved_concurrent_executions *)
  role : string prop;  (** role *)
  runtime : string prop option; [@option]  (** runtime *)
  s3_bucket : string prop option; [@option]  (** s3_bucket *)
  s3_key : string prop option; [@option]  (** s3_key *)
  s3_object_version : string prop option; [@option]
      (** s3_object_version *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  source_code_hash : string prop option; [@option]
      (** source_code_hash *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeout : float prop option; [@option]  (** timeout *)
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

let aws_lambda_function ?architectures ?code_signing_config_arn
    ?description ?filename ?handler ?id ?image_uri ?kms_key_arn
    ?layers ?memory_size ?package_type ?publish
    ?replace_security_groups_on_destroy
    ?replacement_security_group_ids ?reserved_concurrent_executions
    ?runtime ?s3_bucket ?s3_key ?s3_object_version ?skip_destroy
    ?source_code_hash ?tags ?tags_all ?timeout ?timeouts
    ~function_name ~role ~dead_letter_config ~environment
    ~ephemeral_storage ~file_system_config ~image_config
    ~logging_config ~snap_start ~tracing_config ~vpc_config
    __resource_id =
  let __resource_type = "aws_lambda_function" in
  let __resource =
    {
      architectures;
      code_signing_config_arn;
      description;
      filename;
      function_name;
      handler;
      id;
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
      source_code_hash;
      tags;
      tags_all;
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
