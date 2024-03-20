(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_bucket_object = {
  acl : string prop option; [@option]
  bucket : string prop;
  bucket_key_enabled : bool prop option; [@option]
  cache_control : string prop option; [@option]
  content : string prop option; [@option]
  content_base64 : string prop option; [@option]
  content_disposition : string prop option; [@option]
  content_encoding : string prop option; [@option]
  content_language : string prop option; [@option]
  content_type : string prop option; [@option]
  etag : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  kms_key_id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  object_lock_legal_hold_status : string prop option; [@option]
  object_lock_mode : string prop option; [@option]
  object_lock_retain_until_date : string prop option; [@option]
  server_side_encryption : string prop option; [@option]
  source : string prop option; [@option]
  source_hash : string prop option; [@option]
  storage_class : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  website_redirect : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_object) -> ()

let yojson_of_aws_s3_bucket_object =
  (function
   | {
       acl = v_acl;
       bucket = v_bucket;
       bucket_key_enabled = v_bucket_key_enabled;
       cache_control = v_cache_control;
       content = v_content;
       content_base64 = v_content_base64;
       content_disposition = v_content_disposition;
       content_encoding = v_content_encoding;
       content_language = v_content_language;
       content_type = v_content_type;
       etag = v_etag;
       force_destroy = v_force_destroy;
       id = v_id;
       key = v_key;
       kms_key_id = v_kms_key_id;
       metadata = v_metadata;
       object_lock_legal_hold_status =
         v_object_lock_legal_hold_status;
       object_lock_mode = v_object_lock_mode;
       object_lock_retain_until_date =
         v_object_lock_retain_until_date;
       server_side_encryption = v_server_side_encryption;
       source = v_source;
       source_hash = v_source_hash;
       storage_class = v_storage_class;
       tags = v_tags;
       tags_all = v_tags_all;
       website_redirect = v_website_redirect;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_website_redirect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "website_redirect", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_hash", arg in
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
         match v_server_side_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_side_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_lock_retain_until_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_lock_retain_until_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_lock_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_lock_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_lock_legal_hold_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_lock_legal_hold_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_metadata with
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
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
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
         match v_content_base64 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_base64", arg in
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
         match v_bucket_key_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bucket_key_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         match v_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_object

[@@@deriving.end]

let aws_s3_bucket_object ?acl ?bucket_key_enabled ?cache_control
    ?content ?content_base64 ?content_disposition ?content_encoding
    ?content_language ?content_type ?etag ?force_destroy ?id
    ?kms_key_id ?metadata ?object_lock_legal_hold_status
    ?object_lock_mode ?object_lock_retain_until_date
    ?server_side_encryption ?source ?source_hash ?storage_class ?tags
    ?tags_all ?website_redirect ~bucket ~key () :
    aws_s3_bucket_object =
  {
    acl;
    bucket;
    bucket_key_enabled;
    cache_control;
    content;
    content_base64;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    etag;
    force_destroy;
    id;
    key;
    kms_key_id;
    metadata;
    object_lock_legal_hold_status;
    object_lock_mode;
    object_lock_retain_until_date;
    server_side_encryption;
    source;
    source_hash;
    storage_class;
    tags;
    tags_all;
    website_redirect;
  }

type t = {
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  content : string prop;
  content_base64 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  etag : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  kms_key_id : string prop;
  metadata : (string * string) list prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  server_side_encryption : string prop;
  source : string prop;
  source_hash : string prop;
  storage_class : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
  website_redirect : string prop;
}

let make ?acl ?bucket_key_enabled ?cache_control ?content
    ?content_base64 ?content_disposition ?content_encoding
    ?content_language ?content_type ?etag ?force_destroy ?id
    ?kms_key_id ?metadata ?object_lock_legal_hold_status
    ?object_lock_mode ?object_lock_retain_until_date
    ?server_side_encryption ?source ?source_hash ?storage_class ?tags
    ?tags_all ?website_redirect ~bucket ~key __id =
  let __type = "aws_s3_bucket_object" in
  let __attrs =
    ({
       acl = Prop.computed __type __id "acl";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_key_enabled =
         Prop.computed __type __id "bucket_key_enabled";
       cache_control = Prop.computed __type __id "cache_control";
       content = Prop.computed __type __id "content";
       content_base64 = Prop.computed __type __id "content_base64";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       metadata = Prop.computed __type __id "metadata";
       object_lock_legal_hold_status =
         Prop.computed __type __id "object_lock_legal_hold_status";
       object_lock_mode =
         Prop.computed __type __id "object_lock_mode";
       object_lock_retain_until_date =
         Prop.computed __type __id "object_lock_retain_until_date";
       server_side_encryption =
         Prop.computed __type __id "server_side_encryption";
       source = Prop.computed __type __id "source";
       source_hash = Prop.computed __type __id "source_hash";
       storage_class = Prop.computed __type __id "storage_class";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version_id = Prop.computed __type __id "version_id";
       website_redirect =
         Prop.computed __type __id "website_redirect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_object
        (aws_s3_bucket_object ?acl ?bucket_key_enabled ?cache_control
           ?content ?content_base64 ?content_disposition
           ?content_encoding ?content_language ?content_type ?etag
           ?force_destroy ?id ?kms_key_id ?metadata
           ?object_lock_legal_hold_status ?object_lock_mode
           ?object_lock_retain_until_date ?server_side_encryption
           ?source ?source_hash ?storage_class ?tags ?tags_all
           ?website_redirect ~bucket ~key ());
    attrs = __attrs;
  }

let register ?tf_module ?acl ?bucket_key_enabled ?cache_control
    ?content ?content_base64 ?content_disposition ?content_encoding
    ?content_language ?content_type ?etag ?force_destroy ?id
    ?kms_key_id ?metadata ?object_lock_legal_hold_status
    ?object_lock_mode ?object_lock_retain_until_date
    ?server_side_encryption ?source ?source_hash ?storage_class ?tags
    ?tags_all ?website_redirect ~bucket ~key __id =
  let (r : _ Tf_core.resource) =
    make ?acl ?bucket_key_enabled ?cache_control ?content
      ?content_base64 ?content_disposition ?content_encoding
      ?content_language ?content_type ?etag ?force_destroy ?id
      ?kms_key_id ?metadata ?object_lock_legal_hold_status
      ?object_lock_mode ?object_lock_retain_until_date
      ?server_side_encryption ?source ?source_hash ?storage_class
      ?tags ?tags_all ?website_redirect ~bucket ~key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
