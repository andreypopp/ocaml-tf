(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_site_recovery_services_vault_hyperv_site = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_vault_id : string prop;  (** recovery_vault_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_site_recovery_services_vault_hyperv_site *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_services_vault_hyperv_site ?id ?timeouts
    ~name ~recovery_vault_id () :
    azurerm_site_recovery_services_vault_hyperv_site =
  { id; name; recovery_vault_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  recovery_vault_id : string prop;
}

let make ?id ?timeouts ~name ~recovery_vault_id __id =
  let __type = "azurerm_site_recovery_services_vault_hyperv_site" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_vault_id =
         Prop.computed __type __id "recovery_vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_services_vault_hyperv_site
        (azurerm_site_recovery_services_vault_hyperv_site ?id
           ?timeouts ~name ~recovery_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~recovery_vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~recovery_vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
