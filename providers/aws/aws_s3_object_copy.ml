(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type grant = {
  email : string prop option; [@option]
  id : string prop option; [@option]
  permissions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : grant) -> ()

let yojson_of_grant =
  (function
   | {
       email = v_email;
       id = v_id;
       permissions = v_permissions;
       type_ = v_type_;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_permissions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_permissions
           in
           let bnd = "permissions", arg in
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
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : grant -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_grant

[@@@deriving.end]

type aws_s3_object_copy = {
  acl : string prop option; [@option]
  bucket : string prop;
  bucket_key_enabled : bool prop option; [@option]
  cache_control : string prop option; [@option]
  checksum_algorithm : string prop option; [@option]
  content_disposition : string prop option; [@option]
  content_encoding : string prop option; [@option]
  content_language : string prop option; [@option]
  content_type : string prop option; [@option]
  copy_if_match : string prop option; [@option]
  copy_if_modified_since : string prop option; [@option]
  copy_if_none_match : string prop option; [@option]
  copy_if_unmodified_since : string prop option; [@option]
  customer_algorithm : string prop option; [@option]
  customer_key : string prop option; [@option]
  customer_key_md5 : string prop option; [@option]
  expected_bucket_owner : string prop option; [@option]
  expected_source_bucket_owner : string prop option; [@option]
  expires : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  key : string prop;
  kms_encryption_context : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  metadata_directive : string prop option; [@option]
  object_lock_legal_hold_status : string prop option; [@option]
  object_lock_mode : string prop option; [@option]
  object_lock_retain_until_date : string prop option; [@option]
  request_payer : string prop option; [@option]
  server_side_encryption : string prop option; [@option]
  source : string prop;
  source_customer_algorithm : string prop option; [@option]
  source_customer_key : string prop option; [@option]
  source_customer_key_md5 : string prop option; [@option]
  storage_class : string prop option; [@option]
  tagging_directive : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  website_redirect : string prop option; [@option]
  grant : grant list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_object_copy) -> ()

let yojson_of_aws_s3_object_copy =
  (function
   | {
       acl = v_acl;
       bucket = v_bucket;
       bucket_key_enabled = v_bucket_key_enabled;
       cache_control = v_cache_control;
       checksum_algorithm = v_checksum_algorithm;
       content_disposition = v_content_disposition;
       content_encoding = v_content_encoding;
       content_language = v_content_language;
       content_type = v_content_type;
       copy_if_match = v_copy_if_match;
       copy_if_modified_since = v_copy_if_modified_since;
       copy_if_none_match = v_copy_if_none_match;
       copy_if_unmodified_since = v_copy_if_unmodified_since;
       customer_algorithm = v_customer_algorithm;
       customer_key = v_customer_key;
       customer_key_md5 = v_customer_key_md5;
       expected_bucket_owner = v_expected_bucket_owner;
       expected_source_bucket_owner = v_expected_source_bucket_owner;
       expires = v_expires;
       force_destroy = v_force_destroy;
       id = v_id;
       key = v_key;
       kms_encryption_context = v_kms_encryption_context;
       kms_key_id = v_kms_key_id;
       metadata = v_metadata;
       metadata_directive = v_metadata_directive;
       object_lock_legal_hold_status =
         v_object_lock_legal_hold_status;
       object_lock_mode = v_object_lock_mode;
       object_lock_retain_until_date =
         v_object_lock_retain_until_date;
       request_payer = v_request_payer;
       server_side_encryption = v_server_side_encryption;
       source = v_source;
       source_customer_algorithm = v_source_customer_algorithm;
       source_customer_key = v_source_customer_key;
       source_customer_key_md5 = v_source_customer_key_md5;
       storage_class = v_storage_class;
       tagging_directive = v_tagging_directive;
       tags = v_tags;
       tags_all = v_tags_all;
       website_redirect = v_website_redirect;
       grant = v_grant;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_grant then bnds
         else
           let arg = (yojson_of_list yojson_of_grant) v_grant in
           let bnd = "grant", arg in
           bnd :: bnds
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
         match v_tagging_directive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tagging_directive", arg in
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
         match v_source_customer_key_md5 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_customer_key_md5", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_customer_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_customer_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_customer_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_customer_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
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
         match v_request_payer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_payer", arg in
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
         match v_metadata_directive with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata_directive", arg in
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
         match v_kms_encryption_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_encryption_context", arg in
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
         match v_expires with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expires", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_source_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_source_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_key_md5 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_key_md5", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_algorithm", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_if_unmodified_since with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copy_if_unmodified_since", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_if_none_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copy_if_none_match", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_if_modified_since with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copy_if_modified_since", arg in
             bnd :: bnds
       in
       let bnds =
         match v_copy_if_match with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "copy_if_match", arg in
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
         match v_checksum_algorithm with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "checksum_algorithm", arg in
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
    : aws_s3_object_copy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_object_copy

[@@@deriving.end]

let grant ?email ?id ?uri ~permissions ~type_ () : grant =
  { email; id; permissions; type_; uri }

let aws_s3_object_copy ?acl ?bucket_key_enabled ?cache_control
    ?checksum_algorithm ?content_disposition ?content_encoding
    ?content_language ?content_type ?copy_if_match
    ?copy_if_modified_since ?copy_if_none_match
    ?copy_if_unmodified_since ?customer_algorithm ?customer_key
    ?customer_key_md5 ?expected_bucket_owner
    ?expected_source_bucket_owner ?expires ?force_destroy ?id
    ?kms_encryption_context ?kms_key_id ?metadata ?metadata_directive
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?request_payer
    ?server_side_encryption ?source_customer_algorithm
    ?source_customer_key ?source_customer_key_md5 ?storage_class
    ?tagging_directive ?tags ?tags_all ?website_redirect ~bucket ~key
    ~source ~grant () : aws_s3_object_copy =
  {
    acl;
    bucket;
    bucket_key_enabled;
    cache_control;
    checksum_algorithm;
    content_disposition;
    content_encoding;
    content_language;
    content_type;
    copy_if_match;
    copy_if_modified_since;
    copy_if_none_match;
    copy_if_unmodified_since;
    customer_algorithm;
    customer_key;
    customer_key_md5;
    expected_bucket_owner;
    expected_source_bucket_owner;
    expires;
    force_destroy;
    id;
    key;
    kms_encryption_context;
    kms_key_id;
    metadata;
    metadata_directive;
    object_lock_legal_hold_status;
    object_lock_mode;
    object_lock_retain_until_date;
    request_payer;
    server_side_encryption;
    source;
    source_customer_algorithm;
    source_customer_key;
    source_customer_key_md5;
    storage_class;
    tagging_directive;
    tags;
    tags_all;
    website_redirect;
    grant;
  }

type t = {
  tf_name : string;
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  checksum_algorithm : string prop;
  checksum_crc32 : string prop;
  checksum_crc32c : string prop;
  checksum_sha1 : string prop;
  checksum_sha256 : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_type : string prop;
  copy_if_match : string prop;
  copy_if_modified_since : string prop;
  copy_if_none_match : string prop;
  copy_if_unmodified_since : string prop;
  customer_algorithm : string prop;
  customer_key : string prop;
  customer_key_md5 : string prop;
  etag : string prop;
  expected_bucket_owner : string prop;
  expected_source_bucket_owner : string prop;
  expiration : string prop;
  expires : string prop;
  force_destroy : bool prop;
  id : string prop;
  key : string prop;
  kms_encryption_context : string prop;
  kms_key_id : string prop;
  last_modified : string prop;
  metadata : (string * string) list prop;
  metadata_directive : string prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  request_charged : bool prop;
  request_payer : string prop;
  server_side_encryption : string prop;
  source : string prop;
  source_customer_algorithm : string prop;
  source_customer_key : string prop;
  source_customer_key_md5 : string prop;
  source_version_id : string prop;
  storage_class : string prop;
  tagging_directive : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_id : string prop;
  website_redirect : string prop;
}

let make ?acl ?bucket_key_enabled ?cache_control ?checksum_algorithm
    ?content_disposition ?content_encoding ?content_language
    ?content_type ?copy_if_match ?copy_if_modified_since
    ?copy_if_none_match ?copy_if_unmodified_since ?customer_algorithm
    ?customer_key ?customer_key_md5 ?expected_bucket_owner
    ?expected_source_bucket_owner ?expires ?force_destroy ?id
    ?kms_encryption_context ?kms_key_id ?metadata ?metadata_directive
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?request_payer
    ?server_side_encryption ?source_customer_algorithm
    ?source_customer_key ?source_customer_key_md5 ?storage_class
    ?tagging_directive ?tags ?tags_all ?website_redirect ~bucket ~key
    ~source ~grant __id =
  let __type = "aws_s3_object_copy" in
  let __attrs =
    ({
       tf_name = __id;
       acl = Prop.computed __type __id "acl";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_key_enabled =
         Prop.computed __type __id "bucket_key_enabled";
       cache_control = Prop.computed __type __id "cache_control";
       checksum_algorithm =
         Prop.computed __type __id "checksum_algorithm";
       checksum_crc32 = Prop.computed __type __id "checksum_crc32";
       checksum_crc32c = Prop.computed __type __id "checksum_crc32c";
       checksum_sha1 = Prop.computed __type __id "checksum_sha1";
       checksum_sha256 = Prop.computed __type __id "checksum_sha256";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_type = Prop.computed __type __id "content_type";
       copy_if_match = Prop.computed __type __id "copy_if_match";
       copy_if_modified_since =
         Prop.computed __type __id "copy_if_modified_since";
       copy_if_none_match =
         Prop.computed __type __id "copy_if_none_match";
       copy_if_unmodified_since =
         Prop.computed __type __id "copy_if_unmodified_since";
       customer_algorithm =
         Prop.computed __type __id "customer_algorithm";
       customer_key = Prop.computed __type __id "customer_key";
       customer_key_md5 =
         Prop.computed __type __id "customer_key_md5";
       etag = Prop.computed __type __id "etag";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       expected_source_bucket_owner =
         Prop.computed __type __id "expected_source_bucket_owner";
       expiration = Prop.computed __type __id "expiration";
       expires = Prop.computed __type __id "expires";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       kms_encryption_context =
         Prop.computed __type __id "kms_encryption_context";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       last_modified = Prop.computed __type __id "last_modified";
       metadata = Prop.computed __type __id "metadata";
       metadata_directive =
         Prop.computed __type __id "metadata_directive";
       object_lock_legal_hold_status =
         Prop.computed __type __id "object_lock_legal_hold_status";
       object_lock_mode =
         Prop.computed __type __id "object_lock_mode";
       object_lock_retain_until_date =
         Prop.computed __type __id "object_lock_retain_until_date";
       request_charged = Prop.computed __type __id "request_charged";
       request_payer = Prop.computed __type __id "request_payer";
       server_side_encryption =
         Prop.computed __type __id "server_side_encryption";
       source = Prop.computed __type __id "source";
       source_customer_algorithm =
         Prop.computed __type __id "source_customer_algorithm";
       source_customer_key =
         Prop.computed __type __id "source_customer_key";
       source_customer_key_md5 =
         Prop.computed __type __id "source_customer_key_md5";
       source_version_id =
         Prop.computed __type __id "source_version_id";
       storage_class = Prop.computed __type __id "storage_class";
       tagging_directive =
         Prop.computed __type __id "tagging_directive";
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
      yojson_of_aws_s3_object_copy
        (aws_s3_object_copy ?acl ?bucket_key_enabled ?cache_control
           ?checksum_algorithm ?content_disposition ?content_encoding
           ?content_language ?content_type ?copy_if_match
           ?copy_if_modified_since ?copy_if_none_match
           ?copy_if_unmodified_since ?customer_algorithm
           ?customer_key ?customer_key_md5 ?expected_bucket_owner
           ?expected_source_bucket_owner ?expires ?force_destroy ?id
           ?kms_encryption_context ?kms_key_id ?metadata
           ?metadata_directive ?object_lock_legal_hold_status
           ?object_lock_mode ?object_lock_retain_until_date
           ?request_payer ?server_side_encryption
           ?source_customer_algorithm ?source_customer_key
           ?source_customer_key_md5 ?storage_class ?tagging_directive
           ?tags ?tags_all ?website_redirect ~bucket ~key ~source
           ~grant ());
    attrs = __attrs;
  }

let register ?tf_module ?acl ?bucket_key_enabled ?cache_control
    ?checksum_algorithm ?content_disposition ?content_encoding
    ?content_language ?content_type ?copy_if_match
    ?copy_if_modified_since ?copy_if_none_match
    ?copy_if_unmodified_since ?customer_algorithm ?customer_key
    ?customer_key_md5 ?expected_bucket_owner
    ?expected_source_bucket_owner ?expires ?force_destroy ?id
    ?kms_encryption_context ?kms_key_id ?metadata ?metadata_directive
    ?object_lock_legal_hold_status ?object_lock_mode
    ?object_lock_retain_until_date ?request_payer
    ?server_side_encryption ?source_customer_algorithm
    ?source_customer_key ?source_customer_key_md5 ?storage_class
    ?tagging_directive ?tags ?tags_all ?website_redirect ~bucket ~key
    ~source ~grant __id =
  let (r : _ Tf_core.resource) =
    make ?acl ?bucket_key_enabled ?cache_control ?checksum_algorithm
      ?content_disposition ?content_encoding ?content_language
      ?content_type ?copy_if_match ?copy_if_modified_since
      ?copy_if_none_match ?copy_if_unmodified_since
      ?customer_algorithm ?customer_key ?customer_key_md5
      ?expected_bucket_owner ?expected_source_bucket_owner ?expires
      ?force_destroy ?id ?kms_encryption_context ?kms_key_id
      ?metadata ?metadata_directive ?object_lock_legal_hold_status
      ?object_lock_mode ?object_lock_retain_until_date ?request_payer
      ?server_side_encryption ?source_customer_algorithm
      ?source_customer_key ?source_customer_key_md5 ?storage_class
      ?tagging_directive ?tags ?tags_all ?website_redirect ~bucket
      ~key ~source ~grant __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
