(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?start_replication_task ?tags
    ?tags_all ~migration_type ~replication_instance_arn
    ~replication_task_id ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn __id =
  let __type = "aws_dms_replication_task" in
  let __attrs =
    ({
       cdc_start_position =
         Prop.computed __type __id "cdc_start_position";
       cdc_start_time = Prop.computed __type __id "cdc_start_time";
       id = Prop.computed __type __id "id";
       migration_type = Prop.computed __type __id "migration_type";
       replication_instance_arn =
         Prop.computed __type __id "replication_instance_arn";
       replication_task_arn =
         Prop.computed __type __id "replication_task_arn";
       replication_task_id =
         Prop.computed __type __id "replication_task_id";
       replication_task_settings =
         Prop.computed __type __id "replication_task_settings";
       source_endpoint_arn =
         Prop.computed __type __id "source_endpoint_arn";
       start_replication_task =
         Prop.computed __type __id "start_replication_task";
       status = Prop.computed __type __id "status";
       table_mappings = Prop.computed __type __id "table_mappings";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_endpoint_arn =
         Prop.computed __type __id "target_endpoint_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_task
        (aws_dms_replication_task ?cdc_start_position ?cdc_start_time
           ?id ?replication_task_settings ?start_replication_task
           ?tags ?tags_all ~migration_type ~replication_instance_arn
           ~replication_task_id ~source_endpoint_arn ~table_mappings
           ~target_endpoint_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?start_replication_task ?tags
    ?tags_all ~migration_type ~replication_instance_arn
    ~replication_task_id ~source_endpoint_arn ~table_mappings
    ~target_endpoint_arn __id =
  let (r : _ Tf_core.resource) =
    make ?cdc_start_position ?cdc_start_time ?id
      ?replication_task_settings ?start_replication_task ?tags
      ?tags_all ~migration_type ~replication_instance_arn
      ~replication_task_id ~source_endpoint_arn ~table_mappings
      ~target_endpoint_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
