(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration__audit_log__destination__firehose_stream = {
  stream_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_configuration__audit_log__destination__firehose_stream) ->
  ()

let yojson_of_destination_configuration__audit_log__destination__firehose_stream
    =
  (function
   | { stream_name = v_stream_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_name in
         ("stream_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration__audit_log__destination__firehose_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_configuration__audit_log__destination__firehose_stream

[@@@deriving.end]

type destination_configuration__audit_log__destination__s3_bucket = {
  bucket_name : string prop;
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       destination_configuration__audit_log__destination__s3_bucket) ->
  ()

let yojson_of_destination_configuration__audit_log__destination__s3_bucket
    =
  (function
   | { bucket_name = v_bucket_name; prefix = v_prefix } ->
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
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : destination_configuration__audit_log__destination__s3_bucket ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_destination_configuration__audit_log__destination__s3_bucket

[@@@deriving.end]

type destination_configuration__audit_log__destination = {
  firehose_stream :
    destination_configuration__audit_log__destination__firehose_stream
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_bucket :
    destination_configuration__audit_log__destination__s3_bucket list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : destination_configuration__audit_log__destination) -> ()

let yojson_of_destination_configuration__audit_log__destination =
  (function
   | { firehose_stream = v_firehose_stream; s3_bucket = v_s3_bucket }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_bucket then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_configuration__audit_log__destination__s3_bucket)
               v_s3_bucket
           in
           let bnd = "s3_bucket", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_firehose_stream then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_configuration__audit_log__destination__firehose_stream)
               v_firehose_stream
           in
           let bnd = "firehose_stream", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_configuration__audit_log__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration__audit_log__destination

[@@@deriving.end]

type destination_configuration__audit_log = {
  destination :
    destination_configuration__audit_log__destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration__audit_log) -> ()

let yojson_of_destination_configuration__audit_log =
  (function
   | { destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_configuration__audit_log__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_configuration__audit_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration__audit_log

[@@@deriving.end]

type destination_configuration = {
  audit_log : destination_configuration__audit_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_configuration) -> ()

let yojson_of_destination_configuration =
  (function
   | { audit_log = v_audit_log } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_audit_log then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_destination_configuration__audit_log)
               v_audit_log
           in
           let bnd = "audit_log", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_configuration

[@@@deriving.end]

type processing_configuration__audit_log = {
  format : string prop;
  schema : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : processing_configuration__audit_log) -> ()

let yojson_of_processing_configuration__audit_log =
  (function
   | { format = v_format; schema = v_schema } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       `Assoc bnds
    : processing_configuration__audit_log ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_processing_configuration__audit_log

[@@@deriving.end]

type processing_configuration = {
  audit_log : processing_configuration__audit_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : processing_configuration) -> ()

let yojson_of_processing_configuration =
  (function
   | { audit_log = v_audit_log } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_audit_log then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_processing_configuration__audit_log)
               v_audit_log
           in
           let bnd = "audit_log", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : processing_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_processing_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type aws_appfabric_ingestion_destination = {
  app_bundle_arn : string prop;
  ingestion_arn : string prop;
  tags : (string * string prop) list option; [@option]
  destination_configuration : destination_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  processing_configuration : processing_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appfabric_ingestion_destination) -> ()

let yojson_of_aws_appfabric_ingestion_destination =
  (function
   | {
       app_bundle_arn = v_app_bundle_arn;
       ingestion_arn = v_ingestion_arn;
       tags = v_tags;
       destination_configuration = v_destination_configuration;
       processing_configuration = v_processing_configuration;
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
         if Stdlib.( = ) [] v_processing_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_processing_configuration)
               v_processing_configuration
           in
           let bnd = "processing_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_configuration)
               v_destination_configuration
           in
           let bnd = "destination_configuration", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_ingestion_arn in
         ("ingestion_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_bundle_arn
         in
         ("app_bundle_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_appfabric_ingestion_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appfabric_ingestion_destination

[@@@deriving.end]

let destination_configuration__audit_log__destination__firehose_stream
    ~stream_name () :
    destination_configuration__audit_log__destination__firehose_stream
    =
  { stream_name }

let destination_configuration__audit_log__destination__s3_bucket
    ?prefix ~bucket_name () :
    destination_configuration__audit_log__destination__s3_bucket =
  { bucket_name; prefix }

let destination_configuration__audit_log__destination
    ?(firehose_stream = []) ?(s3_bucket = []) () :
    destination_configuration__audit_log__destination =
  { firehose_stream; s3_bucket }

let destination_configuration__audit_log ?(destination = []) () :
    destination_configuration__audit_log =
  { destination }

let destination_configuration ?(audit_log = []) () :
    destination_configuration =
  { audit_log }

let processing_configuration__audit_log ~format ~schema () :
    processing_configuration__audit_log =
  { format; schema }

let processing_configuration ?(audit_log = []) () :
    processing_configuration =
  { audit_log }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_appfabric_ingestion_destination ?tags
    ?(destination_configuration = [])
    ?(processing_configuration = []) ?timeouts ~app_bundle_arn
    ~ingestion_arn () : aws_appfabric_ingestion_destination =
  {
    app_bundle_arn;
    ingestion_arn;
    tags;
    destination_configuration;
    processing_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  app_bundle_arn : string prop;
  arn : string prop;
  id : string prop;
  ingestion_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?(destination_configuration = [])
    ?(processing_configuration = []) ?timeouts ~app_bundle_arn
    ~ingestion_arn __id =
  let __type = "aws_appfabric_ingestion_destination" in
  let __attrs =
    ({
       tf_name = __id;
       app_bundle_arn = Prop.computed __type __id "app_bundle_arn";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       ingestion_arn = Prop.computed __type __id "ingestion_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appfabric_ingestion_destination
        (aws_appfabric_ingestion_destination ?tags
           ~destination_configuration ~processing_configuration
           ?timeouts ~app_bundle_arn ~ingestion_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?(destination_configuration = [])
    ?(processing_configuration = []) ?timeouts ~app_bundle_arn
    ~ingestion_arn __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~destination_configuration ~processing_configuration
      ?timeouts ~app_bundle_arn ~ingestion_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
