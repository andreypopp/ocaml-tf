(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_policy_exemption__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_exemption__timeouts *)

type azurerm_management_group_policy_exemption = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  exemption_category : string prop;  (** exemption_category *)
  expires_on : string prop option; [@option]  (** expires_on *)
  id : string prop option; [@option]  (** id *)
  management_group_id : string prop;  (** management_group_id *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  policy_assignment_id : string prop;  (** policy_assignment_id *)
  policy_definition_reference_ids : string prop list option;
      [@option]
      (** policy_definition_reference_ids *)
  timeouts :
    azurerm_management_group_policy_exemption__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_exemption *)

type t = {
  description : string prop;
  display_name : string prop;
  exemption_category : string prop;
  expires_on : string prop;
  id : string prop;
  management_group_id : string prop;
  metadata : string prop;
  name : string prop;
  policy_assignment_id : string prop;
  policy_definition_reference_ids : string list prop;
}

let azurerm_management_group_policy_exemption ?description
    ?display_name ?expires_on ?id ?metadata
    ?policy_definition_reference_ids ?timeouts ~exemption_category
    ~management_group_id ~name ~policy_assignment_id __resource_id =
  let __resource_type =
    "azurerm_management_group_policy_exemption"
  in
  let __resource =
    ({
       description;
       display_name;
       exemption_category;
       expires_on;
       id;
       management_group_id;
       metadata;
       name;
       policy_assignment_id;
       policy_definition_reference_ids;
       timeouts;
     }
      : azurerm_management_group_policy_exemption)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_policy_exemption __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       exemption_category =
         Prop.computed __resource_type __resource_id
           "exemption_category";
       expires_on =
         Prop.computed __resource_type __resource_id "expires_on";
       id = Prop.computed __resource_type __resource_id "id";
       management_group_id =
         Prop.computed __resource_type __resource_id
           "management_group_id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       policy_assignment_id =
         Prop.computed __resource_type __resource_id
           "policy_assignment_id";
       policy_definition_reference_ids =
         Prop.computed __resource_type __resource_id
           "policy_definition_reference_ids";
     }
      : t)
  in
  __resource_attributes
