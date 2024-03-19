(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** filter *)

type storage_class_analysis__data_export__destination__s3_bucket_destination = {
  bucket_account_id : string prop option; [@option]
      (** bucket_account_id *)
  bucket_arn : string prop;  (** bucket_arn *)
  format : string prop option; [@option]  (** format *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** storage_class_analysis__data_export__destination__s3_bucket_destination *)

type storage_class_analysis__data_export__destination = {
  s3_bucket_destination :
    storage_class_analysis__data_export__destination__s3_bucket_destination
    list;
}
[@@deriving yojson_of]
(** storage_class_analysis__data_export__destination *)

type storage_class_analysis__data_export = {
  output_schema_version : string prop option; [@option]
      (** output_schema_version *)
  destination : storage_class_analysis__data_export__destination list;
}
[@@deriving yojson_of]
(** storage_class_analysis__data_export *)

type storage_class_analysis = {
  data_export : storage_class_analysis__data_export list;
}
[@@deriving yojson_of]
(** storage_class_analysis *)

type aws_s3_bucket_analytics_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  filter : filter list;
  storage_class_analysis : storage_class_analysis list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration *)

let filter ?prefix ?tags () : filter = { prefix; tags }

let storage_class_analysis__data_export__destination__s3_bucket_destination
    ?bucket_account_id ?format ?prefix ~bucket_arn () :
    storage_class_analysis__data_export__destination__s3_bucket_destination
    =
  { bucket_account_id; bucket_arn; format; prefix }

let storage_class_analysis__data_export__destination
    ~s3_bucket_destination () :
    storage_class_analysis__data_export__destination =
  { s3_bucket_destination }

let storage_class_analysis__data_export ?output_schema_version
    ~destination () : storage_class_analysis__data_export =
  { output_schema_version; destination }

let storage_class_analysis ~data_export () : storage_class_analysis =
  { data_export }

let aws_s3_bucket_analytics_configuration ?id ~bucket ~name ~filter
    ~storage_class_analysis () :
    aws_s3_bucket_analytics_configuration =
  { bucket; id; name; filter; storage_class_analysis }

type t = {
  bucket : string prop;
  id : string prop;
  name : string prop;
}

let register ?tf_module ?id ~bucket ~name ~filter
    ~storage_class_analysis __resource_id =
  let __resource_type = "aws_s3_bucket_analytics_configuration" in
  let __resource =
    aws_s3_bucket_analytics_configuration ?id ~bucket ~name ~filter
      ~storage_class_analysis ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_analytics_configuration __resource);
  let __resource_attributes =
    ({
       bucket = Prop.computed __resource_type __resource_id "bucket";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
