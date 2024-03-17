(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_spaces_bucket__cors_rule = {
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

type digitalocean_spaces_bucket__lifecycle_rule__expiration = {
  date : string prop option; [@option]  (** date *)
  days : float prop option; [@option]  (** days *)
  expired_object_delete_marker : bool prop option; [@option]
      (** expired_object_delete_marker *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket__lifecycle_rule__expiration *)

type digitalocean_spaces_bucket__lifecycle_rule__noncurrent_version_expiration = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket__lifecycle_rule__noncurrent_version_expiration *)

type digitalocean_spaces_bucket__lifecycle_rule = {
  abort_incomplete_multipart_upload_days : float prop option;
      [@option]
      (** abort_incomplete_multipart_upload_days *)
  enabled : bool prop;  (** enabled *)
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  expiration :
    digitalocean_spaces_bucket__lifecycle_rule__expiration list;
  noncurrent_version_expiration :
    digitalocean_spaces_bucket__lifecycle_rule__noncurrent_version_expiration
    list;
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket__lifecycle_rule *)

type digitalocean_spaces_bucket__versioning = {
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket__versioning *)

type digitalocean_spaces_bucket = {
  acl : string prop option; [@option]
      (** Canned ACL applied on bucket creation *)
  force_destroy : bool prop option; [@option]
      (** Unless true, the bucket will only be destroyed if empty *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** Bucket name *)
  region : string prop option; [@option]  (** Bucket region *)
  cors_rule : digitalocean_spaces_bucket__cors_rule list;
  lifecycle_rule : digitalocean_spaces_bucket__lifecycle_rule list;
  versioning : digitalocean_spaces_bucket__versioning list;
}
[@@deriving yojson_of]
(** digitalocean_spaces_bucket *)

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

let digitalocean_spaces_bucket ?acl ?force_destroy ?id ?region ~name
    ~cors_rule ~lifecycle_rule ~versioning __resource_id =
  let __resource_type = "digitalocean_spaces_bucket" in
  let __resource =
    ({
       acl;
       force_destroy;
       id;
       name;
       region;
       cors_rule;
       lifecycle_rule;
       versioning;
     }
      : digitalocean_spaces_bucket)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_spaces_bucket __resource);
  let __resource_attributes =
    ({
       acl = Prop.computed __resource_type __resource_id "acl";
       bucket_domain_name =
         Prop.computed __resource_type __resource_id
           "bucket_domain_name";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
