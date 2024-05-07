(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type customer_encryption = {
  encryption_algorithm : string prop;
  encryption_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : customer_encryption) -> ()

let yojson_of_customer_encryption =
  (function
   | {
       encryption_algorithm = v_encryption_algorithm;
       encryption_key = v_encryption_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_key
         in
         ("encryption_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_algorithm
         in
         ("encryption_algorithm", arg) :: bnds
       in
       `Assoc bnds
    : customer_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_customer_encryption

[@@@deriving.end]

type retention = {
  mode : string prop;
  retain_until_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : retention) -> ()

let yojson_of_retention =
  (function
   | { mode = v_mode; retain_until_time = v_retain_until_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_retain_until_time
         in
         ("retain_until_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : retention -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_retention

[@@@deriving.end]

type google_storage_bucket_object_content = {
  bucket : string prop;
  content : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket_object_content) -> ()

let yojson_of_google_storage_bucket_object_content =
  (function
   | {
       bucket = v_bucket;
       content = v_content;
       id = v_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_bucket_object_content ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket_object_content

[@@@deriving.end]

let google_storage_bucket_object_content ?content ?id ~bucket ~name
    () : google_storage_bucket_object_content =
  { bucket; content; id; name }

type t = {
  tf_name : string;
  bucket : string prop;
  cache_control : string prop;
  content : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  crc32c : string prop;
  customer_encryption : customer_encryption list prop;
  detect_md5hash : string prop;
  event_based_hold : bool prop;
  id : string prop;
  kms_key_name : string prop;
  md5hash : string prop;
  media_link : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  output_name : string prop;
  retention : retention list prop;
  self_link : string prop;
  source : string prop;
  storage_class : string prop;
  temporary_hold : bool prop;
}

let make ?content ?id ~bucket ~name __id =
  let __type = "google_storage_bucket_object_content" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       cache_control = Prop.computed __type __id "cache_control";
       content = Prop.computed __type __id "content";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_type = Prop.computed __type __id "content_type";
       crc32c = Prop.computed __type __id "crc32c";
       customer_encryption =
         Prop.computed __type __id "customer_encryption";
       detect_md5hash = Prop.computed __type __id "detect_md5hash";
       event_based_hold =
         Prop.computed __type __id "event_based_hold";
       id = Prop.computed __type __id "id";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       md5hash = Prop.computed __type __id "md5hash";
       media_link = Prop.computed __type __id "media_link";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       output_name = Prop.computed __type __id "output_name";
       retention = Prop.computed __type __id "retention";
       self_link = Prop.computed __type __id "self_link";
       source = Prop.computed __type __id "source";
       storage_class = Prop.computed __type __id "storage_class";
       temporary_hold = Prop.computed __type __id "temporary_hold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_bucket_object_content
        (google_storage_bucket_object_content ?content ?id ~bucket
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?content ?id ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?content ?id ~bucket ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
