(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_guardduty_publishing_destination = {
  destination_arn : string prop;
  destination_type : string prop option; [@option]
  detector_id : string prop;
  id : string prop option; [@option]
  kms_key_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_guardduty_publishing_destination) -> ()

let yojson_of_aws_guardduty_publishing_destination =
  (function
   | {
       destination_arn = v_destination_arn;
       destination_type = v_destination_type;
       detector_id = v_detector_id;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_detector_id in
         ("detector_id", arg) :: bnds
       in
       let bnds =
         match v_destination_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_arn
         in
         ("destination_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_guardduty_publishing_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_guardduty_publishing_destination

[@@@deriving.end]

let aws_guardduty_publishing_destination ?destination_type ?id
    ~destination_arn ~detector_id ~kms_key_arn () :
    aws_guardduty_publishing_destination =
  { destination_arn; destination_type; detector_id; id; kms_key_arn }

type t = {
  destination_arn : string prop;
  destination_type : string prop;
  detector_id : string prop;
  id : string prop;
  kms_key_arn : string prop;
}

let make ?destination_type ?id ~destination_arn ~detector_id
    ~kms_key_arn __id =
  let __type = "aws_guardduty_publishing_destination" in
  let __attrs =
    ({
       destination_arn = Prop.computed __type __id "destination_arn";
       destination_type =
         Prop.computed __type __id "destination_type";
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_publishing_destination
        (aws_guardduty_publishing_destination ?destination_type ?id
           ~destination_arn ~detector_id ~kms_key_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?destination_type ?id ~destination_arn
    ~detector_id ~kms_key_arn __id =
  let (r : _ Tf_core.resource) =
    make ?destination_type ?id ~destination_arn ~detector_id
      ~kms_key_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
