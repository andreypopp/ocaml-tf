(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_assessment__status = {
  cause : string prop option; [@option]  (** cause *)
  code : string prop;  (** code *)
  description : string prop option; [@option]  (** description *)
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment__status *)

type azurerm_security_center_assessment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment__timeouts *)

type azurerm_security_center_assessment = {
  additional_data : (string * string prop) list option; [@option]
      (** additional_data *)
  assessment_policy_id : string prop;  (** assessment_policy_id *)
  id : string prop option; [@option]  (** id *)
  target_resource_id : string prop;  (** target_resource_id *)
  status : azurerm_security_center_assessment__status list;
  timeouts : azurerm_security_center_assessment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment *)

type t = {
  additional_data : (string * string) list prop;
  assessment_policy_id : string prop;
  id : string prop;
  target_resource_id : string prop;
}

let azurerm_security_center_assessment ?additional_data ?id ?timeouts
    ~assessment_policy_id ~target_resource_id ~status __resource_id =
  let __resource_type = "azurerm_security_center_assessment" in
  let __resource =
    ({
       additional_data;
       assessment_policy_id;
       id;
       target_resource_id;
       status;
       timeouts;
     }
      : azurerm_security_center_assessment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_assessment __resource);
  let __resource_attributes =
    ({
       additional_data =
         Prop.computed __resource_type __resource_id
           "additional_data";
       assessment_policy_id =
         Prop.computed __resource_type __resource_id
           "assessment_policy_id";
       id = Prop.computed __resource_type __resource_id "id";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
     }
      : t)
  in
  __resource_attributes
