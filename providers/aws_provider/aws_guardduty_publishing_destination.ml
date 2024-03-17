(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_publishing_destination = {
  destination_arn : string;  (** destination_arn *)
  destination_type : string option; [@option]
      (** destination_type *)
  detector_id : string;  (** detector_id *)
  id : string option; [@option]  (** id *)
  kms_key_arn : string;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_guardduty_publishing_destination *)

let aws_guardduty_publishing_destination ?destination_type ?id
    ~destination_arn ~detector_id ~kms_key_arn __resource_id =
  let __resource_type = "aws_guardduty_publishing_destination" in
  let __resource =
    {
      destination_arn;
      destination_type;
      detector_id;
      id;
      kms_key_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_publishing_destination __resource);
  ()
