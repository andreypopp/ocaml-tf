(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ecs_cluster__configuration__execute_command_configuration__log_configuration = {
  cloud_watch_encryption_enabled : bool option; [@option]
      (** cloud_watch_encryption_enabled *)
  cloud_watch_log_group_name : string option; [@option]
      (** cloud_watch_log_group_name *)
  s3_bucket_encryption_enabled : bool option; [@option]
      (** s3_bucket_encryption_enabled *)
  s3_bucket_name : string option; [@option]  (** s3_bucket_name *)
  s3_key_prefix : string option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster__configuration__execute_command_configuration__log_configuration *)

type aws_ecs_cluster__configuration__execute_command_configuration = {
  kms_key_id : string option; [@option]  (** kms_key_id *)
  logging : string option; [@option]  (** logging *)
  log_configuration :
    aws_ecs_cluster__configuration__execute_command_configuration__log_configuration
    list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster__configuration__execute_command_configuration *)

type aws_ecs_cluster__configuration = {
  execute_command_configuration :
    aws_ecs_cluster__configuration__execute_command_configuration
    list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster__configuration *)

type aws_ecs_cluster__service_connect_defaults = {
  namespace : string;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster__service_connect_defaults *)

type aws_ecs_cluster__setting = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster__setting *)

type aws_ecs_cluster = {
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  configuration : aws_ecs_cluster__configuration list;
  service_connect_defaults :
    aws_ecs_cluster__service_connect_defaults list;
  setting : aws_ecs_cluster__setting list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster *)

let aws_ecs_cluster ?tags ~name ~configuration
    ~service_connect_defaults ~setting __resource_id =
  let __resource_type = "aws_ecs_cluster" in
  let __resource =
    { name; tags; configuration; service_connect_defaults; setting }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_cluster __resource);
  ()
