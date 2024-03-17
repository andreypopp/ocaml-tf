(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_guardduty_organization_configuration_feature__additional_configuration = {
  auto_enable : string;  (** auto_enable *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration_feature__additional_configuration *)

type aws_guardduty_organization_configuration_feature = {
  auto_enable : string;  (** auto_enable *)
  detector_id : string;  (** detector_id *)
  name : string;  (** name *)
  additional_configuration :
    aws_guardduty_organization_configuration_feature__additional_configuration
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration_feature *)

let aws_guardduty_organization_configuration_feature ~auto_enable
    ~detector_id ~name ~additional_configuration __resource_id =
  let __resource_type =
    "aws_guardduty_organization_configuration_feature"
  in
  let __resource =
    { auto_enable; detector_id; name; additional_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_organization_configuration_feature
       __resource);
  ()
