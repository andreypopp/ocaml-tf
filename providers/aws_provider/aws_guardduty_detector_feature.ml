(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_detector_feature__additional_configuration = {
  name : string;  (** name *)
  status : string;  (** status *)
}
[@@deriving yojson_of]
(** aws_guardduty_detector_feature__additional_configuration *)

type aws_guardduty_detector_feature = {
  detector_id : string;  (** detector_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  status : string;  (** status *)
  additional_configuration :
    aws_guardduty_detector_feature__additional_configuration list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector_feature *)

let aws_guardduty_detector_feature ?id ~detector_id ~name ~status
    ~additional_configuration __resource_id =
  let __resource_type = "aws_guardduty_detector_feature" in
  let __resource =
    { detector_id; id; name; status; additional_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_detector_feature __resource);
  ()
