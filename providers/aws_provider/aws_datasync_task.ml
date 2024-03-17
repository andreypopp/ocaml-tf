(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_datasync_task__excludes = {
  filter_type : string prop option; [@option]  (** filter_type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_datasync_task__excludes *)

type aws_datasync_task__includes = {
  filter_type : string prop option; [@option]  (** filter_type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_datasync_task__includes *)

type aws_datasync_task__options = {
  atime : string prop option; [@option]  (** atime *)
  bytes_per_second : float prop option; [@option]
      (** bytes_per_second *)
  gid : string prop option; [@option]  (** gid *)
  log_level : string prop option; [@option]  (** log_level *)
  mtime : string prop option; [@option]  (** mtime *)
  object_tags : string prop option; [@option]  (** object_tags *)
  overwrite_mode : string prop option; [@option]
      (** overwrite_mode *)
  posix_permissions : string prop option; [@option]
      (** posix_permissions *)
  preserve_deleted_files : string prop option; [@option]
      (** preserve_deleted_files *)
  preserve_devices : string prop option; [@option]
      (** preserve_devices *)
  security_descriptor_copy_flags : string prop option; [@option]
      (** security_descriptor_copy_flags *)
  task_queueing : string prop option; [@option]  (** task_queueing *)
  transfer_mode : string prop option; [@option]  (** transfer_mode *)
  uid : string prop option; [@option]  (** uid *)
  verify_mode : string prop option; [@option]  (** verify_mode *)
}
[@@deriving yojson_of]
(** aws_datasync_task__options *)

type aws_datasync_task__schedule = {
  schedule_expression : string prop;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_datasync_task__schedule *)

type aws_datasync_task__task_report_config__report_overrides = {
  deleted_override : string prop option; [@option]
      (** deleted_override *)
  skipped_override : string prop option; [@option]
      (** skipped_override *)
  transferred_override : string prop option; [@option]
      (** transferred_override *)
  verified_override : string prop option; [@option]
      (** verified_override *)
}
[@@deriving yojson_of]
(** aws_datasync_task__task_report_config__report_overrides *)

type aws_datasync_task__task_report_config__s3_destination = {
  bucket_access_role_arn : string prop;
      (** bucket_access_role_arn *)
  s3_bucket_arn : string prop;  (** s3_bucket_arn *)
  subdirectory : string prop option; [@option]  (** subdirectory *)
}
[@@deriving yojson_of]
(** aws_datasync_task__task_report_config__s3_destination *)

type aws_datasync_task__task_report_config = {
  output_type : string prop option; [@option]  (** output_type *)
  report_level : string prop option; [@option]  (** report_level *)
  s3_object_versioning : string prop option; [@option]
      (** s3_object_versioning *)
  report_overrides :
    aws_datasync_task__task_report_config__report_overrides list;
  s3_destination :
    aws_datasync_task__task_report_config__s3_destination list;
}
[@@deriving yojson_of]
(** aws_datasync_task__task_report_config *)

type aws_datasync_task__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_datasync_task__timeouts *)

type aws_datasync_task = {
  cloudwatch_log_group_arn : string prop option; [@option]
      (** cloudwatch_log_group_arn *)
  destination_location_arn : string prop;
      (** destination_location_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  source_location_arn : string prop;  (** source_location_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  excludes : aws_datasync_task__excludes list;
  includes : aws_datasync_task__includes list;
  options : aws_datasync_task__options list;
  schedule : aws_datasync_task__schedule list;
  task_report_config : aws_datasync_task__task_report_config list;
  timeouts : aws_datasync_task__timeouts option;
}
[@@deriving yojson_of]
(** aws_datasync_task *)

type t = {
  arn : string prop;
  cloudwatch_log_group_arn : string prop;
  destination_location_arn : string prop;
  id : string prop;
  name : string prop;
  source_location_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_datasync_task ?cloudwatch_log_group_arn ?id ?name ?tags
    ?tags_all ?timeouts ~destination_location_arn
    ~source_location_arn ~excludes ~includes ~options ~schedule
    ~task_report_config __resource_id =
  let __resource_type = "aws_datasync_task" in
  let __resource =
    ({
       cloudwatch_log_group_arn;
       destination_location_arn;
       id;
       name;
       source_location_arn;
       tags;
       tags_all;
       excludes;
       includes;
       options;
       schedule;
       task_report_config;
       timeouts;
     }
      : aws_datasync_task)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_task __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cloudwatch_log_group_arn =
         Prop.computed __resource_type __resource_id
           "cloudwatch_log_group_arn";
       destination_location_arn =
         Prop.computed __resource_type __resource_id
           "destination_location_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       source_location_arn =
         Prop.computed __resource_type __resource_id
           "source_location_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
