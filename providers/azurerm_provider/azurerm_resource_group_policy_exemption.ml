(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_group_policy_exemption__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_exemption__timeouts *)

type azurerm_resource_group_policy_exemption = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  exemption_category : string prop;  (** exemption_category *)
  expires_on : string prop option; [@option]  (** expires_on *)
  id : string prop option; [@option]  (** id *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  policy_assignment_id : string prop;  (** policy_assignment_id *)
  policy_definition_reference_ids : string prop list option;
      [@option]
      (** policy_definition_reference_ids *)
  resource_group_id : string prop;  (** resource_group_id *)
  timeouts : azurerm_resource_group_policy_exemption__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_group_policy_exemption *)

let azurerm_resource_group_policy_exemption ?description
    ?display_name ?expires_on ?id ?metadata
    ?policy_definition_reference_ids ?timeouts ~exemption_category
    ~name ~policy_assignment_id ~resource_group_id __resource_id =
  let __resource_type = "azurerm_resource_group_policy_exemption" in
  let __resource =
    {
      description;
      display_name;
      exemption_category;
      expires_on;
      id;
      metadata;
      name;
      policy_assignment_id;
      policy_definition_reference_ids;
      resource_group_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_group_policy_exemption __resource);
  ()
