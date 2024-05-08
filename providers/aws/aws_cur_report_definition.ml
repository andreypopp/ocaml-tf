(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cur_report_definition = {
  additional_artifacts : string prop list option; [@option]
  additional_schema_elements : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  compression : string prop;
  format : string prop;
  id : string prop option; [@option]
  refresh_closed_reports : bool prop option; [@option]
  report_name : string prop;
  report_versioning : string prop option; [@option]
  s3_bucket : string prop;
  s3_prefix : string prop option; [@option]
  s3_region : string prop;
  time_unit : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cur_report_definition) -> ()

let yojson_of_aws_cur_report_definition =
  (function
   | {
       additional_artifacts = v_additional_artifacts;
       additional_schema_elements = v_additional_schema_elements;
       compression = v_compression;
       format = v_format;
       id = v_id;
       refresh_closed_reports = v_refresh_closed_reports;
       report_name = v_report_name;
       report_versioning = v_report_versioning;
       s3_bucket = v_s3_bucket;
       s3_prefix = v_s3_prefix;
       s3_region = v_s3_region;
       time_unit = v_time_unit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_unit in
         ("time_unit", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_region in
         ("s3_region", arg) :: bnds
       in
       let bnds =
         match v_s3_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_bucket in
         ("s3_bucket", arg) :: bnds
       in
       let bnds =
         match v_report_versioning with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "report_versioning", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_report_name in
         ("report_name", arg) :: bnds
       in
       let bnds =
         match v_refresh_closed_reports with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "refresh_closed_reports", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_compression in
         ("compression", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_additional_schema_elements then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_additional_schema_elements
           in
           let bnd = "additional_schema_elements", arg in
           bnd :: bnds
       in
       let bnds =
         match v_additional_artifacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "additional_artifacts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cur_report_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cur_report_definition

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
