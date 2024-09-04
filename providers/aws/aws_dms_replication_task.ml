(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_replication_task = {
  cdc_start_position : string prop option; [@option]
  cdc_start_time : string prop option; [@option]
  id : string prop option; [@option]
  migration_type : string prop;
  replication_instance_arn : string prop;
  replication_task_id : string prop;
  replication_task_settings : string prop option; [@option]
  resource_identifier : string prop option; [@option]
  source_endpoint_arn : string prop;
  start_replication_task : bool prop option; [@option]
  table_mappings : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  target_endpoint_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_task) -> ()

let yojson_of_aws_dms_replication_task =
  (function
   | {
       cdc_start_position = v_cdc_start_position;
       cdc_start_time = v_cdc_start_time;
       id = v_id;
       migration_type = v_migration_type;
       replication_instance_arn = v_replication_instance_arn;
       replication_task_id = v_replication_task_id;
       replication_task_settings = v_replication_task_settings;
       resource_identifier = v_resource_identifier;
       source_endpoint_arn = v_source_endpoint_arn;
       start_replication_task = v_start_replication_task;
       table_mappings = v_table_mappings;
       tags = v_tags;
       tags_all = v_tags_all;
       target_endpoint_arn = v_target_endpoint_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_endpoint_arn
         in
         ("target_endpoint_arn", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_table_mappings
         in
         ("table_mappings", arg) :: bnds
       in
       let bnds =
         match v_start_replication_task with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "start_replication_task", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_endpoint_arn
         in
         ("source_endpoint_arn", arg) :: bnds
       in
       let bnds =
         match v_resource_identifier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_identifier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_replication_task_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "replication_task_settings", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_task_id
         in
         ("replication_task_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_instance_arn
         in
         ("replication_instance_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_migration_type
         in
         ("migration_type", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdc_start_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cdc_start_position with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cdc_start_position", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dms_replication_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_replication_task

[@@@deriving.end]

let aws_dms_replication_task ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?resource_identifier
    ?start_replication_task ?tags ?tags_all ~migration_type
    ~replication_instance_arn ~replication_task_id
    ~source_endpoint_arn ~table_mappings ~target_endpoint_arn () :
    aws_dms_replication_task =
  {
    cdc_start_position;
    cdc_start_time;
    id;
    migration_type;
    replication_instance_arn;
    replication_task_id;
    replication_task_settings;
    resource_identifier;
    source_endpoint_arn;
    start_replication_task;
    table_mappings;
    tags;
    tags_all;
    target_endpoint_arn;
  }

type t = {
  tf_name : string;
  cdc_start_position : string prop;
  cdc_start_time : string prop;
  id : string prop;
  migration_type : string prop;
  replication_instance_arn : string prop;
  replication_task_arn : string prop;
  replication_task_id : string prop;
  replication_task_settings : string prop;
  resource_identifier : string prop;
  source_endpoint_arn : string prop;
  start_replication_task : bool prop;
  status : string prop;
  table_mappings : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_endpoint_arn : string prop;
}

let make ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?resource_identifier
    ?start_replication_task ?tags ?tags_all ~migration_type
    ~replication_instance_arn ~replication_task_id
    ~source_endpoint_arn ~table_mappings ~target_endpoint_arn __id =
  let __type = "aws_dms_replication_task" in
  let __attrs =
    ({
       tf_name = __id;
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
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
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
           ?id ?replication_task_settings ?resource_identifier
           ?start_replication_task ?tags ?tags_all ~migration_type
           ~replication_instance_arn ~replication_task_id
           ~source_endpoint_arn ~table_mappings ~target_endpoint_arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?cdc_start_position ?cdc_start_time ?id
    ?replication_task_settings ?resource_identifier
    ?start_replication_task ?tags ?tags_all ~migration_type
    ~replication_instance_arn ~replication_task_id
    ~source_endpoint_arn ~table_mappings ~target_endpoint_arn __id =
  let (r : _ Tf_core.resource) =
    make ?cdc_start_position ?cdc_start_time ?id
      ?replication_task_settings ?resource_identifier
      ?start_replication_task ?tags ?tags_all ~migration_type
      ~replication_instance_arn ~replication_task_id
      ~source_endpoint_arn ~table_mappings ~target_endpoint_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
