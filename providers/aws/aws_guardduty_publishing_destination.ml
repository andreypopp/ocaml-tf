(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_guardduty_publishing_destination = {
  destination_arn : string prop;  (** destination_arn *)
  destination_type : string prop option; [@option]
      (** destination_type *)
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  kms_key_arn : string prop;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_guardduty_publishing_destination *)

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
