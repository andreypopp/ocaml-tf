(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_data_connector_azure_security_center = {
  id : string prop option; [@option]  (** id *)
  log_analytics_workspace_id : string prop;
      (** log_analytics_workspace_id *)
  name : string prop;  (** name *)
  subscription_id : string prop option; [@option]
      (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_data_connector_azure_security_center *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_data_connector_azure_security_center ?id
    ?subscription_id ?timeouts ~log_analytics_workspace_id ~name () :
    azurerm_sentinel_data_connector_azure_security_center =
  { id; log_analytics_workspace_id; name; subscription_id; timeouts }

type t = {
  id : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  subscription_id : string prop;
}

let register ?tf_module ?id ?subscription_id ?timeouts
    ~log_analytics_workspace_id ~name __resource_id =
  let __resource_type =
    "azurerm_sentinel_data_connector_azure_security_center"
  in
  let __resource =
    azurerm_sentinel_data_connector_azure_security_center ?id
      ?subscription_id ?timeouts ~log_analytics_workspace_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sentinel_data_connector_azure_security_center
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       log_analytics_workspace_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_workspace_id";
       name = Prop.computed __resource_type __resource_id "name";
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
     }
      : t)
  in
  __resource_attributes
