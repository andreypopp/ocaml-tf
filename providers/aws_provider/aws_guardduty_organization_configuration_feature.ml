(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_organization_configuration_feature__additional_configuration = {
  auto_enable : string prop;  (** auto_enable *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration_feature__additional_configuration *)

type aws_guardduty_organization_configuration_feature = {
  auto_enable : string prop;  (** auto_enable *)
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  additional_configuration :
    aws_guardduty_organization_configuration_feature__additional_configuration
    list;
}
[@@deriving yojson_of]
(** aws_guardduty_organization_configuration_feature *)

type t = {
  auto_enable : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
}

let aws_guardduty_organization_configuration_feature ?id ~auto_enable
    ~detector_id ~name ~additional_configuration __resource_id =
  let __resource_type =
    "aws_guardduty_organization_configuration_feature"
  in
  let __resource =
    ({ auto_enable; detector_id; id; name; additional_configuration }
      : aws_guardduty_organization_configuration_feature)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_organization_configuration_feature
       __resource);
  let __resource_attributes =
    ({
       auto_enable =
         Prop.computed __resource_type __resource_id "auto_enable";
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
