(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_log_analytics_cluster_customer_managed_key = {
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  log_analytics_cluster_id : string prop;
      (** log_analytics_cluster_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_log_analytics_cluster_customer_managed_key *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_log_analytics_cluster_customer_managed_key ?id ?timeouts
    ~key_vault_key_id ~log_analytics_cluster_id () :
    azurerm_log_analytics_cluster_customer_managed_key =
  { id; key_vault_key_id; log_analytics_cluster_id; timeouts }

type t = {
  id : string prop;
  key_vault_key_id : string prop;
  log_analytics_cluster_id : string prop;
}

let register ?tf_module ?id ?timeouts ~key_vault_key_id
    ~log_analytics_cluster_id __resource_id =
  let __resource_type =
    "azurerm_log_analytics_cluster_customer_managed_key"
  in
  let __resource =
    azurerm_log_analytics_cluster_customer_managed_key ?id ?timeouts
      ~key_vault_key_id ~log_analytics_cluster_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_log_analytics_cluster_customer_managed_key
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       log_analytics_cluster_id =
         Prop.computed __resource_type __resource_id
           "log_analytics_cluster_id";
     }
      : t)
  in
  __resource_attributes
