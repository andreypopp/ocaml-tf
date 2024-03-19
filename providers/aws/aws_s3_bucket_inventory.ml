(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination__bucket__encryption__sse_kms = {
  key_id : string prop;  (** key_id *)
}
[@@deriving yojson_of]
(** destination__bucket__encryption__sse_kms *)

type destination__bucket__encryption__sse_s3 = unit
[@@deriving yojson_of]

type destination__bucket__encryption = {
  sse_kms : destination__bucket__encryption__sse_kms list;
  sse_s3 : destination__bucket__encryption__sse_s3 list;
}
[@@deriving yojson_of]
(** destination__bucket__encryption *)

type destination__bucket = {
  account_id : string prop option; [@option]  (** account_id *)
  bucket_arn : string prop;  (** bucket_arn *)
  format : string prop;  (** format *)
  prefix : string prop option; [@option]  (** prefix *)
  encryption : destination__bucket__encryption list;
}
[@@deriving yojson_of]
(** destination__bucket *)

type destination = { bucket : destination__bucket list }
[@@deriving yojson_of]
(** destination *)

type filter = {
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** filter *)

type schedule = { frequency : string prop  (** frequency *) }
[@@deriving yojson_of]
(** schedule *)

type aws_s3_bucket_inventory = {
  bucket : string prop;  (** bucket *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  included_object_versions : string prop;
      (** included_object_versions *)
  name : string prop;  (** name *)
  optional_fields : string prop list option; [@option]
      (** optional_fields *)
  destination : destination list;
  filter : filter list;
  schedule : schedule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_inventory *)

let destination__bucket__encryption__sse_kms ~key_id () :
    destination__bucket__encryption__sse_kms =
  { key_id }

let destination__bucket__encryption__sse_s3 () = ()

let destination__bucket__encryption ~sse_kms ~sse_s3 () :
    destination__bucket__encryption =
  { sse_kms; sse_s3 }

let destination__bucket ?account_id ?prefix ~bucket_arn ~format
    ~encryption () : destination__bucket =
  { account_id; bucket_arn; format; prefix; encryption }

let destination ~bucket () : destination = { bucket }
let filter ?prefix () : filter = { prefix }
let schedule ~frequency () : schedule = { frequency }

let aws_s3_bucket_inventory ?enabled ?id ?optional_fields ~bucket
    ~included_object_versions ~name ~destination ~filter ~schedule ()
    : aws_s3_bucket_inventory =
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

type t = {
  bucket : string prop;
  enabled : bool prop;
  id : string prop;
  included_object_versions : string prop;
  name : string prop;
  optional_fields : string list prop;
}

let register ?tf_module ?enabled ?id ?optional_fields ~bucket
    ~included_object_versions ~name ~destination ~filter ~schedule
    __resource_id =
  let __resource_type = "aws_s3_bucket_inventory" in
  let __resource =
    aws_s3_bucket_inventory ?enabled ?id ?optional_fields ~bucket
      ~included_object_versions ~name ~destination ~filter ~schedule
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
