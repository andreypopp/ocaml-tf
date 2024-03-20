(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_replication_task = {
  id : string prop option; [@option]
  replication_task_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_task) -> ()

let yojson_of_aws_dms_replication_task =
  (function
   | {
       id = v_id;
       replication_task_id = v_replication_task_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_replication_task_id
         in
         ("replication_task_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dms_replication_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_replication_task

[@@@deriving.end]

let aws_dms_replication_task ?id ?tags ~replication_task_id () :
    aws_dms_replication_task =
  { id; replication_task_id; tags }

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
  target_endpoint_arn : string prop;
}

let make ?id ?tags ~replication_task_id __id =
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
        (aws_dms_replication_task ?id ?tags ~replication_task_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~replication_task_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~replication_task_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
