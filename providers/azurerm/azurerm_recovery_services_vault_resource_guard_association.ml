(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_recovery_services_vault_resource_guard_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resource_guard_id : string prop;  (** resource_guard_id *)
  vault_id : string prop;  (** vault_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault_resource_guard_association *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_recovery_services_vault_resource_guard_association ?id
    ?name ?timeouts ~resource_guard_id ~vault_id () :
    azurerm_recovery_services_vault_resource_guard_association =
  { id; name; resource_guard_id; vault_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  resource_guard_id : string prop;
  vault_id : string prop;
}

let make ?id ?name ?timeouts ~resource_guard_id ~vault_id __id =
  let __type =
    "azurerm_recovery_services_vault_resource_guard_association"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_guard_id =
         Prop.computed __type __id "resource_guard_id";
       vault_id = Prop.computed __type __id "vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_recovery_services_vault_resource_guard_association
        (azurerm_recovery_services_vault_resource_guard_association
           ?id ?name ?timeouts ~resource_guard_id ~vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~resource_guard_id
    ~vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~resource_guard_id ~vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
