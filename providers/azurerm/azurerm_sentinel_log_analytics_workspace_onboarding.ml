(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_log_analytics_workspace_onboarding = {
  customer_managed_key_enabled : bool prop option; [@option]
      (** customer_managed_key_enabled *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop option; [@option]
      (** resource_group_name *)
  workspace_id : string prop option; [@option]  (** workspace_id *)
  workspace_name : string prop option; [@option]
      (** workspace_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_log_analytics_workspace_onboarding *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_sentinel_log_analytics_workspace_onboarding
    ?customer_managed_key_enabled ?id ?resource_group_name
    ?workspace_id ?workspace_name ?timeouts () :
    azurerm_sentinel_log_analytics_workspace_onboarding =
  {
    customer_managed_key_enabled;
    id;
    resource_group_name;
    workspace_id;
    workspace_name;
    timeouts;
  }

type t = {
  customer_managed_key_enabled : bool prop;
  id : string prop;
  resource_group_name : string prop;
  workspace_id : string prop;
  workspace_name : string prop;
}

let make ?customer_managed_key_enabled ?id ?resource_group_name
    ?workspace_id ?workspace_name ?timeouts __id =
  let __type =
    "azurerm_sentinel_log_analytics_workspace_onboarding"
  in
  let __attrs =
    ({
       customer_managed_key_enabled =
         Prop.computed __type __id "customer_managed_key_enabled";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       workspace_id = Prop.computed __type __id "workspace_id";
       workspace_name = Prop.computed __type __id "workspace_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_log_analytics_workspace_onboarding
        (azurerm_sentinel_log_analytics_workspace_onboarding
           ?customer_managed_key_enabled ?id ?resource_group_name
           ?workspace_id ?workspace_name ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_enabled ?id
    ?resource_group_name ?workspace_id ?workspace_name ?timeouts __id
    =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_enabled ?id ?resource_group_name
      ?workspace_id ?workspace_name ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
