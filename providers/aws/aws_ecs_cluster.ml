(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecs_cluster__configuration__execute_command_configuration__log_configuration = {
  cloud_watch_encryption_enabled : bool prop option; [@option]
      (** cloud_watch_encryption_enabled *)
  cloud_watch_log_group_name : string prop option; [@option]
      (** cloud_watch_log_group_name *)
  s3_bucket_encryption_enabled : bool prop option; [@option]
      (** s3_bucket_encryption_enabled *)
  s3_bucket_name : string prop option; [@option]
      (** s3_bucket_name *)
  s3_key_prefix : string prop option; [@option]  (** s3_key_prefix *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster__configuration__execute_command_configuration__log_configuration *)

type aws_ecs_cluster__configuration__execute_command_configuration = {
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  logging : string prop option; [@option]  (** logging *)
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
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster__service_connect_defaults *)

type aws_ecs_cluster__setting = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_ecs_cluster__setting *)

type aws_ecs_cluster = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : aws_ecs_cluster__configuration list;
  service_connect_defaults :
    aws_ecs_cluster__service_connect_defaults list;
  setting : aws_ecs_cluster__setting list;
}
[@@deriving yojson_of]
(** aws_ecs_cluster *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_ecs_cluster ?id ?tags ?tags_all ~name ~configuration
    ~service_connect_defaults ~setting __resource_id =
  let __resource_type = "aws_ecs_cluster" in
  let __resource =
    ({
       id;
       name;
       tags;
       tags_all;
       configuration;
       service_connect_defaults;
       setting;
     }
      : aws_ecs_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecs_cluster __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
