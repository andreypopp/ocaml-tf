(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3_bucket_object = {
  bucket : string prop;
  id : string prop option; [@option]
  key : string prop;
  range : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  version_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_object) -> ()

let yojson_of_aws_s3_bucket_object =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       key = v_key;
       range = v_range;
       tags = v_tags;
       version_id = v_version_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_id", arg in
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
         match v_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "range", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_object -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_object

[@@@deriving.end]

let aws_s3_bucket_object ?id ?range ?tags ?version_id ~bucket ~key ()
    : aws_s3_bucket_object =
  { bucket; id; key; range; tags; version_id }

type t = {
  tf_name : string;
  arn : string prop;
  body : string prop;
  bucket : string prop;
  bucket_key_enabled : bool prop;
  cache_control : string prop;
  content_disposition : string prop;
  content_encoding : string prop;
  content_language : string prop;
  content_length : float prop;
  content_type : string prop;
  etag : string prop;
  expiration : string prop;
  expires : string prop;
  id : string prop;
  key : string prop;
  last_modified : string prop;
  metadata : (string * string) list prop;
  object_lock_legal_hold_status : string prop;
  object_lock_mode : string prop;
  object_lock_retain_until_date : string prop;
  range : string prop;
  server_side_encryption : string prop;
  sse_kms_key_id : string prop;
  storage_class : string prop;
  tags : (string * string) list prop;
  version_id : string prop;
  website_redirect_location : string prop;
}

let make ?id ?range ?tags ?version_id ~bucket ~key __id =
  let __type = "aws_s3_bucket_object" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       body = Prop.computed __type __id "body";
       bucket = Prop.computed __type __id "bucket";
       bucket_key_enabled =
         Prop.computed __type __id "bucket_key_enabled";
       cache_control = Prop.computed __type __id "cache_control";
       content_disposition =
         Prop.computed __type __id "content_disposition";
       content_encoding =
         Prop.computed __type __id "content_encoding";
       content_language =
         Prop.computed __type __id "content_language";
       content_length = Prop.computed __type __id "content_length";
       content_type = Prop.computed __type __id "content_type";
       etag = Prop.computed __type __id "etag";
       expiration = Prop.computed __type __id "expiration";
       expires = Prop.computed __type __id "expires";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       last_modified = Prop.computed __type __id "last_modified";
       metadata = Prop.computed __type __id "metadata";
       object_lock_legal_hold_status =
         Prop.computed __type __id "object_lock_legal_hold_status";
       object_lock_mode =
         Prop.computed __type __id "object_lock_mode";
       object_lock_retain_until_date =
         Prop.computed __type __id "object_lock_retain_until_date";
       range = Prop.computed __type __id "range";
       server_side_encryption =
         Prop.computed __type __id "server_side_encryption";
       sse_kms_key_id = Prop.computed __type __id "sse_kms_key_id";
       storage_class = Prop.computed __type __id "storage_class";
       tags = Prop.computed __type __id "tags";
       version_id = Prop.computed __type __id "version_id";
       website_redirect_location =
         Prop.computed __type __id "website_redirect_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_object
        (aws_s3_bucket_object ?id ?range ?tags ?version_id ~bucket
           ~key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?range ?tags ?version_id ~bucket ~key
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?range ?tags ?version_id ~bucket ~key __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
