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
    ~s3_bucket ~s3_region ~time_unit () : aws_cur_report_definition =
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

type t = {
  additional_artifacts : string list prop;
  additional_schema_elements : string list prop;
  arn : string prop;
  compression : string prop;
  format : string prop;
  id : string prop;
  refresh_closed_reports : bool prop;
  report_name : string prop;
  report_versioning : string prop;
  s3_bucket : string prop;
  s3_prefix : string prop;
  s3_region : string prop;
  time_unit : string prop;
}

let register ?tf_module ?additional_artifacts ?id
    ?refresh_closed_reports ?report_versioning ?s3_prefix
    ~additional_schema_elements ~compression ~format ~report_name
    ~s3_bucket ~s3_region ~time_unit __resource_id =
  let __resource_type = "aws_cur_report_definition" in
  let __resource =
    aws_cur_report_definition ?additional_artifacts ?id
      ?refresh_closed_reports ?report_versioning ?s3_prefix
      ~additional_schema_elements ~compression ~format ~report_name
      ~s3_bucket ~s3_region ~time_unit ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cur_report_definition __resource);
  let __resource_attributes =
    ({
       additional_artifacts =
         Prop.computed __resource_type __resource_id
           "additional_artifacts";
       additional_schema_elements =
         Prop.computed __resource_type __resource_id
           "additional_schema_elements";
       arn = Prop.computed __resource_type __resource_id "arn";
       compression =
         Prop.computed __resource_type __resource_id "compression";
       format = Prop.computed __resource_type __resource_id "format";
       id = Prop.computed __resource_type __resource_id "id";
       refresh_closed_reports =
         Prop.computed __resource_type __resource_id
           "refresh_closed_reports";
       report_name =
         Prop.computed __resource_type __resource_id "report_name";
       report_versioning =
         Prop.computed __resource_type __resource_id
           "report_versioning";
       s3_bucket =
         Prop.computed __resource_type __resource_id "s3_bucket";
       s3_prefix =
         Prop.computed __resource_type __resource_id "s3_prefix";
       s3_region =
         Prop.computed __resource_type __resource_id "s3_region";
       time_unit =
         Prop.computed __resource_type __resource_id "time_unit";
     }
      : t)
  in
  __resource_attributes
