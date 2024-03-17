(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securityhub_account = {
  auto_enable_controls : bool prop option; [@option]
      (** auto_enable_controls *)
  control_finding_generator : string prop option; [@option]
      (** control_finding_generator *)
  enable_default_standards : bool prop option; [@option]
      (** enable_default_standards *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_securityhub_account *)

type t = {
  arn : string prop;
  auto_enable_controls : bool prop;
  control_finding_generator : string prop;
  enable_default_standards : bool prop;
  id : string prop;
}

let aws_securityhub_account ?auto_enable_controls
    ?control_finding_generator ?enable_default_standards ?id
    __resource_id =
  let __resource_type = "aws_securityhub_account" in
  let __resource =
    ({
       auto_enable_controls;
       control_finding_generator;
       enable_default_standards;
       id;
     }
      : aws_securityhub_account)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securityhub_account __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_enable_controls =
         Prop.computed __resource_type __resource_id
           "auto_enable_controls";
       control_finding_generator =
         Prop.computed __resource_type __resource_id
           "control_finding_generator";
       enable_default_standards =
         Prop.computed __resource_type __resource_id
           "enable_default_standards";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
