(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cur_report_definition = {
  id : string prop option; [@option]
  report_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cur_report_definition) -> ()

let yojson_of_aws_cur_report_definition =
  (function
   | { id = v_id; report_name = v_report_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_report_name in
         ("report_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cur_report_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cur_report_definition

[@@@deriving.end]

let aws_cur_report_definition ?id ~report_name () :
    aws_cur_report_definition =
  { id; report_name }

type t = {
  tf_name : string;
  additional_artifacts : string list prop;
  additional_schema_elements : string list prop;
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

let make ?id ~report_name __id =
  let __type = "aws_cur_report_definition" in
  let __attrs =
    ({
       tf_name = __id;
       additional_artifacts =
         Prop.computed __type __id "additional_artifacts";
       additional_schema_elements =
         Prop.computed __type __id "additional_schema_elements";
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
        (aws_cur_report_definition ?id ~report_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~report_name __id =
  let (r : _ Tf_core.resource) = make ?id ~report_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
