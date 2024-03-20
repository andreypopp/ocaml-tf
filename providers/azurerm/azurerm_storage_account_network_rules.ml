(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type private_link_access = {
  endpoint_resource_id : string prop;  (** endpoint_resource_id *)
  endpoint_tenant_id : string prop option; [@option]
      (** endpoint_tenant_id *)
}
[@@deriving yojson_of]
(** private_link_access *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_account_network_rules = {
  bypass : string prop list option; [@option]  (** bypass *)
  default_action : string prop;  (** default_action *)
  id : string prop option; [@option]  (** id *)
  ip_rules : string prop list option; [@option]  (** ip_rules *)
  storage_account_id : string prop;  (** storage_account_id *)
  virtual_network_subnet_ids : string prop list option; [@option]
      (** virtual_network_subnet_ids *)
  private_link_access : private_link_access list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account_network_rules *)

let private_link_access ?endpoint_tenant_id ~endpoint_resource_id ()
    : private_link_access =
  { endpoint_resource_id; endpoint_tenant_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account_network_rules ?bypass ?id ?ip_rules
    ?virtual_network_subnet_ids ?timeouts ~default_action
    ~storage_account_id ~private_link_access () :
    azurerm_storage_account_network_rules =
  {
    bypass;
    default_action;
    id;
    ip_rules;
    storage_account_id;
    virtual_network_subnet_ids;
    private_link_access;
    timeouts;
  }

type t = {
  bypass : string list prop;
  default_action : string prop;
  id : string prop;
  ip_rules : string list prop;
  storage_account_id : string prop;
  virtual_network_subnet_ids : string list prop;
}

let make ?bypass ?id ?ip_rules ?virtual_network_subnet_ids ?timeouts
    ~default_action ~storage_account_id ~private_link_access __id =
  let __type = "azurerm_storage_account_network_rules" in
  let __attrs =
    ({
       bypass = Prop.computed __type __id "bypass";
       default_action = Prop.computed __type __id "default_action";
       id = Prop.computed __type __id "id";
       ip_rules = Prop.computed __type __id "ip_rules";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       virtual_network_subnet_ids =
         Prop.computed __type __id "virtual_network_subnet_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_network_rules
        (azurerm_storage_account_network_rules ?bypass ?id ?ip_rules
           ?virtual_network_subnet_ids ?timeouts ~default_action
           ~storage_account_id ~private_link_access ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass ?id ?ip_rules
    ?virtual_network_subnet_ids ?timeouts ~default_action
    ~storage_account_id ~private_link_access __id =
  let (r : _ Tf_core.resource) =
    make ?bypass ?id ?ip_rules ?virtual_network_subnet_ids ?timeouts
      ~default_action ~storage_account_id ~private_link_access __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
