(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__abort_incomplete_multipart_upload = {
  days_after_initiation : float prop option; [@option]
      (** days_after_initiation *)
}
[@@deriving yojson_of]
(** rule__abort_incomplete_multipart_upload *)

type rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** rule__expiration *)

type rule__filter__and = {
  object_size_greater_than : float prop option; [@option]
      (** object_size_greater_than *)
  object_size_less_than : float prop option; [@option]
      (** object_size_less_than *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** rule__filter__and *)

type rule__filter__tag = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** rule__filter__tag *)

type rule__filter = {
  object_size_greater_than : string prop option; [@option]
      (** object_size_greater_than *)
  object_size_less_than : string prop option; [@option]
      (** object_size_less_than *)
  prefix : string prop option; [@option]  (** prefix *)
  and_ : rule__filter__and list;
  tag : rule__filter__tag list;
}
[@@deriving yojson_of]
(** rule__filter *)

type rule__noncurrent_version_expiration = {
  newer_noncurrent_versions : string prop option; [@option]
      (** newer_noncurrent_versions *)
  noncurrent_days : float prop option; [@option]
      (** noncurrent_days *)
}
[@@deriving yojson_of]
(** rule__noncurrent_version_expiration *)

type rule__noncurrent_version_transition = {
  newer_noncurrent_versions : string prop option; [@option]
      (** newer_noncurrent_versions *)
  noncurrent_days : float prop option; [@option]
      (** noncurrent_days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** rule__noncurrent_version_transition *)

type rule__transition = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** rule__transition *)

type rule = {
  id : string prop;  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  status : string prop;  (** status *)
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
[@@deriving yojson_of]
(** rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_s3_bucket_lifecycle_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_s3_bucket_lifecycle_configuration *)

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
