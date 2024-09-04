(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type customer_encryption = {
  encryption_algorithm : string prop option; [@option]
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
         match v_encryption_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_algorithm", arg in
             bnd :: bnds
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

type google_storage_bucket_object = {
  bucket : string prop;
  cache_control : string prop option; [@option]
  content : string prop option; [@option]
  content_disposition : string prop option; [@option]
  content_encoding : string prop option; [@option]
  content_language : string prop option; [@option]
  content_type : string prop option; [@option]
  detect_md5hash : string prop option; [@option]
  event_based_hold : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_name : string prop option; [@option]
  metadata : string prop Tf_core.assoc option; [@option]
  name : string prop;
  source : string prop option; [@option]
  storage_class : string prop option; [@option]
  temporary_hold : bool prop option; [@option]
  customer_encryption : customer_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  retention : retention list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket_object) -> ()

let yojson_of_google_storage_bucket_object =
  (function
   | {
       bucket = v_bucket;
       cache_control = v_cache_control;
       content = v_content;
       content_disposition = v_content_disposition;
       content_encoding = v_content_encoding;
       content_language = v_content_language;
       content_type = v_content_type;
       detect_md5hash = v_detect_md5hash;
       event_based_hold = v_event_based_hold;
       id = v_id;
       kms_key_name = v_kms_key_name;
       metadata = v_metadata;
       name = v_name;
       source = v_source;
       storage_class = v_storage_class;
       temporary_hold = v_temporary_hold;
       customer_encryption = v_customer_encryption;
       retention = v_retention;
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
         if Stdlib.( = ) [] v_retention then bnds
         else
           let arg =
             (yojson_of_list yojson_of_retention) v_retention
           in
           let bnd = "retention", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_customer_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_customer_encryption)
               v_customer_encryption
           in
           let bnd = "customer_encryption", arg in
           bnd :: bnds
       in
       let bnds =
         match v_temporary_hold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "temporary_hold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
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
       let bnds =
         match v_event_based_hold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "event_based_hold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_detect_md5hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "detect_md5hash", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_encoding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_encoding", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_disposition with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_disposition", arg in
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
         match v_cache_control with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cache_control", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_bucket_object ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket_object

[@@@deriving.end]

let customer_encryption ?encryption_algorithm ~encryption_key () :
    customer_encryption =
  { encryption_algorithm; encryption_key }

let retention ~mode ~retain_until_time () : retention =
  { mode; retain_until_time }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_storage_bucket_object ?cache_control ?content
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?detect_md5hash ?event_based_hold ?id ?kms_key_name
    ?metadata ?source ?storage_class ?temporary_hold
    ?(customer_encryption = []) ?(retention = []) ?timeouts ~bucket
    ~name () : google_storage_bucket_object =
  {
    bucket;
    cache_control;
    content;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    detect_md5hash;
    event_based_hold;
    id;
    kms_key_name;
    metadata;
    name;
    source;
    storage_class;
    temporary_hold;
    customer_encryption;
    retention;
    timeouts;
  }

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
  detect_md5hash : string prop;
  event_based_hold : bool prop;
  id : string prop;
  kms_key_name : string prop;
  md5hash : string prop;
  media_link : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  output_name : string prop;
  self_link : string prop;
  source : string prop;
  storage_class : string prop;
  temporary_hold : bool prop;
}

let make ?cache_control ?content ?content_disposition
    ?content_encoding ?content_language ?content_type ?detect_md5hash
    ?event_based_hold ?id ?kms_key_name ?metadata ?source
    ?storage_class ?temporary_hold ?(customer_encryption = [])
    ?(retention = []) ?timeouts ~bucket ~name __id =
  let __type = "google_storage_bucket_object" in
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
      yojson_of_google_storage_bucket_object
        (google_storage_bucket_object ?cache_control ?content
           ?content_disposition ?content_encoding ?content_language
           ?content_type ?detect_md5hash ?event_based_hold ?id
           ?kms_key_name ?metadata ?source ?storage_class
           ?temporary_hold ~customer_encryption ~retention ?timeouts
           ~bucket ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?cache_control ?content ?content_disposition
    ?content_encoding ?content_language ?content_type ?detect_md5hash
    ?event_based_hold ?id ?kms_key_name ?metadata ?source
    ?storage_class ?temporary_hold ?(customer_encryption = [])
    ?(retention = []) ?timeouts ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?cache_control ?content ?content_disposition
      ?content_encoding ?content_language ?content_type
      ?detect_md5hash ?event_based_hold ?id ?kms_key_name ?metadata
      ?source ?storage_class ?temporary_hold ~customer_encryption
      ~retention ?timeouts ~bucket ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
