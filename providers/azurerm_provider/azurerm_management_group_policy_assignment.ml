(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_policy_assignment__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__identity *)

type azurerm_management_group_policy_assignment__non_compliance_message = {
  content : string;  (** content *)
  policy_definition_reference_id : string option; [@option]
      (** policy_definition_reference_id *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__non_compliance_message *)

type azurerm_management_group_policy_assignment__overrides__selectors = {
  in_ : string list option; [@option] [@key "in"]  (** in *)
  kind : string;  (** kind *)
  not_in : string list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__overrides__selectors *)

type azurerm_management_group_policy_assignment__overrides = {
  value : string;  (** value *)
  selectors :
    azurerm_management_group_policy_assignment__overrides__selectors
    list;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__overrides *)

type azurerm_management_group_policy_assignment__resource_selectors__selectors = {
  in_ : string list option; [@option] [@key "in"]  (** in *)
  kind : string;  (** kind *)
  not_in : string list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__resource_selectors__selectors *)

type azurerm_management_group_policy_assignment__resource_selectors = {
  name : string option; [@option]  (** name *)
  selectors :
    azurerm_management_group_policy_assignment__resource_selectors__selectors
    list;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__resource_selectors *)

type azurerm_management_group_policy_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__timeouts *)

type azurerm_management_group_policy_assignment = {
  description : string option; [@option]  (** description *)
  display_name : string option; [@option]  (** display_name *)
  enforce : bool option; [@option]  (** enforce *)
  id : string option; [@option]  (** id *)
  location : string option; [@option]  (** location *)
  management_group_id : string;  (** management_group_id *)
  metadata : string option; [@option]  (** metadata *)
  name : string;  (** name *)
  not_scopes : string list option; [@option]  (** not_scopes *)
  parameters : string option; [@option]  (** parameters *)
  policy_definition_id : string;  (** policy_definition_id *)
  identity :
    azurerm_management_group_policy_assignment__identity list;
  non_compliance_message :
    azurerm_management_group_policy_assignment__non_compliance_message
    list;
  overrides :
    azurerm_management_group_policy_assignment__overrides list;
  resource_selectors :
    azurerm_management_group_policy_assignment__resource_selectors
    list;
  timeouts :
    azurerm_management_group_policy_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment *)

let azurerm_management_group_policy_assignment ?description
    ?display_name ?enforce ?id ?location ?metadata ?not_scopes
    ?parameters ?timeouts ~management_group_id ~name
    ~policy_definition_id ~identity ~non_compliance_message
    ~overrides ~resource_selectors __resource_id =
  let __resource_type =
    "azurerm_management_group_policy_assignment"
  in
  let __resource =
    {
      description;
      display_name;
      enforce;
      id;
      location;
      management_group_id;
      metadata;
      name;
      not_scopes;
      parameters;
      policy_definition_id;
      identity;
      non_compliance_message;
      overrides;
      resource_selectors;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_management_group_policy_assignment __resource);
  ()
