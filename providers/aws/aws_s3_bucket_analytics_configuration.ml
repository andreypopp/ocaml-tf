(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  prefix : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { prefix = v_prefix; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type storage_class_analysis__data_export__destination__s3_bucket_destination = {
  bucket_account_id : string prop option; [@option]
  bucket_arn : string prop;
  format : string prop option; [@option]
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       storage_class_analysis__data_export__destination__s3_bucket_destination) ->
  ()

let yojson_of_storage_class_analysis__data_export__destination__s3_bucket_destination
    =
  (function
   | {
       bucket_account_id = v_bucket_account_id;
       bucket_arn = v_bucket_arn;
       format = v_format;
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
         match v_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "format", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_arn in
         ("bucket_arn", arg) :: bnds
       in
       let bnds =
         match v_bucket_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_class_analysis__data_export__destination__s3_bucket_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_storage_class_analysis__data_export__destination__s3_bucket_destination

[@@@deriving.end]

type storage_class_analysis__data_export__destination = {
  s3_bucket_destination :
    storage_class_analysis__data_export__destination__s3_bucket_destination
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : storage_class_analysis__data_export__destination) -> ()

let yojson_of_storage_class_analysis__data_export__destination =
  (function
   | { s3_bucket_destination = v_s3_bucket_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_bucket_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_class_analysis__data_export__destination__s3_bucket_destination)
               v_s3_bucket_destination
           in
           let bnd = "s3_bucket_destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_class_analysis__data_export__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_class_analysis__data_export__destination

[@@@deriving.end]

type storage_class_analysis__data_export = {
  output_schema_version : string prop option; [@option]
  destination : storage_class_analysis__data_export__destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_class_analysis__data_export) -> ()

let yojson_of_storage_class_analysis__data_export =
  (function
   | {
       output_schema_version = v_output_schema_version;
       destination = v_destination;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_class_analysis__data_export__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_output_schema_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_schema_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : storage_class_analysis__data_export ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_class_analysis__data_export

[@@@deriving.end]

type storage_class_analysis = {
  data_export : storage_class_analysis__data_export list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_class_analysis) -> ()

let yojson_of_storage_class_analysis =
  (function
   | { data_export = v_data_export } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_export then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_storage_class_analysis__data_export)
               v_data_export
           in
           let bnd = "data_export", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : storage_class_analysis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_class_analysis

[@@@deriving.end]

type aws_s3_bucket_analytics_configuration = {
  bucket : string prop;
  id : string prop option; [@option]
  name : string prop;
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  storage_class_analysis : storage_class_analysis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_analytics_configuration) -> ()

let yojson_of_aws_s3_bucket_analytics_configuration =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       name = v_name;
       filter = v_filter;
       storage_class_analysis = v_storage_class_analysis;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_class_analysis then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_class_analysis)
               v_storage_class_analysis
           in
           let bnd = "storage_class_analysis", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_analytics_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_analytics_configuration

[@@@deriving.end]

let filter ?prefix ?tags () : filter = { prefix; tags }

let storage_class_analysis__data_export__destination__s3_bucket_destination
    ?bucket_account_id ?format ?prefix ~bucket_arn () :
    storage_class_analysis__data_export__destination__s3_bucket_destination
    =
  { bucket_account_id; bucket_arn; format; prefix }

let storage_class_analysis__data_export__destination
    ~s3_bucket_destination () :
    storage_class_analysis__data_export__destination =
  { s3_bucket_destination }

let storage_class_analysis__data_export ?output_schema_version
    ~destination () : storage_class_analysis__data_export =
  { output_schema_version; destination }

let storage_class_analysis ~data_export () : storage_class_analysis =
  { data_export }

let aws_s3_bucket_analytics_configuration ?id ?(filter = [])
    ?(storage_class_analysis = []) ~bucket ~name () :
    aws_s3_bucket_analytics_configuration =
  { bucket; id; name; filter; storage_class_analysis }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?(filter = []) ?(storage_class_analysis = []) ~bucket
    ~name __id =
  let __type = "aws_s3_bucket_analytics_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_analytics_configuration
        (aws_s3_bucket_analytics_configuration ?id ~filter
           ~storage_class_analysis ~bucket ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(filter = [])
    ?(storage_class_analysis = []) ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~filter ~storage_class_analysis ~bucket ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
