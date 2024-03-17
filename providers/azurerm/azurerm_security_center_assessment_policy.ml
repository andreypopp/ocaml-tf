(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_security_center_assessment_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment_policy__timeouts *)

type azurerm_security_center_assessment_policy = {
  categories : string prop list option; [@option]  (** categories *)
  description : string prop;  (** description *)
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  implementation_effort : string prop option; [@option]
      (** implementation_effort *)
  remediation_description : string prop option; [@option]
      (** remediation_description *)
  severity : string prop option; [@option]  (** severity *)
  threats : string prop list option; [@option]  (** threats *)
  user_impact : string prop option; [@option]  (** user_impact *)
  timeouts :
    azurerm_security_center_assessment_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_security_center_assessment_policy *)

type t = {
  categories : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  implementation_effort : string prop;
  name : string prop;
  remediation_description : string prop;
  severity : string prop;
  threats : string list prop;
  user_impact : string prop;
}

let azurerm_security_center_assessment_policy ?categories ?id
    ?implementation_effort ?remediation_description ?severity
    ?threats ?user_impact ?timeouts ~description ~display_name
    __resource_id =
  let __resource_type =
    "azurerm_security_center_assessment_policy"
  in
  let __resource =
    ({
       categories;
       description;
       display_name;
       id;
       implementation_effort;
       remediation_description;
       severity;
       threats;
       user_impact;
       timeouts;
     }
      : azurerm_security_center_assessment_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_security_center_assessment_policy __resource);
  let __resource_attributes =
    ({
       categories =
         Prop.computed __resource_type __resource_id "categories";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       implementation_effort =
         Prop.computed __resource_type __resource_id
           "implementation_effort";
       name = Prop.computed __resource_type __resource_id "name";
       remediation_description =
         Prop.computed __resource_type __resource_id
           "remediation_description";
       severity =
         Prop.computed __resource_type __resource_id "severity";
       threats =
         Prop.computed __resource_type __resource_id "threats";
       user_impact =
         Prop.computed __resource_type __resource_id "user_impact";
     }
      : t)
  in
  __resource_attributes
