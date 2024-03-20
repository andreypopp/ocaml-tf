(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_guardduty_finding_ids = { detector_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_finding_ids) -> ()

let yojson_of_aws_guardduty_finding_ids =
  (function
   | { detector_id = v_detector_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_finding_ids -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_finding_ids

[@@@deriving.end]

let aws_guardduty_finding_ids ~detector_id () :
    aws_guardduty_finding_ids =
  { detector_id }

type t = {
  detector_id : string prop;
  finding_ids : string list prop;
  has_findings : bool prop;
  id : string prop;
}

let make ~detector_id __id =
  let __type = "aws_guardduty_finding_ids" in
  let __attrs =
    ({
       detector_id = Prop.computed __type __id "detector_id";
       finding_ids = Prop.computed __type __id "finding_ids";
       has_findings = Prop.computed __type __id "has_findings";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_finding_ids
        (aws_guardduty_finding_ids ~detector_id ());
    attrs = __attrs;
  }

let register ?tf_module ~detector_id __id =
  let (r : _ Tf_core.resource) = make ~detector_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
