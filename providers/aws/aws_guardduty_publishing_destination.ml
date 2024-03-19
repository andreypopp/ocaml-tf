(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?destination_type ?id ~destination_arn
    ~detector_id ~kms_key_arn __resource_id =
  let __resource_type = "aws_guardduty_publishing_destination" in
  let __resource =
    aws_guardduty_publishing_destination ?destination_type ?id
      ~destination_arn ~detector_id ~kms_key_arn ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_publishing_destination __resource);
  let __resource_attributes =
    ({
       destination_arn =
         Prop.computed __resource_type __resource_id
           "destination_arn";
       destination_type =
         Prop.computed __resource_type __resource_id
           "destination_type";
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_arn =
         Prop.computed __resource_type __resource_id "kms_key_arn";
     }
      : t)
  in
  __resource_attributes
