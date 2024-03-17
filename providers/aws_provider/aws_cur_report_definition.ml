(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cur_report_definition = {
  additional_artifacts : string list option; [@option]
      (** additional_artifacts *)
  additional_schema_elements : string list;
      (** additional_schema_elements *)
  compression : string;  (** compression *)
  format : string;  (** format *)
  refresh_closed_reports : bool option; [@option]
      (** refresh_closed_reports *)
  report_name : string;  (** report_name *)
  report_versioning : string option; [@option]
      (** report_versioning *)
  s3_bucket : string;  (** s3_bucket *)
  s3_prefix : string option; [@option]  (** s3_prefix *)
  s3_region : string;  (** s3_region *)
  time_unit : string;  (** time_unit *)
}
[@@deriving yojson_of]
(** aws_cur_report_definition *)

let aws_cur_report_definition ?additional_artifacts
    ?refresh_closed_reports ?report_versioning ?s3_prefix
    ~additional_schema_elements ~compression ~format ~report_name
    ~s3_bucket ~s3_region ~time_unit __resource_id =
  let __resource_type = "aws_cur_report_definition" in
  let __resource =
    {
      additional_artifacts;
      additional_schema_elements;
      compression;
      format;
      refresh_closed_reports;
      report_name;
      report_versioning;
      s3_bucket;
      s3_prefix;
      s3_region;
      time_unit;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cur_report_definition __resource);
  ()
