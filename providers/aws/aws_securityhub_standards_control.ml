(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_standards_control = {
  control_status : string prop;
  disabled_reason : string prop option; [@option]
  id : string prop option; [@option]
  standards_control_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securityhub_standards_control) -> ()

let yojson_of_aws_securityhub_standards_control =
  (function
   | {
       control_status = v_control_status;
       disabled_reason = v_disabled_reason;
       id = v_id;
       standards_control_arn = v_standards_control_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_standards_control_arn
         in
         ("standards_control_arn", arg) :: bnds
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
         match v_disabled_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disabled_reason", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_control_status
         in
         ("control_status", arg) :: bnds
       in
       `Assoc bnds
    : aws_securityhub_standards_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_standards_control

[@@@deriving.end]

let aws_securityhub_standards_control ?disabled_reason ?id
    ~control_status ~standards_control_arn () :
    aws_securityhub_standards_control =
  { control_status; disabled_reason; id; standards_control_arn }

type t = {
  control_id : string prop;
  control_status : string prop;
  control_status_updated_at : string prop;
  description : string prop;
  disabled_reason : string prop;
  id : string prop;
  related_requirements : string list prop;
  remediation_url : string prop;
  severity_rating : string prop;
  standards_control_arn : string prop;
  title : string prop;
}

let make ?disabled_reason ?id ~control_status ~standards_control_arn
    __id =
  let __type = "aws_securityhub_standards_control" in
  let __attrs =
    ({
       control_id = Prop.computed __type __id "control_id";
       control_status = Prop.computed __type __id "control_status";
       control_status_updated_at =
         Prop.computed __type __id "control_status_updated_at";
       description = Prop.computed __type __id "description";
       disabled_reason = Prop.computed __type __id "disabled_reason";
       id = Prop.computed __type __id "id";
       related_requirements =
         Prop.computed __type __id "related_requirements";
       remediation_url = Prop.computed __type __id "remediation_url";
       severity_rating = Prop.computed __type __id "severity_rating";
       standards_control_arn =
         Prop.computed __type __id "standards_control_arn";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_standards_control
        (aws_securityhub_standards_control ?disabled_reason ?id
           ~control_status ~standards_control_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled_reason ?id ~control_status
    ~standards_control_arn __id =
  let (r : _ Tf_core.resource) =
    make ?disabled_reason ?id ~control_status ~standards_control_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
