(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_replication_configuration__rule__delete_marker_replication = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__delete_marker_replication *)

type aws_s3_bucket_replication_configuration__rule__destination__access_control_translation = {
  owner : string;  (** owner *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination__access_control_translation *)

type aws_s3_bucket_replication_configuration__rule__destination__encryption_configuration = {
  replica_kms_key_id : string;  (** replica_kms_key_id *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination__encryption_configuration *)

type aws_s3_bucket_replication_configuration__rule__destination__metrics__event_threshold = {
  minutes : float;  (** minutes *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination__metrics__event_threshold *)

type aws_s3_bucket_replication_configuration__rule__destination__metrics = {
  status : string;  (** status *)
  event_threshold :
    aws_s3_bucket_replication_configuration__rule__destination__metrics__event_threshold
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination__metrics *)

type aws_s3_bucket_replication_configuration__rule__destination__replication_time__time = {
  minutes : float;  (** minutes *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination__replication_time__time *)

type aws_s3_bucket_replication_configuration__rule__destination__replication_time = {
  status : string;  (** status *)
  time :
    aws_s3_bucket_replication_configuration__rule__destination__replication_time__time
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination__replication_time *)

type aws_s3_bucket_replication_configuration__rule__destination = {
  account : string option; [@option]  (** account *)
  bucket : string;  (** bucket *)
  storage_class : string option; [@option]  (** storage_class *)
  access_control_translation :
    aws_s3_bucket_replication_configuration__rule__destination__access_control_translation
    list;
  encryption_configuration :
    aws_s3_bucket_replication_configuration__rule__destination__encryption_configuration
    list;
  metrics :
    aws_s3_bucket_replication_configuration__rule__destination__metrics
    list;
  replication_time :
    aws_s3_bucket_replication_configuration__rule__destination__replication_time
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__destination *)

type aws_s3_bucket_replication_configuration__rule__existing_object_replication = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__existing_object_replication *)

type aws_s3_bucket_replication_configuration__rule__filter__and = {
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__filter__and *)

type aws_s3_bucket_replication_configuration__rule__filter__tag = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__filter__tag *)

type aws_s3_bucket_replication_configuration__rule__filter = {
  prefix : string option; [@option]  (** prefix *)
  and_ :
    aws_s3_bucket_replication_configuration__rule__filter__and list;
  tag :
    aws_s3_bucket_replication_configuration__rule__filter__tag list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__filter *)

type aws_s3_bucket_replication_configuration__rule__source_selection_criteria__replica_modifications = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__source_selection_criteria__replica_modifications *)

type aws_s3_bucket_replication_configuration__rule__source_selection_criteria__sse_kms_encrypted_objects = {
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__source_selection_criteria__sse_kms_encrypted_objects *)

type aws_s3_bucket_replication_configuration__rule__source_selection_criteria = {
  replica_modifications :
    aws_s3_bucket_replication_configuration__rule__source_selection_criteria__replica_modifications
    list;
  sse_kms_encrypted_objects :
    aws_s3_bucket_replication_configuration__rule__source_selection_criteria__sse_kms_encrypted_objects
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule__source_selection_criteria *)

type aws_s3_bucket_replication_configuration__rule = {
  id : string option; [@option]  (** id *)
  prefix : string option; [@option]  (** prefix *)
  priority : float option; [@option]  (** priority *)
  status : string;  (** status *)
  delete_marker_replication :
    aws_s3_bucket_replication_configuration__rule__delete_marker_replication
    list;
  destination :
    aws_s3_bucket_replication_configuration__rule__destination list;
  existing_object_replication :
    aws_s3_bucket_replication_configuration__rule__existing_object_replication
    list;
  filter :
    aws_s3_bucket_replication_configuration__rule__filter list;
  source_selection_criteria :
    aws_s3_bucket_replication_configuration__rule__source_selection_criteria
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration__rule *)

type aws_s3_bucket_replication_configuration = {
  bucket : string;  (** bucket *)
  role : string;  (** role *)
  token : string option; [@option]  (** token *)
  rule : aws_s3_bucket_replication_configuration__rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_replication_configuration *)

let aws_s3_bucket_replication_configuration ?token ~bucket ~role
    ~rule __resource_id =
  let __resource_type = "aws_s3_bucket_replication_configuration" in
  let __resource = { bucket; role; token; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_replication_configuration __resource);
  ()
