(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_analytics_configuration__filter = {
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration__filter *)

type aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination__s3_bucket_destination = {
  bucket_account_id : string option; [@option]
      (** bucket_account_id *)
  bucket_arn : string;  (** bucket_arn *)
  format : string option; [@option]  (** format *)
  prefix : string option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination__s3_bucket_destination *)

type aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination = {
  s3_bucket_destination :
    aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination__s3_bucket_destination
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination *)

type aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export = {
  output_schema_version : string option; [@option]
      (** output_schema_version *)
  destination :
    aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export__destination
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export *)

type aws_s3_bucket_analytics_configuration__storage_class_analysis = {
  data_export :
    aws_s3_bucket_analytics_configuration__storage_class_analysis__data_export
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration__storage_class_analysis *)

type aws_s3_bucket_analytics_configuration = {
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  filter : aws_s3_bucket_analytics_configuration__filter list;
  storage_class_analysis :
    aws_s3_bucket_analytics_configuration__storage_class_analysis
    list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration *)

let aws_s3_bucket_analytics_configuration ?id ~bucket ~name ~filter
    ~storage_class_analysis __resource_id =
  let __resource_type = "aws_s3_bucket_analytics_configuration" in
  let __resource =
    { bucket; id; name; filter; storage_class_analysis }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_analytics_configuration __resource);
  ()
