(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
  allowed_methods : string prop list;
  allowed_origins : string prop list;
  max_age_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cors_rule) -> ()

let yojson_of_cors_rule =
  (function
   | {
       allowed_headers = v_allowed_headers;
       allowed_methods = v_allowed_methods;
       allowed_origins = v_allowed_origins;
       max_age_seconds = v_max_age_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_age_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_age_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_origins
         in
         ("allowed_origins", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_allowed_methods
         in
         ("allowed_methods", arg) :: bnds
       in
       let bnds =
         match v_allowed_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cors_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cors_rule

[@@@deriving.end]

type lifecycle_rule__expiration = {
  date : string prop option; [@option]
  days : float prop option; [@option]
  expired_object_delete_marker : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__expiration) -> ()

let yojson_of_lifecycle_rule__expiration =
  (function
   | {
       date = v_date;
       days = v_days;
       expired_object_delete_marker = v_expired_object_delete_marker;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_expired_object_delete_marker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expired_object_delete_marker", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "date", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__expiration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__expiration

[@@@deriving.end]

type lifecycle_rule__noncurrent_version_expiration = {
  days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule__noncurrent_version_expiration) -> ()

let yojson_of_lifecycle_rule__noncurrent_version_expiration =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule__noncurrent_version_expiration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule__noncurrent_version_expiration

[@@@deriving.end]

type lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float prop option;
      [@option]
  enabled : bool prop;
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  expiration : lifecycle_rule__expiration list;
  noncurrent_version_expiration :
    lifecycle_rule__noncurrent_version_expiration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lifecycle_rule) -> ()

let yojson_of_lifecycle_rule =
  (function
   | {
       abort_incomplete_multipart_upload_days =
         v_abort_incomplete_multipart_upload_days;
       enabled = v_enabled;
       id = v_id;
       prefix = v_prefix;
       expiration = v_expiration;
       noncurrent_version_expiration =
         v_noncurrent_version_expiration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_lifecycle_rule__noncurrent_version_expiration
             v_noncurrent_version_expiration
         in
         ("noncurrent_version_expiration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_lifecycle_rule__expiration
             v_expiration
         in
         ("expiration", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_abort_incomplete_multipart_upload_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               "abort_incomplete_multipart_upload_days", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : lifecycle_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lifecycle_rule

[@@@deriving.end]

type versioning = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : versioning) -> ()

let yojson_of_versioning =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : versioning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_versioning

[@@@deriving.end]

type digitalocean_spaces_bucket = {
  acl : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  region : string prop option; [@option]
  cors_rule : cors_rule list;
  lifecycle_rule : lifecycle_rule list;
  versioning : versioning list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_spaces_bucket) -> ()

let yojson_of_digitalocean_spaces_bucket =
  (function
   | {
       acl = v_acl;
       force_destroy = v_force_destroy;
       id = v_id;
       name = v_name;
       region = v_region;
       cors_rule = v_cors_rule;
       lifecycle_rule = v_lifecycle_rule;
       versioning = v_versioning;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_versioning v_versioning
         in
         ("versioning", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_lifecycle_rule v_lifecycle_rule
         in
         ("lifecycle_rule", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_cors_rule v_cors_rule in
         ("cors_rule", arg) :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
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
    : digitalocean_spaces_bucket -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_spaces_bucket

[@@@deriving.end]

let cors_rule ?allowed_headers ?max_age_seconds ~allowed_methods
    ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    max_age_seconds;
  }

let lifecycle_rule__expiration ?date ?days
    ?expired_object_delete_marker () : lifecycle_rule__expiration =
  { date; days; expired_object_delete_marker }

let lifecycle_rule__noncurrent_version_expiration ?days () :
    lifecycle_rule__noncurrent_version_expiration =
  { days }

let lifecycle_rule ?abort_incomplete_multipart_upload_days ?id
    ?prefix ~enabled ~expiration ~noncurrent_version_expiration () :
    lifecycle_rule =
  {
    abort_incomplete_multipart_upload_days;
    enabled;
    id;
    prefix;
    expiration;
    noncurrent_version_expiration;
  }

let versioning ?enabled () : versioning = { enabled }

let digitalocean_spaces_bucket ?acl ?force_destroy ?id ?region
    ?(cors_rule = []) ?(lifecycle_rule = []) ?(versioning = []) ~name
    () : digitalocean_spaces_bucket =
  {
    acl;
    force_destroy;
    id;
    name;
    region;
    cors_rule;
    lifecycle_rule;
    versioning;
  }

type t = {
  acl : string prop;
  bucket_domain_name : string prop;
  endpoint : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  region : string prop;
  urn : string prop;
}

let make ?acl ?force_destroy ?id ?region ?(cors_rule = [])
    ?(lifecycle_rule = []) ?(versioning = []) ~name __id =
  let __type = "digitalocean_spaces_bucket" in
  let __attrs =
    ({
       acl = Prop.computed __type __id "acl";
       bucket_domain_name =
         Prop.computed __type __id "bucket_domain_name";
       endpoint = Prop.computed __type __id "endpoint";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_spaces_bucket
        (digitalocean_spaces_bucket ?acl ?force_destroy ?id ?region
           ~cors_rule ~lifecycle_rule ~versioning ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?acl ?force_destroy ?id ?region
    ?(cors_rule = []) ?(lifecycle_rule = []) ?(versioning = []) ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?acl ?force_destroy ?id ?region ~cors_rule ~lifecycle_rule
      ~versioning ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
