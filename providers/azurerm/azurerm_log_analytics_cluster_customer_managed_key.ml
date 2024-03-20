(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~key_vault_key_id ~log_analytics_cluster_id
    __id =
  let __type =
    "azurerm_log_analytics_cluster_customer_managed_key"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       log_analytics_cluster_id =
         Prop.computed __type __id "log_analytics_cluster_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_log_analytics_cluster_customer_managed_key
        (azurerm_log_analytics_cluster_customer_managed_key ?id
           ?timeouts ~key_vault_key_id ~log_analytics_cluster_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_key_id
    ~log_analytics_cluster_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_key_id ~log_analytics_cluster_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
