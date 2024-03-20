(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
      (** allowed_headers *)
  allowed_methods : string prop list;  (** allowed_methods *)
  allowed_origins : string prop list;  (** allowed_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** cors_rule *)

type grant = {
  id : string prop option; [@option]  (** id *)
  permissions : string prop list;  (** permissions *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** grant *)

type lifecycle_rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** lifecycle_rule__expiration *)

type lifecycle_rule__noncurrent_version_expiration = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** lifecycle_rule__noncurrent_version_expiration *)

type lifecycle_rule__noncurrent_version_transition = {
  days : float prop option; [@option]  (** days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** lifecycle_rule__noncurrent_version_transition *)

type lifecycle_rule__transition = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  storage_class : string prop;  (** storage_class *)
}
[@@deriving yojson_of]
(** lifecycle_rule__transition *)

type lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float prop option;
      [@option]
      (** abort_incomplete_multipart_upload_days *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  expiration : lifecycle_rule__expiration list;
  noncurrent_version_expiration :
    lifecycle_rule__noncurrent_version_expiration list;
  noncurrent_version_transition :
    lifecycle_rule__noncurrent_version_transition list;
  transition : lifecycle_rule__transition list;
}
[@@deriving yojson_of]
(** lifecycle_rule *)

type logging = {
  target_bucket : string prop;  (** target_bucket *)
  target_prefix : string prop option; [@option]  (** target_prefix *)
}
[@@deriving yojson_of]
(** logging *)

type object_lock_configuration__rule__default_retention = {
  days : float prop option; [@option]  (** days *)
  mode : string prop;  (** mode *)
  years : float prop option; [@option]  (** years *)
}
[@@deriving yojson_of]
(** object_lock_configuration__rule__default_retention *)

type object_lock_configuration__rule = {
  default_retention :
    object_lock_configuration__rule__default_retention list;
}
[@@deriving yojson_of]
(** object_lock_configuration__rule *)

type object_lock_configuration = {
  object_lock_enabled : string prop option; [@option]
      (** object_lock_enabled *)
  rule : object_lock_configuration__rule list;
}
[@@deriving yojson_of]
(** object_lock_configuration *)

type replication_configuration__rules__destination__access_control_translation = {
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** replication_configuration__rules__destination__access_control_translation *)

type replication_configuration__rules__destination__metrics = {
  minutes : float prop option; [@option]  (** minutes *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** replication_configuration__rules__destination__metrics *)

type replication_configuration__rules__destination__replication_time = {
  minutes : float prop option; [@option]  (** minutes *)
  status : string prop option; [@option]  (** status *)
}
[@@deriving yojson_of]
(** replication_configuration__rules__destination__replication_time *)

type replication_configuration__rules__destination = {
  account_id : string prop option; [@option]  (** account_id *)
  bucket : string prop;  (** bucket *)
  replica_kms_key_id : string prop option; [@option]
      (** replica_kms_key_id *)
  storage_class : string prop option; [@option]  (** storage_class *)
  access_control_translation :
    replication_configuration__rules__destination__access_control_translation
    list;
  metrics :
    replication_configuration__rules__destination__metrics list;
  replication_time :
    replication_configuration__rules__destination__replication_time
    list;
}
[@@deriving yojson_of]
(** replication_configuration__rules__destination *)

type replication_configuration__rules__filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** replication_configuration__rules__filter *)

type replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects = {
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects *)

type replication_configuration__rules__source_selection_criteria = {
  sse_kms_encrypted_objects :
    replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    list;
}
[@@deriving yojson_of]
(** replication_configuration__rules__source_selection_criteria *)

type replication_configuration__rules = {
  delete_marker_replication_status : string prop option; [@option]
      (** delete_marker_replication_status *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  priority : float prop option; [@option]  (** priority *)
  status : string prop;  (** status *)
  destination : replication_configuration__rules__destination list;
  filter : replication_configuration__rules__filter list;
  source_selection_criteria :
    replication_configuration__rules__source_selection_criteria list;
}
[@@deriving yojson_of]
(** replication_configuration__rules *)

type replication_configuration = {
  role : string prop;  (** role *)
  rules : replication_configuration__rules list;
}
[@@deriving yojson_of]
(** replication_configuration *)

type server_side_encryption_configuration__rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  sse_algorithm : string prop;  (** sse_algorithm *)
}
[@@deriving yojson_of]
(** server_side_encryption_configuration__rule__apply_server_side_encryption_by_default *)

type server_side_encryption_configuration__rule = {
  bucket_key_enabled : bool prop option; [@option]
      (** bucket_key_enabled *)
  apply_server_side_encryption_by_default :
    server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    list;
}
[@@deriving yojson_of]
(** server_side_encryption_configuration__rule *)

type server_side_encryption_configuration = {
  rule : server_side_encryption_configuration__rule list;
}
[@@deriving yojson_of]
(** server_side_encryption_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type versioning = {
  enabled : bool prop option; [@option]  (** enabled *)
  mfa_delete : bool prop option; [@option]  (** mfa_delete *)
}
[@@deriving yojson_of]
(** versioning *)

type website = {
  error_document : string prop option; [@option]
      (** error_document *)
  index_document : string prop option; [@option]
      (** index_document *)
  redirect_all_requests_to : string prop option; [@option]
      (** redirect_all_requests_to *)
  routing_rules : string prop option; [@option]  (** routing_rules *)
}
[@@deriving yojson_of]
(** website *)

type aws_s3_bucket = {
  acceleration_status : string prop option; [@option]
      (** acceleration_status *)
  acl : string prop option; [@option]  (** acl *)
  bucket : string prop option; [@option]  (** bucket *)
  bucket_prefix : string prop option; [@option]  (** bucket_prefix *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  object_lock_enabled : bool prop option; [@option]
      (** object_lock_enabled *)
  policy : string prop option; [@option]  (** policy *)
  request_payer : string prop option; [@option]  (** request_payer *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  cors_rule : cors_rule list;
  grant : grant list;
  lifecycle_rule : lifecycle_rule list;
  logging : logging list;
  object_lock_configuration : object_lock_configuration list;
  replication_configuration : replication_configuration list;
  server_side_encryption_configuration :
    server_side_encryption_configuration list;
  timeouts : timeouts option;
  versioning : versioning list;
  website : website list;
}
[@@deriving yojson_of]
(** aws_s3_bucket *)

let cors_rule ?allowed_headers ?expose_headers ?max_age_seconds
    ~allowed_methods ~allowed_origins () : cors_rule =
  {
    allowed_headers;
    allowed_methods;
    allowed_origins;
    expose_headers;
    max_age_seconds;
  }

let grant ?id ?uri ~permissions ~type_ () : grant =
  { id; permissions; type_; uri }

let lifecycle_rule__expiration ?date ?days
    ?expired_object_delete_marker () : lifecycle_rule__expiration =
  { date; days; expired_object_delete_marker }

let lifecycle_rule__noncurrent_version_expiration ?days () :
    lifecycle_rule__noncurrent_version_expiration =
  { days }

let lifecycle_rule__noncurrent_version_transition ?days
    ~storage_class () : lifecycle_rule__noncurrent_version_transition
    =
  { days; storage_class }

let lifecycle_rule__transition ?date ?days ~storage_class () :
    lifecycle_rule__transition =
  { date; days; storage_class }

let lifecycle_rule ?abort_incomplete_multipart_upload_days ?id
    ?prefix ?tags ~enabled ~expiration ~noncurrent_version_expiration
    ~noncurrent_version_transition ~transition () : lifecycle_rule =
  {
    abort_incomplete_multipart_upload_days;
    enabled;
    id;
    prefix;
    tags;
    expiration;
    noncurrent_version_expiration;
    noncurrent_version_transition;
    transition;
  }

let logging ?target_prefix ~target_bucket () : logging =
  { target_bucket; target_prefix }

let object_lock_configuration__rule__default_retention ?days ?years
    ~mode () : object_lock_configuration__rule__default_retention =
  { days; mode; years }

let object_lock_configuration__rule ~default_retention () :
    object_lock_configuration__rule =
  { default_retention }

let object_lock_configuration ?object_lock_enabled ~rule () :
    object_lock_configuration =
  { object_lock_enabled; rule }

let replication_configuration__rules__destination__access_control_translation
    ~owner () :
    replication_configuration__rules__destination__access_control_translation
    =
  { owner }

let replication_configuration__rules__destination__metrics ?minutes
    ?status () :
    replication_configuration__rules__destination__metrics =
  { minutes; status }

let replication_configuration__rules__destination__replication_time
    ?minutes ?status () :
    replication_configuration__rules__destination__replication_time =
  { minutes; status }

let replication_configuration__rules__destination ?account_id
    ?replica_kms_key_id ?storage_class ~bucket
    ~access_control_translation ~metrics ~replication_time () :
    replication_configuration__rules__destination =
  {
    account_id;
    bucket;
    replica_kms_key_id;
    storage_class;
    access_control_translation;
    metrics;
    replication_time;
  }

let replication_configuration__rules__filter ?prefix ?tags () :
    replication_configuration__rules__filter =
  { prefix; tags }

let replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    ~enabled () :
    replication_configuration__rules__source_selection_criteria__sse_kms_encrypted_objects
    =
  { enabled }

let replication_configuration__rules__source_selection_criteria
    ~sse_kms_encrypted_objects () :
    replication_configuration__rules__source_selection_criteria =
  { sse_kms_encrypted_objects }

let replication_configuration__rules
    ?delete_marker_replication_status ?id ?prefix ?priority ~status
    ~destination ~filter ~source_selection_criteria () :
    replication_configuration__rules =
  {
    delete_marker_replication_status;
    id;
    prefix;
    priority;
    status;
    destination;
    filter;
    source_selection_criteria;
  }

let replication_configuration ~role ~rules () :
    replication_configuration =
  { role; rules }

let server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    ?kms_master_key_id ~sse_algorithm () :
    server_side_encryption_configuration__rule__apply_server_side_encryption_by_default
    =
  { kms_master_key_id; sse_algorithm }

let server_side_encryption_configuration__rule ?bucket_key_enabled
    ~apply_server_side_encryption_by_default () :
    server_side_encryption_configuration__rule =
  { bucket_key_enabled; apply_server_side_encryption_by_default }

let server_side_encryption_configuration ~rule () :
    server_side_encryption_configuration =
  { rule }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let versioning ?enabled ?mfa_delete () : versioning =
  { enabled; mfa_delete }

let website ?error_document ?index_document ?redirect_all_requests_to
    ?routing_rules () : website =
  {
    error_document;
    index_document;
    redirect_all_requests_to;
    routing_rules;
  }

let aws_s3_bucket ?acceleration_status ?acl ?bucket ?bucket_prefix
    ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
    ?tags ?tags_all ?timeouts ~cors_rule ~grant ~lifecycle_rule
    ~logging ~object_lock_configuration ~replication_configuration
    ~server_side_encryption_configuration ~versioning ~website () :
    aws_s3_bucket =
  {
    acceleration_status;
    acl;
    bucket;
    bucket_prefix;
    force_destroy;
    id;
    object_lock_enabled;
    policy;
    request_payer;
    tags;
    tags_all;
    cors_rule;
    grant;
    lifecycle_rule;
    logging;
    object_lock_configuration;
    replication_configuration;
    server_side_encryption_configuration;
    timeouts;
    versioning;
    website;
  }

type t = {
  acceleration_status : string prop;
  acl : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_domain_name : string prop;
  bucket_prefix : string prop;
  bucket_regional_domain_name : string prop;
  force_destroy : bool prop;
  hosted_zone_id : string prop;
  id : string prop;
  object_lock_enabled : bool prop;
  policy : string prop;
  region : string prop;
  request_payer : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  website_domain : string prop;
  website_endpoint : string prop;
}

let make ?acceleration_status ?acl ?bucket ?bucket_prefix
    ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
    ?tags ?tags_all ?timeouts ~cors_rule ~grant ~lifecycle_rule
    ~logging ~object_lock_configuration ~replication_configuration
    ~server_side_encryption_configuration ~versioning ~website __id =
  let __type = "aws_s3_bucket" in
  let __attrs =
    ({
       acceleration_status =
         Prop.computed __type __id "acceleration_status";
       acl = Prop.computed __type __id "acl";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_domain_name =
         Prop.computed __type __id "bucket_domain_name";
       bucket_prefix = Prop.computed __type __id "bucket_prefix";
       bucket_regional_domain_name =
         Prop.computed __type __id "bucket_regional_domain_name";
       force_destroy = Prop.computed __type __id "force_destroy";
       hosted_zone_id = Prop.computed __type __id "hosted_zone_id";
       id = Prop.computed __type __id "id";
       object_lock_enabled =
         Prop.computed __type __id "object_lock_enabled";
       policy = Prop.computed __type __id "policy";
       region = Prop.computed __type __id "region";
       request_payer = Prop.computed __type __id "request_payer";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       website_domain = Prop.computed __type __id "website_domain";
       website_endpoint =
         Prop.computed __type __id "website_endpoint";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket
        (aws_s3_bucket ?acceleration_status ?acl ?bucket
           ?bucket_prefix ?force_destroy ?id ?object_lock_enabled
           ?policy ?request_payer ?tags ?tags_all ?timeouts
           ~cors_rule ~grant ~lifecycle_rule ~logging
           ~object_lock_configuration ~replication_configuration
           ~server_side_encryption_configuration ~versioning ~website
           ());
    attrs = __attrs;
  }

let register ?tf_module ?acceleration_status ?acl ?bucket
    ?bucket_prefix ?force_destroy ?id ?object_lock_enabled ?policy
    ?request_payer ?tags ?tags_all ?timeouts ~cors_rule ~grant
    ~lifecycle_rule ~logging ~object_lock_configuration
    ~replication_configuration ~server_side_encryption_configuration
    ~versioning ~website __id =
  let (r : _ Tf_core.resource) =
    make ?acceleration_status ?acl ?bucket ?bucket_prefix
      ?force_destroy ?id ?object_lock_enabled ?policy ?request_payer
      ?tags ?tags_all ?timeouts ~cors_rule ~grant ~lifecycle_rule
      ~logging ~object_lock_configuration ~replication_configuration
      ~server_side_encryption_configuration ~versioning ~website __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
