(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__abort_incomplete_multipart_upload) -> ()

let yojson_of_rule__abort_incomplete_multipart_upload =
  (function
   | { days_after_initiation = v_days_after_initiation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days_after_initiation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days_after_initiation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__abort_incomplete_multipart_upload ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__abort_incomplete_multipart_upload

[@@@deriving.end]

type rule__expiration = {
  date : string prop option; [@option]
  days : float prop option; [@option]
  expired_object_delete_marker : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__expiration) -> ()

let yojson_of_rule__expiration =
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
    : rule__expiration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__expiration

[@@@deriving.end]

type rule__filter__and = {
  object_size_greater_than : float prop option; [@option]
  object_size_less_than : float prop option; [@option]
  prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter__and) -> ()

let yojson_of_rule__filter__and =
  (function
   | {
       object_size_greater_than = v_object_size_greater_than;
       object_size_less_than = v_object_size_less_than;
       prefix = v_prefix;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_size_less_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "object_size_less_than", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_size_greater_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "object_size_greater_than", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__filter__and -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter__and

[@@@deriving.end]

type rule__filter__tag = { key : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter__tag) -> ()

let yojson_of_rule__filter__tag =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : rule__filter__tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter__tag

[@@@deriving.end]

type rule__filter = {
  object_size_greater_than : string prop option; [@option]
  object_size_less_than : string prop option; [@option]
  prefix : string prop option; [@option]
  and_ : rule__filter__and list; [@key "and"]
  tag : rule__filter__tag list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__filter) -> ()

let yojson_of_rule__filter =
  (function
   | {
       object_size_greater_than = v_object_size_greater_than;
       object_size_less_than = v_object_size_less_than;
       prefix = v_prefix;
       and_ = v_and_;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__filter__tag v_tag
         in
         ("tag", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__filter__and v_and_
         in
         ("and", arg) :: bnds
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
         match v_object_size_less_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_size_less_than", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_size_greater_than with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_size_greater_than", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__filter

[@@@deriving.end]

type rule__noncurrent_version_expiration = {
  newer_noncurrent_versions : string prop option; [@option]
  noncurrent_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__noncurrent_version_expiration) -> ()

let yojson_of_rule__noncurrent_version_expiration =
  (function
   | {
       newer_noncurrent_versions = v_newer_noncurrent_versions;
       noncurrent_days = v_noncurrent_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_noncurrent_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "noncurrent_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_newer_noncurrent_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "newer_noncurrent_versions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__noncurrent_version_expiration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__noncurrent_version_expiration

[@@@deriving.end]

type rule__noncurrent_version_transition = {
  newer_noncurrent_versions : string prop option; [@option]
  noncurrent_days : float prop option; [@option]
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__noncurrent_version_transition) -> ()

let yojson_of_rule__noncurrent_version_transition =
  (function
   | {
       newer_noncurrent_versions = v_newer_noncurrent_versions;
       noncurrent_days = v_noncurrent_days;
       storage_class = v_storage_class;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         match v_noncurrent_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "noncurrent_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_newer_noncurrent_versions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "newer_noncurrent_versions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule__noncurrent_version_transition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__noncurrent_version_transition

[@@@deriving.end]

type rule__transition = {
  date : string prop option; [@option]
  days : float prop option; [@option]
  storage_class : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule__transition) -> ()

let yojson_of_rule__transition =
  (function
   | {
       date = v_date;
       days = v_days;
       storage_class = v_storage_class;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
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
    : rule__transition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule__transition

[@@@deriving.end]

type rule = {
  id : string prop;
  prefix : string prop option; [@option]
  status : string prop;
  abort_incomplete_multipart_upload :
    rule__abort_incomplete_multipart_upload list;
  expiration : rule__expiration list;
  filter : rule__filter list;
  noncurrent_version_expiration :
    rule__noncurrent_version_expiration list;
  noncurrent_version_transition :
    rule__noncurrent_version_transition list;
  transition : rule__transition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       id = v_id;
       prefix = v_prefix;
       status = v_status;
       abort_incomplete_multipart_upload =
         v_abort_incomplete_multipart_upload;
       expiration = v_expiration;
       filter = v_filter;
       noncurrent_version_expiration =
         v_noncurrent_version_expiration;
       noncurrent_version_transition =
         v_noncurrent_version_transition;
       transition = v_transition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__transition v_transition
         in
         ("transition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rule__noncurrent_version_transition
             v_noncurrent_version_transition
         in
         ("noncurrent_version_transition", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rule__noncurrent_version_expiration
             v_noncurrent_version_expiration
         in
         ("noncurrent_version_expiration", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_rule__filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_rule__expiration v_expiration
         in
         ("expiration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_rule__abort_incomplete_multipart_upload
             v_abort_incomplete_multipart_upload
         in
         ("abort_incomplete_multipart_upload", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type aws_s3_bucket_lifecycle_configuration = {
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_lifecycle_configuration) -> ()

let yojson_of_aws_s3_bucket_lifecycle_configuration =
  (function
   | {
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       rule = v_rule;
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
         let arg = yojson_of_list yojson_of_rule v_rule in
         ("rule", arg) :: bnds
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
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_lifecycle_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_lifecycle_configuration

[@@@deriving.end]

let rule__abort_incomplete_multipart_upload ?days_after_initiation ()
    : rule__abort_incomplete_multipart_upload =
  { days_after_initiation }

let rule__expiration ?date ?days ?expired_object_delete_marker () :
    rule__expiration =
  { date; days; expired_object_delete_marker }

let rule__filter__and ?object_size_greater_than
    ?object_size_less_than ?prefix ?tags () : rule__filter__and =
  { object_size_greater_than; object_size_less_than; prefix; tags }

let rule__filter__tag ~key ~value () : rule__filter__tag =
  { key; value }

let rule__filter ?object_size_greater_than ?object_size_less_than
    ?prefix ~and_ ~tag () : rule__filter =
  {
    object_size_greater_than;
    object_size_less_than;
    prefix;
    and_;
    tag;
  }

let rule__noncurrent_version_expiration ?newer_noncurrent_versions
    ?noncurrent_days () : rule__noncurrent_version_expiration =
  { newer_noncurrent_versions; noncurrent_days }

let rule__noncurrent_version_transition ?newer_noncurrent_versions
    ?noncurrent_days ~storage_class () :
    rule__noncurrent_version_transition =
  { newer_noncurrent_versions; noncurrent_days; storage_class }

let rule__transition ?date ?days ~storage_class () : rule__transition
    =
  { date; days; storage_class }

let rule ?prefix ~id ~status ~abort_incomplete_multipart_upload
    ~expiration ~filter ~noncurrent_version_expiration
    ~noncurrent_version_transition ~transition () : rule =
  {
    id;
    prefix;
    status;
    abort_incomplete_multipart_upload;
    expiration;
    filter;
    noncurrent_version_expiration;
    noncurrent_version_transition;
    transition;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_s3_bucket_lifecycle_configuration ?expected_bucket_owner ?id
    ?timeouts ~bucket ~rule () :
    aws_s3_bucket_lifecycle_configuration =
  { bucket; expected_bucket_owner; id; rule; timeouts }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let make ?expected_bucket_owner ?id ?timeouts ~bucket ~rule __id =
  let __type = "aws_s3_bucket_lifecycle_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_lifecycle_configuration
        (aws_s3_bucket_lifecycle_configuration ?expected_bucket_owner
           ?id ?timeouts ~bucket ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ?timeouts ~bucket
    ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ?timeouts ~bucket ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
