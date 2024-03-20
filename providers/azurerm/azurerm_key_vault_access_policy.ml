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

type azurerm_key_vault_access_policy = {
  application_id : string prop option; [@option]
      (** application_id *)
  certificate_permissions : string prop list option; [@option]
      (** certificate_permissions *)
  id : string prop option; [@option]  (** id *)
  key_permissions : string prop list option; [@option]
      (** key_permissions *)
  key_vault_id : string prop;  (** key_vault_id *)
  object_id : string prop;  (** object_id *)
  secret_permissions : string prop list option; [@option]
      (** secret_permissions *)
  storage_permissions : string prop list option; [@option]
      (** storage_permissions *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_access_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_access_policy ?application_id
    ?certificate_permissions ?id ?key_permissions ?secret_permissions
    ?storage_permissions ?timeouts ~key_vault_id ~object_id
    ~tenant_id () : azurerm_key_vault_access_policy =
  {
    application_id;
    certificate_permissions;
    id;
    key_permissions;
    key_vault_id;
    object_id;
    secret_permissions;
    storage_permissions;
    tenant_id;
    timeouts;
  }

type t = {
  application_id : string prop;
  certificate_permissions : string list prop;
  id : string prop;
  key_permissions : string list prop;
  key_vault_id : string prop;
  object_id : string prop;
  secret_permissions : string list prop;
  storage_permissions : string list prop;
  tenant_id : string prop;
}

let make ?application_id ?certificate_permissions ?id
    ?key_permissions ?secret_permissions ?storage_permissions
    ?timeouts ~key_vault_id ~object_id ~tenant_id __id =
  let __type = "azurerm_key_vault_access_policy" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       certificate_permissions =
         Prop.computed __type __id "certificate_permissions";
       id = Prop.computed __type __id "id";
       key_permissions = Prop.computed __type __id "key_permissions";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       object_id = Prop.computed __type __id "object_id";
       secret_permissions =
         Prop.computed __type __id "secret_permissions";
       storage_permissions =
         Prop.computed __type __id "storage_permissions";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_access_policy
        (azurerm_key_vault_access_policy ?application_id
           ?certificate_permissions ?id ?key_permissions
           ?secret_permissions ?storage_permissions ?timeouts
           ~key_vault_id ~object_id ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?application_id ?certificate_permissions ?id
    ?key_permissions ?secret_permissions ?storage_permissions
    ?timeouts ~key_vault_id ~object_id ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?application_id ?certificate_permissions ?id
      ?key_permissions ?secret_permissions ?storage_permissions
      ?timeouts ~key_vault_id ~object_id ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
