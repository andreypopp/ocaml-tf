(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lighthouse_definition__authorization = {
  delegated_role_definition_ids : string list option; [@option]
      (** delegated_role_definition_ids *)
  principal_display_name : string option; [@option]
      (** principal_display_name *)
  principal_id : string;  (** principal_id *)
  role_definition_id : string;  (** role_definition_id *)
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition__authorization *)

type azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy__approver = {
  principal_display_name : string option; [@option]
      (** principal_display_name *)
  principal_id : string;  (** principal_id *)
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy__approver *)

type azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy = {
  maximum_activation_duration : string option; [@option]
      (** maximum_activation_duration *)
  multi_factor_auth_provider : string option; [@option]
      (** multi_factor_auth_provider *)
  approver :
    azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy__approver
    list;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy *)

type azurerm_lighthouse_definition__eligible_authorization = {
  principal_display_name : string option; [@option]
      (** principal_display_name *)
  principal_id : string;  (** principal_id *)
  role_definition_id : string;  (** role_definition_id *)
  just_in_time_access_policy :
    azurerm_lighthouse_definition__eligible_authorization__just_in_time_access_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition__eligible_authorization *)

type azurerm_lighthouse_definition__plan = {
  name : string;  (** name *)
  product : string;  (** product *)
  publisher : string;  (** publisher *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition__plan *)

type azurerm_lighthouse_definition__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition__timeouts *)

type azurerm_lighthouse_definition = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  lighthouse_definition_id : string option; [@option]
      (** lighthouse_definition_id *)
  managing_tenant_id : string;  (** managing_tenant_id *)
  name : string;  (** name *)
  scope : string;  (** scope *)
  authorization : azurerm_lighthouse_definition__authorization list;
  eligible_authorization :
    azurerm_lighthouse_definition__eligible_authorization list;
  plan : azurerm_lighthouse_definition__plan list;
  timeouts : azurerm_lighthouse_definition__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_definition *)

let azurerm_lighthouse_definition ?description ?id
    ?lighthouse_definition_id ?timeouts ~managing_tenant_id ~name
    ~scope ~authorization ~eligible_authorization ~plan __resource_id
    =
  let __resource_type = "azurerm_lighthouse_definition" in
  let __resource =
    {
      description;
      id;
      lighthouse_definition_id;
      managing_tenant_id;
      name;
      scope;
      authorization;
      eligible_authorization;
      plan;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lighthouse_definition __resource);
  ()
