(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cur_report_definition = {
  additional_artifacts : string prop list option; [@option]
      (** additional_artifacts *)
  additional_schema_elements : string prop list;
      (** additional_schema_elements *)
  compression : string prop;  (** compression *)
  format : string prop;  (** format *)
  id : string prop option; [@option]  (** id *)
  refresh_closed_reports : bool prop option; [@option]
      (** refresh_closed_reports *)
  report_name : string prop;  (** report_name *)
  report_versioning : string prop option; [@option]
      (** report_versioning *)
  s3_bucket : string prop;  (** s3_bucket *)
  s3_prefix : string prop option; [@option]  (** s3_prefix *)
  s3_region : string prop;  (** s3_region *)
  time_unit : string prop;  (** time_unit *)
}
[@@deriving yojson_of]
(** aws_cur_report_definition *)

let aws_cur_report_definition ?additional_artifacts ?id
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
      id;
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
