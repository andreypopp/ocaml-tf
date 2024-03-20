(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_fabric = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  recovery_vault_name : string prop;  (** recovery_vault_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_fabric *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_fabric ?id ?timeouts ~location ~name
    ~recovery_vault_name ~resource_group_name () :
    azurerm_site_recovery_fabric =
  {
    id;
    location;
    name;
    recovery_vault_name;
    resource_group_name;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  recovery_vault_name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~location ~name ~recovery_vault_name
    ~resource_group_name __id =
  let __type = "azurerm_site_recovery_fabric" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       recovery_vault_name =
         Prop.computed __type __id "recovery_vault_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_fabric
        (azurerm_site_recovery_fabric ?id ?timeouts ~location ~name
           ~recovery_vault_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~location ~name
    ~recovery_vault_name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~location ~name ~recovery_vault_name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
