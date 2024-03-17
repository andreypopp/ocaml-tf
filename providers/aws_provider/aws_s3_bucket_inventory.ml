(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_inventory__destination__bucket__encryption__sse_kms = {
  key_id : string prop;  (** key_id *)
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
  account_id : string prop option; [@option]  (** account_id *)
  bucket_arn : string prop;  (** bucket_arn *)
  format : string prop;  (** format *)
  prefix : string prop option; [@option]  (** prefix *)
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
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__filter *)

type aws_s3_bucket_inventory__schedule = {
  frequency : string prop;  (** frequency *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory__schedule *)

type aws_s3_bucket_inventory = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  included_object_versions : string prop;
      (** included_object_versions *)
  name : string prop;  (** name *)
  optional_fields : string prop list option; [@option]
      (** optional_fields *)
  destination : aws_s3_bucket_inventory__destination list;
  filter : aws_s3_bucket_inventory__filter list;
  schedule : aws_s3_bucket_inventory__schedule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory *)

type t = {
  bucket : string prop;
  enabled : bool prop;
  id : string prop;
  included_object_versions : string prop;
  name : string prop;
  optional_fields : string list prop;
}

let aws_s3_bucket_inventory ?enabled ?id ?optional_fields ~bucket
    ~included_object_versions ~name ~destination ~filter ~schedule
    __resource_id =
  let __resource_type = "aws_s3_bucket_inventory" in
  let __resource =
    ({
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
      : aws_s3_bucket_inventory)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_inventory __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       included_object_versions =
         Prop.computed __resource_type __resource_id
           "included_object_versions";
       name = Prop.computed __resource_type __resource_id "name";
       optional_fields =
         Prop.computed __resource_type __resource_id
           "optional_fields";
     }
      : t)
  in
  __resource_attributes
