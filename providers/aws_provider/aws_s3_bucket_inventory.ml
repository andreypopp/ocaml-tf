(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_inventory__destination__bucket__encryption__sse_kms = {
  key_id : string;  (** key_id *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__destination__bucket__encryption__sse_kms *)

type aws_s3_bucket_inventory__destination__bucket__encryption__sse_s3 =
  unit
[@@deriving yojson_of]

type aws_s3_bucket_inventory__destination__bucket__encryption = {
  sse_kms :
    aws_s3_bucket_inventory__destination__bucket__encryption__sse_kms
    list;
  sse_s3 :
    aws_s3_bucket_inventory__destination__bucket__encryption__sse_s3
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__destination__bucket__encryption *)

type aws_s3_bucket_inventory__destination__bucket = {
  account_id : string option; [@option]  (** account_id *)
  bucket_arn : string;  (** bucket_arn *)
  format : string;  (** format *)
  prefix : string option; [@option]  (** prefix *)
  encryption :
    aws_s3_bucket_inventory__destination__bucket__encryption list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__destination__bucket *)

type aws_s3_bucket_inventory__destination = {
  bucket : aws_s3_bucket_inventory__destination__bucket list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__destination *)

type aws_s3_bucket_inventory__filter = {
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__filter *)

type aws_s3_bucket_inventory__schedule = {
  frequency : string;  (** frequency *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__schedule *)

type aws_s3_bucket_inventory = {
  bucket : string;  (** bucket *)
  enabled : bool option; [@option]  (** enabled *)
  id : string option; [@option]  (** id *)
  included_object_versions : string;  (** included_object_versions *)
  name : string;  (** name *)
  optional_fields : string list option; [@option]
      (** optional_fields *)
  destination : aws_s3_bucket_inventory__destination list;
  filter : aws_s3_bucket_inventory__filter list;
  schedule : aws_s3_bucket_inventory__schedule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory *)

let aws_s3_bucket_inventory ?enabled ?id ?optional_fields ~bucket
    ~included_object_versions ~name ~destination ~filter ~schedule
    __resource_id =
  let __resource_type = "aws_s3_bucket_inventory" in
  let __resource =
    {
      bucket;
      enabled;
      id;
      included_object_versions;
      name;
      optional_fields;
      destination;
      filter;
      schedule;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_inventory __resource);
  ()
