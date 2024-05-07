(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs__cloudwatch_logs = {
  enabled : bool prop;
  log_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_logs__cloudwatch_logs) -> ()

let yojson_of_access_logs__cloudwatch_logs =
  (function
   | { enabled = v_enabled; log_group = v_log_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : access_logs__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs__cloudwatch_logs

[@@@deriving.end]

type access_logs__kinesis_data_firehose = {
  delivery_stream : string prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_logs__kinesis_data_firehose) -> ()

let yojson_of_access_logs__kinesis_data_firehose =
  (function
   | { delivery_stream = v_delivery_stream; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_delivery_stream with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_stream", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_logs__kinesis_data_firehose ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs__kinesis_data_firehose

[@@@deriving.end]

type access_logs__s3 = {
  bucket_name : string prop option; [@option]
  bucket_owner : string prop option; [@option]
  enabled : bool prop;
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_logs__s3) -> ()

let yojson_of_access_logs__s3 =
  (function
   | {
       bucket_name = v_bucket_name;
       bucket_owner = v_bucket_owner;
       enabled = v_enabled;
       prefix = v_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_logs__s3 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs__s3

[@@@deriving.end]

type access_logs = {
  include_trust_context : bool prop option; [@option]
  log_version : string prop option; [@option]
  cloudwatch_logs : access_logs__cloudwatch_logs list;
  kinesis_data_firehose : access_logs__kinesis_data_firehose list;
  s3 : access_logs__s3 list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_logs) -> ()

let yojson_of_access_logs =
  (function
   | {
       include_trust_context = v_include_trust_context;
       log_version = v_log_version;
       cloudwatch_logs = v_cloudwatch_logs;
       kinesis_data_firehose = v_kinesis_data_firehose;
       s3 = v_s3;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_access_logs__s3 v_s3 in
         ("s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_access_logs__kinesis_data_firehose
             v_kinesis_data_firehose
         in
         ("kinesis_data_firehose", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_logs__cloudwatch_logs
             v_cloudwatch_logs
         in
         ("cloudwatch_logs", arg) :: bnds
       in
       let bnds =
         match v_log_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_trust_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_trust_context", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_logs

[@@@deriving.end]

type aws_verifiedaccess_instance_logging_configuration = {
  id : string prop option; [@option]
  verifiedaccess_instance_id : string prop;
  access_logs : access_logs list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_verifiedaccess_instance_logging_configuration) -> ()

let yojson_of_aws_verifiedaccess_instance_logging_configuration =
  (function
   | {
       id = v_id;
       verifiedaccess_instance_id = v_verifiedaccess_instance_id;
       access_logs = v_access_logs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_access_logs v_access_logs
         in
         ("access_logs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_verifiedaccess_instance_id
         in
         ("verifiedaccess_instance_id", arg) :: bnds
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
    : aws_verifiedaccess_instance_logging_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedaccess_instance_logging_configuration

[@@@deriving.end]

let access_logs__cloudwatch_logs ?log_group ~enabled () :
    access_logs__cloudwatch_logs =
  { enabled; log_group }

let access_logs__kinesis_data_firehose ?delivery_stream ~enabled () :
    access_logs__kinesis_data_firehose =
  { delivery_stream; enabled }

let access_logs__s3 ?bucket_name ?bucket_owner ?prefix ~enabled () :
    access_logs__s3 =
  { bucket_name; bucket_owner; enabled; prefix }

let access_logs ?include_trust_context ?log_version
    ?(cloudwatch_logs = []) ?(kinesis_data_firehose = []) ?(s3 = [])
    () : access_logs =
  {
    include_trust_context;
    log_version;
    cloudwatch_logs;
    kinesis_data_firehose;
    s3;
  }

let aws_verifiedaccess_instance_logging_configuration ?id
    ~verifiedaccess_instance_id ~access_logs () :
    aws_verifiedaccess_instance_logging_configuration =
  { id; verifiedaccess_instance_id; access_logs }

type t = {
  tf_name : string;
  id : string prop;
  verifiedaccess_instance_id : string prop;
}

let make ?id ~verifiedaccess_instance_id ~access_logs __id =
  let __type = "aws_verifiedaccess_instance_logging_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       verifiedaccess_instance_id =
         Prop.computed __type __id "verifiedaccess_instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_instance_logging_configuration
        (aws_verifiedaccess_instance_logging_configuration ?id
           ~verifiedaccess_instance_id ~access_logs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~verifiedaccess_instance_id ~access_logs
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~verifiedaccess_instance_id ~access_logs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
