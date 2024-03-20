(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type snapshot_delivery_properties = {
  delivery_frequency : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snapshot_delivery_properties) -> ()

let yojson_of_snapshot_delivery_properties =
  (function
   | { delivery_frequency = v_delivery_frequency } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delivery_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_frequency", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : snapshot_delivery_properties ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snapshot_delivery_properties

[@@@deriving.end]

type aws_config_delivery_channel = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  s3_bucket_name : string prop;
  s3_key_prefix : string prop option; [@option]
  s3_kms_key_arn : string prop option; [@option]
  sns_topic_arn : string prop option; [@option]
  snapshot_delivery_properties : snapshot_delivery_properties list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_config_delivery_channel) -> ()

let yojson_of_aws_config_delivery_channel =
  (function
   | {
       id = v_id;
       name = v_name;
       s3_bucket_name = v_s3_bucket_name;
       s3_key_prefix = v_s3_key_prefix;
       s3_kms_key_arn = v_s3_kms_key_arn;
       sns_topic_arn = v_sns_topic_arn;
       snapshot_delivery_properties = v_snapshot_delivery_properties;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_snapshot_delivery_properties
             v_snapshot_delivery_properties
         in
         ("snapshot_delivery_properties", arg) :: bnds
       in
       let bnds =
         match v_sns_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sns_topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
    : aws_config_delivery_channel ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_config_delivery_channel

[@@@deriving.end]

let snapshot_delivery_properties ?delivery_frequency () :
    snapshot_delivery_properties =
  { delivery_frequency }

let aws_config_delivery_channel ?id ?name ?s3_key_prefix
    ?s3_kms_key_arn ?sns_topic_arn ~s3_bucket_name
    ~snapshot_delivery_properties () : aws_config_delivery_channel =
  {
    id;
    name;
    s3_bucket_name;
    s3_key_prefix;
    s3_kms_key_arn;
    sns_topic_arn;
    snapshot_delivery_properties;
  }

type t = {
  id : string prop;
  name : string prop;
  s3_bucket_name : string prop;
  s3_key_prefix : string prop;
  s3_kms_key_arn : string prop;
  sns_topic_arn : string prop;
}

let make ?id ?name ?s3_key_prefix ?s3_kms_key_arn ?sns_topic_arn
    ~s3_bucket_name ~snapshot_delivery_properties __id =
  let __type = "aws_config_delivery_channel" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       s3_bucket_name = Prop.computed __type __id "s3_bucket_name";
       s3_key_prefix = Prop.computed __type __id "s3_key_prefix";
       s3_kms_key_arn = Prop.computed __type __id "s3_kms_key_arn";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_delivery_channel
        (aws_config_delivery_channel ?id ?name ?s3_key_prefix
           ?s3_kms_key_arn ?sns_topic_arn ~s3_bucket_name
           ~snapshot_delivery_properties ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?s3_key_prefix ?s3_kms_key_arn
    ?sns_topic_arn ~s3_bucket_name ~snapshot_delivery_properties __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?s3_key_prefix ?s3_kms_key_arn ?sns_topic_arn
      ~s3_bucket_name ~snapshot_delivery_properties __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
