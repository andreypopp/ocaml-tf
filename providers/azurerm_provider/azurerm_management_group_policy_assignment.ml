(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_management_group_policy_assignment__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__identity *)

type azurerm_management_group_policy_assignment__non_compliance_message = {
  content : string prop;  (** content *)
  policy_definition_reference_id : string prop option; [@option]
      (** policy_definition_reference_id *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__non_compliance_message *)

type azurerm_management_group_policy_assignment__overrides__selectors = {
  in_ : string prop list option; [@option] [@key "in"]  (** in *)
  kind : string prop;  (** kind *)
  not_in : string prop list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__overrides__selectors *)

type azurerm_management_group_policy_assignment__overrides = {
  value : string prop;  (** value *)
  selectors :
    azurerm_management_group_policy_assignment__overrides__selectors
    list;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__overrides *)

type azurerm_management_group_policy_assignment__resource_selectors__selectors = {
  in_ : string prop list option; [@option] [@key "in"]  (** in *)
  kind : string prop;  (** kind *)
  not_in : string prop list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__resource_selectors__selectors *)

type azurerm_management_group_policy_assignment__resource_selectors = {
  name : string prop option; [@option]  (** name *)
  selectors :
    azurerm_management_group_policy_assignment__resource_selectors__selectors
    list;
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__resource_selectors *)

type azurerm_management_group_policy_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_management_group_policy_assignment__timeouts *)

type azurerm_management_group_policy_assignment = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enforce : bool prop option; [@option]  (** enforce *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  management_group_id : string prop;  (** management_group_id *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  not_scopes : string prop list option; [@option]  (** not_scopes *)
  parameters : string prop option; [@option]  (** parameters *)
  policy_definition_id : string prop;  (** policy_definition_id *)
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
