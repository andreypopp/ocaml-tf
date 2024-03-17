(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sentinel_log_analytics_workspace_onboarding__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_sentinel_log_analytics_workspace_onboarding__timeouts *)

type azurerm_sentinel_log_analytics_workspace_onboarding = {
  customer_managed_key_enabled : bool prop option; [@option]
      (** customer_managed_key_enabled *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop option; [@option]
      (** resource_group_name *)
  workspace_id : string prop option; [@option]  (** workspace_id *)
  workspace_name : string prop option; [@option]
      (** workspace_name *)
  timeouts :
    azurerm_sentinel_log_analytics_workspace_onboarding__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_log_analytics_workspace_onboarding *)

let azurerm_sentinel_log_analytics_workspace_onboarding
    ?customer_managed_key_enabled ?id ?resource_group_name
    ?workspace_id ?workspace_name ?timeouts __resource_id =
  let __resource_type =
    "azurerm_sentinel_log_analytics_workspace_onboarding"
  in
  let __resource =
    {
      customer_managed_key_enabled;
      id;
      resource_group_name;
      workspace_id;
      workspace_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_log_analytics_workspace_onboarding
       __resource);
  ()
