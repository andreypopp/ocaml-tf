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
    ~target_endpoint_arn () : aws_dms_replication_task =
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

type t = {
  cdc_start_position : string prop;
  cdc_start_time : string prop;
  id : string prop;
  migration_type : string prop;
  replication_instance_arn : string prop;
  replication_task_arn : string prop;
  replication_task_id : string prop;
  replication_task_settings : string prop;
  source_endpoint_arn : string prop;
  start_replication_task : bool prop;
  status : string prop;
  table_mappings : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_endpoint_arn : string prop;
}

let register ?tf_module ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?start_replication_task ?tags
    ?tags_all ~migration_type ~replication_instance_arn
    ~replication_task_id ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn __resource_id =
  let __resource_type = "aws_dms_replication_task" in
  let __resource =
    aws_dms_replication_task ?cdc_start_position ?cdc_start_time ?id
      ?replication_task_settings ?start_replication_task ?tags
      ?tags_all ~migration_type ~replication_instance_arn
      ~replication_task_id ~source_endpoint_arn ~table_mappings
      ~target_endpoint_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dms_replication_task __resource);
  let __resource_attributes =
    ({
       cdc_start_position =
         Prop.computed __resource_type __resource_id
           "cdc_start_position";
       cdc_start_time =
         Prop.computed __resource_type __resource_id "cdc_start_time";
       id = Prop.computed __resource_type __resource_id "id";
       migration_type =
         Prop.computed __resource_type __resource_id "migration_type";
       replication_instance_arn =
         Prop.computed __resource_type __resource_id
           "replication_instance_arn";
       replication_task_arn =
         Prop.computed __resource_type __resource_id
           "replication_task_arn";
       replication_task_id =
         Prop.computed __resource_type __resource_id
           "replication_task_id";
       replication_task_settings =
         Prop.computed __resource_type __resource_id
           "replication_task_settings";
       source_endpoint_arn =
         Prop.computed __resource_type __resource_id
           "source_endpoint_arn";
       start_replication_task =
         Prop.computed __resource_type __resource_id
           "start_replication_task";
       status = Prop.computed __resource_type __resource_id "status";
       table_mappings =
         Prop.computed __resource_type __resource_id "table_mappings";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       target_endpoint_arn =
         Prop.computed __resource_type __resource_id
           "target_endpoint_arn";
     }
      : t)
  in
  __resource_attributes
