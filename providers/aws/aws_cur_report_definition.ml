(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?additional_artifacts ?id ?refresh_closed_reports
    ?report_versioning ?s3_prefix ~additional_schema_elements
    ~compression ~format ~report_name ~s3_bucket ~s3_region
    ~time_unit __id =
  let __type = "aws_cur_report_definition" in
  let __attrs =
    ({
       additional_artifacts =
         Prop.computed __type __id "additional_artifacts";
       additional_schema_elements =
         Prop.computed __type __id "additional_schema_elements";
       arn = Prop.computed __type __id "arn";
       compression = Prop.computed __type __id "compression";
       format = Prop.computed __type __id "format";
       id = Prop.computed __type __id "id";
       refresh_closed_reports =
         Prop.computed __type __id "refresh_closed_reports";
       report_name = Prop.computed __type __id "report_name";
       report_versioning =
         Prop.computed __type __id "report_versioning";
       s3_bucket = Prop.computed __type __id "s3_bucket";
       s3_prefix = Prop.computed __type __id "s3_prefix";
       s3_region = Prop.computed __type __id "s3_region";
       time_unit = Prop.computed __type __id "time_unit";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cur_report_definition
        (aws_cur_report_definition ?additional_artifacts ?id
           ?refresh_closed_reports ?report_versioning ?s3_prefix
           ~additional_schema_elements ~compression ~format
           ~report_name ~s3_bucket ~s3_region ~time_unit ());
    attrs = __attrs;
  }

let register ?tf_module ?additional_artifacts ?id
    ?refresh_closed_reports ?report_versioning ?s3_prefix
    ~additional_schema_elements ~compression ~format ~report_name
    ~s3_bucket ~s3_region ~time_unit __id =
  let (r : _ Tf_core.resource) =
    make ?additional_artifacts ?id ?refresh_closed_reports
      ?report_versioning ?s3_prefix ~additional_schema_elements
      ~compression ~format ~report_name ~s3_bucket ~s3_region
      ~time_unit __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
