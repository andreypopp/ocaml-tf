(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_policy_exemption__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_exemption__timeouts *)

type azurerm_management_group_policy_exemption = {
  description : string option; [@option]  (** description *)
  display_name : string option; [@option]  (** display_name *)
  exemption_category : string;  (** exemption_category *)
  expires_on : string option; [@option]  (** expires_on *)
  id : string option; [@option]  (** id *)
  management_group_id : string;  (** management_group_id *)
  metadata : string option; [@option]  (** metadata *)
  name : string;  (** name *)
  policy_assignment_id : string;  (** policy_assignment_id *)
  policy_definition_reference_ids : string list option; [@option]
      (** policy_definition_reference_ids *)
  timeouts :
    azurerm_management_group_policy_exemption__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_exemption *)

let azurerm_management_group_policy_exemption ?description
    ?display_name ?expires_on ?id ?metadata
    ?policy_definition_reference_ids ?timeouts ~exemption_category
    ~management_group_id ~name ~policy_assignment_id __resource_id =
  let __resource_type =
    "azurerm_management_group_policy_exemption"
  in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_policy_exemption __resource);
  ()
