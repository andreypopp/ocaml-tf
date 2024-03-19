(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type rule__delete_marker_replication = {
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** rule__delete_marker_replication *)

type rule__destination__access_control_translation = {
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** rule__destination__access_control_translation *)

type rule__destination__encryption_configuration = {
  replica_kms_key_id : string prop;  (** replica_kms_key_id *)
}
[@@deriving yojson_of]
(** rule__destination__encryption_configuration *)

type rule__destination__metrics__event_threshold = {
  minutes : float prop;  (** minutes *)
}
[@@deriving yojson_of]
(** rule__destination__metrics__event_threshold *)

type rule__destination__metrics = {
  status : string prop;  (** status *)
  event_threshold : rule__destination__metrics__event_threshold list;
}
[@@deriving yojson_of]
(** rule__destination__metrics *)

type rule__destination__replication_time__time = {
  minutes : float prop;  (** minutes *)
}
[@@deriving yojson_of]
(** rule__destination__replication_time__time *)

type rule__destination__replication_time = {
  status : string prop;  (** status *)
  time : rule__destination__replication_time__time list;
}
[@@deriving yojson_of]
(** rule__destination__replication_time *)

type rule__destination = {
  account : string prop option; [@option]  (** account *)
  bucket : string prop;  (** bucket *)
  storage_class : string prop option; [@option]  (** storage_class *)
  access_control_translation :
    rule__destination__access_control_translation list;
  encryption_configuration :
    rule__destination__encryption_configuration list;
  metrics : rule__destination__metrics list;
  replication_time : rule__destination__replication_time list;
}
[@@deriving yojson_of]
(** rule__destination *)

type rule__existing_object_replication = {
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** rule__existing_object_replication *)

type rule__filter__and = {
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
  prefix : string prop option; [@option]  (** prefix *)
  and_ : rule__filter__and list;
  tag : rule__filter__tag list;
}
[@@deriving yojson_of]
(** rule__filter *)

type rule__source_selection_criteria__replica_modifications = {
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** rule__source_selection_criteria__replica_modifications *)

type rule__source_selection_criteria__sse_kms_encrypted_objects = {
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** rule__source_selection_criteria__sse_kms_encrypted_objects *)

type rule__source_selection_criteria = {
  replica_modifications :
    rule__source_selection_criteria__replica_modifications list;
  sse_kms_encrypted_objects :
    rule__source_selection_criteria__sse_kms_encrypted_objects list;
}
[@@deriving yojson_of]
(** rule__source_selection_criteria *)

type rule = {
  id : string prop option; [@option]  (** id *)
  prefix : string prop option; [@option]  (** prefix *)
  priority : float prop option; [@option]  (** priority *)
  status : string prop;  (** status *)
  delete_marker_replication : rule__delete_marker_replication list;
  destination : rule__destination list;
  existing_object_replication :
    rule__existing_object_replication list;
  filter : rule__filter list;
  source_selection_criteria : rule__source_selection_criteria list;
}
[@@deriving yojson_of]
(** rule *)

type aws_s3_bucket_replication_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  role : string prop;  (** role *)
  token : string prop option; [@option]  (** token *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration *)

let rule__delete_marker_replication ~status () :
    rule__delete_marker_replication =
  { status }

let rule__destination__access_control_translation ~owner () :
    rule__destination__access_control_translation =
  { owner }

let rule__destination__encryption_configuration ~replica_kms_key_id
    () : rule__destination__encryption_configuration =
  { replica_kms_key_id }

let rule__destination__metrics__event_threshold ~minutes () :
    rule__destination__metrics__event_threshold =
  { minutes }

let rule__destination__metrics ~status ~event_threshold () :
    rule__destination__metrics =
  { status; event_threshold }

let rule__destination__replication_time__time ~minutes () :
    rule__destination__replication_time__time =
  { minutes }

let rule__destination__replication_time ~status ~time () :
    rule__destination__replication_time =
  { status; time }

let rule__destination ?account ?storage_class ~bucket
    ~access_control_translation ~encryption_configuration ~metrics
    ~replication_time () : rule__destination =
  {
    account;
    bucket;
    storage_class;
    access_control_translation;
    encryption_configuration;
    metrics;
    replication_time;
  }

let rule__existing_object_replication ~status () :
    rule__existing_object_replication =
  { status }

let rule__filter__and ?prefix ?tags () : rule__filter__and =
  { prefix; tags }

let rule__filter__tag ~key ~value () : rule__filter__tag =
  { key; value }

let rule__filter ?prefix ~and_ ~tag () : rule__filter =
  { prefix; and_; tag }

let rule__source_selection_criteria__replica_modifications ~status ()
    : rule__source_selection_criteria__replica_modifications =
  { status }

let rule__source_selection_criteria__sse_kms_encrypted_objects
    ~status () :
    rule__source_selection_criteria__sse_kms_encrypted_objects =
  { status }

let rule__source_selection_criteria ~replica_modifications
    ~sse_kms_encrypted_objects () : rule__source_selection_criteria =
  { replica_modifications; sse_kms_encrypted_objects }

let rule ?id ?prefix ?priority ~status ~delete_marker_replication
    ~destination ~existing_object_replication ~filter
    ~source_selection_criteria () : rule =
  {
    id;
    prefix;
    priority;
    status;
    delete_marker_replication;
    destination;
    existing_object_replication;
    filter;
    source_selection_criteria;
  }

let aws_s3_bucket_replication_configuration ?id ?token ~bucket ~role
    ~rule () : aws_s3_bucket_replication_configuration =
  { bucket; id; role; token; rule }

type t = {
  bucket : string prop;
  id : string prop;
  role : string prop;
  token : string prop;
}

let register ?tf_module ?id ?token ~bucket ~role ~rule __resource_id
    =
  let __resource_type = "aws_s3_bucket_replication_configuration" in
  let __resource =
    aws_s3_bucket_replication_configuration ?id ?token ~bucket ~role
      ~rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_replication_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       role = Prop.computed __resource_type __resource_id "role";
       token = Prop.computed __resource_type __resource_id "token";
     }
      : t)
  in
  __resource_attributes
