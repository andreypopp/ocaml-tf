(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_datasync_task__excludes = {
  filter_type : string option; [@option]  (** filter_type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_datasync_task__excludes *)

type aws_datasync_task__includes = {
  filter_type : string option; [@option]  (** filter_type *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_datasync_task__includes *)

type aws_datasync_task__options = {
  atime : string option; [@option]  (** atime *)
  bytes_per_second : float option; [@option]  (** bytes_per_second *)
  gid : string option; [@option]  (** gid *)
  log_level : string option; [@option]  (** log_level *)
  mtime : string option; [@option]  (** mtime *)
  object_tags : string option; [@option]  (** object_tags *)
  overwrite_mode : string option; [@option]  (** overwrite_mode *)
  posix_permissions : string option; [@option]
      (** posix_permissions *)
  preserve_deleted_files : string option; [@option]
      (** preserve_deleted_files *)
  preserve_devices : string option; [@option]
      (** preserve_devices *)
  security_descriptor_copy_flags : string option; [@option]
      (** security_descriptor_copy_flags *)
  task_queueing : string option; [@option]  (** task_queueing *)
  transfer_mode : string option; [@option]  (** transfer_mode *)
  uid : string option; [@option]  (** uid *)
  verify_mode : string option; [@option]  (** verify_mode *)
}
[@@deriving yojson_of]
(** aws_datasync_task__options *)

type aws_datasync_task__schedule = {
  schedule_expression : string;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** aws_datasync_task__schedule *)

type aws_datasync_task__task_report_config__report_overrides = {
  deleted_override : string option; [@option]
      (** deleted_override *)
  skipped_override : string option; [@option]
      (** skipped_override *)
  transferred_override : string option; [@option]
      (** transferred_override *)
  verified_override : string option; [@option]
      (** verified_override *)
}
[@@deriving yojson_of]
(** aws_datasync_task__task_report_config__report_overrides *)

type aws_datasync_task__task_report_config__s3_destination = {
  bucket_access_role_arn : string;  (** bucket_access_role_arn *)
  s3_bucket_arn : string;  (** s3_bucket_arn *)
  subdirectory : string option; [@option]  (** subdirectory *)
}
[@@deriving yojson_of]
(** aws_datasync_task__task_report_config__s3_destination *)

type aws_datasync_task__task_report_config = {
  output_type : string option; [@option]  (** output_type *)
  report_level : string option; [@option]  (** report_level *)
  s3_object_versioning : string option; [@option]
      (** s3_object_versioning *)
  report_overrides :
    aws_datasync_task__task_report_config__report_overrides list;
  s3_destination :
    aws_datasync_task__task_report_config__s3_destination list;
}
[@@deriving yojson_of]
(** aws_datasync_task__task_report_config *)

type aws_datasync_task__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_datasync_task__timeouts *)

type aws_datasync_task = {
  cloudwatch_log_group_arn : string option; [@option]
      (** cloudwatch_log_group_arn *)
  destination_location_arn : string;  (** destination_location_arn *)
  name : string option; [@option]  (** name *)
  source_location_arn : string;  (** source_location_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  excludes : aws_datasync_task__excludes list;
  includes : aws_datasync_task__includes list;
  options : aws_datasync_task__options list;
  schedule : aws_datasync_task__schedule list;
  task_report_config : aws_datasync_task__task_report_config list;
  timeouts : aws_datasync_task__timeouts option;
}
[@@deriving yojson_of]
(** aws_datasync_task *)

let aws_datasync_task ?cloudwatch_log_group_arn ?name ?tags ?timeouts
    ~destination_location_arn ~source_location_arn ~excludes
    ~includes ~options ~schedule ~task_report_config __resource_id =
  let __resource_type = "aws_datasync_task" in
  let __resource =
    {
      cloudwatch_log_group_arn;
      destination_location_arn;
      name;
      source_location_arn;
      tags;
      excludes;
      includes;
      options;
      schedule;
      task_report_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_datasync_task __resource);
  ()
