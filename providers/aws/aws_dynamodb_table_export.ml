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

type aws_dynamodb_table_export = {
  export_format : string prop option; [@option]
  export_time : string prop option; [@option]
  id : string prop option; [@option]
  s3_bucket : string prop;
  s3_bucket_owner : string prop option; [@option]
  s3_prefix : string prop option; [@option]
  s3_sse_algorithm : string prop option; [@option]
  s3_sse_kms_key_id : string prop option; [@option]
  table_arn : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_table_export) -> ()

let yojson_of_aws_dynamodb_table_export =
  (function
   | {
       export_format = v_export_format;
       export_time = v_export_time;
       id = v_id;
       s3_bucket = v_s3_bucket;
       s3_bucket_owner = v_s3_bucket_owner;
       s3_prefix = v_s3_prefix;
       s3_sse_algorithm = v_s3_sse_algorithm;
       s3_sse_kms_key_id = v_s3_sse_kms_key_id;
       table_arn = v_table_arn;
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
         let arg = yojson_of_prop yojson_of_string v_table_arn in
         ("table_arn", arg) :: bnds
       in
       let bnds =
         match v_s3_sse_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_sse_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_sse_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_sse_algorithm", arg in
             bnd :: bnds
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
         match v_s3_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
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
         match v_export_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "export_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_export_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "export_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_table_export -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_table_export

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_dynamodb_table_export ?export_format ?export_time ?id
    ?s3_bucket_owner ?s3_prefix ?s3_sse_algorithm ?s3_sse_kms_key_id
    ?timeouts ~s3_bucket ~table_arn () : aws_dynamodb_table_export =
  {
    export_format;
    export_time;
    id;
    s3_bucket;
    s3_bucket_owner;
    s3_prefix;
    s3_sse_algorithm;
    s3_sse_kms_key_id;
    table_arn;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  billed_size_in_bytes : float prop;
  end_time : string prop;
  export_format : string prop;
  export_status : string prop;
  export_time : string prop;
  id : string prop;
  item_count : float prop;
  manifest_files_s3_key : string prop;
  s3_bucket : string prop;
  s3_bucket_owner : string prop;
  s3_prefix : string prop;
  s3_sse_algorithm : string prop;
  s3_sse_kms_key_id : string prop;
  start_time : string prop;
  table_arn : string prop;
}

let make ?export_format ?export_time ?id ?s3_bucket_owner ?s3_prefix
    ?s3_sse_algorithm ?s3_sse_kms_key_id ?timeouts ~s3_bucket
    ~table_arn __id =
  let __type = "aws_dynamodb_table_export" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       billed_size_in_bytes =
         Prop.computed __type __id "billed_size_in_bytes";
       end_time = Prop.computed __type __id "end_time";
       export_format = Prop.computed __type __id "export_format";
       export_status = Prop.computed __type __id "export_status";
       export_time = Prop.computed __type __id "export_time";
       id = Prop.computed __type __id "id";
       item_count = Prop.computed __type __id "item_count";
       manifest_files_s3_key =
         Prop.computed __type __id "manifest_files_s3_key";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       s3_bucket_owner = Prop.computed __type __id "s3_bucket_owner";
       s3_prefix = Prop.computed __type __id "s3_prefix";
       s3_sse_algorithm =
         Prop.computed __type __id "s3_sse_algorithm";
       s3_sse_kms_key_id =
         Prop.computed __type __id "s3_sse_kms_key_id";
       start_time = Prop.computed __type __id "start_time";
       table_arn = Prop.computed __type __id "table_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table_export
        (aws_dynamodb_table_export ?export_format ?export_time ?id
           ?s3_bucket_owner ?s3_prefix ?s3_sse_algorithm
           ?s3_sse_kms_key_id ?timeouts ~s3_bucket ~table_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?export_format ?export_time ?id
    ?s3_bucket_owner ?s3_prefix ?s3_sse_algorithm ?s3_sse_kms_key_id
    ?timeouts ~s3_bucket ~table_arn __id =
  let (r : _ Tf_core.resource) =
    make ?export_format ?export_time ?id ?s3_bucket_owner ?s3_prefix
      ?s3_sse_algorithm ?s3_sse_kms_key_id ?timeouts ~s3_bucket
      ~table_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
