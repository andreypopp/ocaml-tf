(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cors_rule = {
  allowed_headers : string prop list option; [@option]
      (** A list of headers that will be included in the CORS preflight request's Access-Control-Request-Headers. A header may contain one wildcard (e.g. x-amz-\*\). *)
  allowed_methods : string prop list;
      (** A list of HTTP methods (e.g. GET) which are allowed from the specified origin. *)
  allowed_origins : string prop list;
      (** A list of hosts from which requests using the specified methods are allowed. A host may contain one wildcard (e.g. http://*.example.com). *)
  max_age_seconds : float prop option; [@option]
      (** max_age_seconds *)
}
[@@deriving yojson_of]
(** A container holding a list of elements describing allowed methods for a specific origin. *)

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

type lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float prop option;
      [@option]
      (** abort_incomplete_multipart_upload_days *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  expiration : lifecycle_rule__expiration list;
  noncurrent_version_expiration :
    lifecycle_rule__noncurrent_version_expiration list;
}
[@@deriving yojson_of]
(** lifecycle_rule *)

type versioning = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** versioning *)

type digitalocean_spaces_bucket = {
  acl : string prop option; [@option]
      (** Canned ACL applied on bucket creation *)
  force_destroy : bool prop option; [@option]
      (** Unless true, the bucket will only be destroyed if empty *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Bucket name *)
  region : string prop option; [@option]  (** Bucket region *)
  cors_rule : cors_rule list;
  lifecycle_rule : lifecycle_rule list;
  versioning : versioning list;
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket *)

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

let digitalocean_spaces_bucket ?acl ?force_destroy ?id ?region ~name
    ~cors_rule ~lifecycle_rule ~versioning () :
    digitalocean_spaces_bucket =
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

let make ?acl ?force_destroy ?id ?region ~name ~cors_rule
    ~lifecycle_rule ~versioning __id =
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
           ~name ~cors_rule ~lifecycle_rule ~versioning ());
    attrs = __attrs;
  }

let register ?tf_module ?acl ?force_destroy ?id ?region ~name
    ~cors_rule ~lifecycle_rule ~versioning __id =
  let (r : _ Tf_core.resource) =
    make ?acl ?force_destroy ?id ?region ~name ~cors_rule
      ~lifecycle_rule ~versioning __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
