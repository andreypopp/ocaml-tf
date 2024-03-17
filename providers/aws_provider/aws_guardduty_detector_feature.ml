(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_detector_feature__additional_configuration = {
  name : string prop;  (** name *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** aws_guardduty_detector_feature__additional_configuration *)

type aws_guardduty_detector_feature = {
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  status : string prop;  (** status *)
  additional_configuration :
    aws_guardduty_detector_feature__additional_configuration list;
}
[@@deriving yojson_of]
(** aws_guardduty_detector_feature *)

type t = {
  detector_id : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let aws_guardduty_detector_feature ?id ~detector_id ~name ~status
    ~additional_configuration __resource_id =
  let __resource_type = "aws_guardduty_detector_feature" in
  let __resource =
    ({ detector_id; id; name; status; additional_configuration }
      : aws_guardduty_detector_feature)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_detector_feature __resource);
  let __resource_attributes =
    ({
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
