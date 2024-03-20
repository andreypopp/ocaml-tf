(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_rds_export_task = {
  export_only : string prop list option; [@option]
  export_task_identifier : string prop;
  iam_role_arn : string prop;
  kms_key_id : string prop;
  s3_bucket_name : string prop;
  s3_prefix : string prop option; [@option]
  source_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_export_task) -> ()

let yojson_of_aws_rds_export_task =
  (function
   | {
       export_only = v_export_only;
       export_task_identifier = v_export_task_identifier;
       iam_role_arn = v_iam_role_arn;
       kms_key_id = v_kms_key_id;
       s3_bucket_name = v_s3_bucket_name;
       s3_prefix = v_s3_prefix;
       source_arn = v_source_arn;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source_arn in
         ("source_arn", arg) :: bnds
       in
       let bnds =
         match v_s3_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_role_arn in
         ("iam_role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_export_task_identifier
         in
         ("export_task_identifier", arg) :: bnds
       in
       let bnds =
         match v_export_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "export_only", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_export_task -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_export_task

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_rds_export_task ?export_only ?s3_prefix ?timeouts
    ~export_task_identifier ~iam_role_arn ~kms_key_id ~s3_bucket_name
    ~source_arn () : aws_rds_export_task =
  {
    export_only;
    export_task_identifier;
    iam_role_arn;
    kms_key_id;
    s3_bucket_name;
    s3_prefix;
    source_arn;
    timeouts;
  }

type t = {
  export_only : string list prop;
  export_task_identifier : string prop;
  failure_cause : string prop;
  iam_role_arn : string prop;
  id : string prop;
  kms_key_id : string prop;
  percent_progress : float prop;
  s3_bucket_name : string prop;
  s3_prefix : string prop;
  snapshot_time : string prop;
  source_arn : string prop;
  source_type : string prop;
  status : string prop;
  task_end_time : string prop;
  task_start_time : string prop;
  warning_message : string prop;
}

let make ?export_only ?s3_prefix ?timeouts ~export_task_identifier
    ~iam_role_arn ~kms_key_id ~s3_bucket_name ~source_arn __id =
  let __type = "aws_rds_export_task" in
  let __attrs =
    ({
       export_only = Prop.computed __type __id "export_only";
       export_task_identifier =
         Prop.computed __type __id "export_task_identifier";
       failure_cause = Prop.computed __type __id "failure_cause";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       percent_progress =
         Prop.computed __type __id "percent_progress";
       s3_bucket_name = Prop.computed __type __id "s3_bucket_name";
       s3_prefix = Prop.computed __type __id "s3_prefix";
       snapshot_time = Prop.computed __type __id "snapshot_time";
       source_arn = Prop.computed __type __id "source_arn";
       source_type = Prop.computed __type __id "source_type";
       status = Prop.computed __type __id "status";
       task_end_time = Prop.computed __type __id "task_end_time";
       task_start_time = Prop.computed __type __id "task_start_time";
       warning_message = Prop.computed __type __id "warning_message";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_export_task
        (aws_rds_export_task ?export_only ?s3_prefix ?timeouts
           ~export_task_identifier ~iam_role_arn ~kms_key_id
           ~s3_bucket_name ~source_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?export_only ?s3_prefix ?timeouts
    ~export_task_identifier ~iam_role_arn ~kms_key_id ~s3_bucket_name
    ~source_arn __id =
  let (r : _ Tf_core.resource) =
    make ?export_only ?s3_prefix ?timeouts ~export_task_identifier
      ~iam_role_arn ~kms_key_id ~s3_bucket_name ~source_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
