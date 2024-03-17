(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_dms_replication_task = {
  cdc_start_time : string option; [@option]  (** cdc_start_time *)
  migration_type : string;  (** migration_type *)
  replication_instance_arn : string;  (** replication_instance_arn *)
  replication_task_id : string;  (** replication_task_id *)
  replication_task_settings : string option; [@option]
      (** replication_task_settings *)
  source_endpoint_arn : string;  (** source_endpoint_arn *)
  start_replication_task : bool option; [@option]
      (** start_replication_task *)
  table_mappings : string;  (** table_mappings *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_endpoint_arn : string;  (** target_endpoint_arn *)
}
[@@deriving yojson_of]
(** aws_dms_replication_task *)

let aws_dms_replication_task ?cdc_start_time
    ?replication_task_settings ?start_replication_task ?tags
    ~migration_type ~replication_instance_arn ~replication_task_id
    ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
    __resource_id =
  let __resource_type = "aws_dms_replication_task" in
  let __resource =
    {
      cdc_start_time;
      migration_type;
      replication_instance_arn;
      replication_task_id;
      replication_task_settings;
      source_endpoint_arn;
      start_replication_task;
      table_mappings;
      tags;
      target_endpoint_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_task __resource);
  ()
