(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dms_replication_task = {
  cdc_start_position : string prop option; [@option]
      (** cdc_start_position *)
  cdc_start_time : string prop option; [@option]
      (** cdc_start_time *)
  id : string prop option; [@option]  (** id *)
  migration_type : string prop;  (** migration_type *)
  replication_instance_arn : string prop;
      (** replication_instance_arn *)
  replication_task_id : string prop;  (** replication_task_id *)
  replication_task_settings : string prop option; [@option]
      (** replication_task_settings *)
  source_endpoint_arn : string prop;  (** source_endpoint_arn *)
  start_replication_task : bool prop option; [@option]
      (** start_replication_task *)
  table_mappings : string prop;  (** table_mappings *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_endpoint_arn : string prop;  (** target_endpoint_arn *)
}
[@@deriving yojson_of]
(** aws_dms_replication_task *)

let aws_dms_replication_task ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?start_replication_task ?tags
    ?tags_all ~migration_type ~replication_instance_arn
    ~replication_task_id ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn __resource_id =
  let __resource_type = "aws_dms_replication_task" in
  let __resource =
    {
      cdc_start_position;
      cdc_start_time;
      id;
      migration_type;
      replication_instance_arn;
      replication_task_id;
      replication_task_settings;
      source_endpoint_arn;
      start_replication_task;
      table_mappings;
      tags;
      tags_all;
      target_endpoint_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_task __resource);
  ()
