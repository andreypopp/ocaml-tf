(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_key_vault_access_policy = {
  application_id : string prop option; [@option]
  certificate_permissions : string prop list option; [@option]
  id : string prop option; [@option]
  key_permissions : string prop list option; [@option]
  key_vault_id : string prop;
  object_id : string prop;
  secret_permissions : string prop list option; [@option]
  storage_permissions : string prop list option; [@option]
  tenant_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_access_policy) -> ()

let yojson_of_azurerm_key_vault_access_policy =
  (function
   | {
       application_id = v_application_id;
       certificate_permissions = v_certificate_permissions;
       id = v_id;
       key_permissions = v_key_permissions;
       key_vault_id = v_key_vault_id;
       object_id = v_object_id;
       secret_permissions = v_secret_permissions;
       storage_permissions = v_storage_permissions;
       tenant_id = v_tenant_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         match v_storage_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "storage_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secret_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secret_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_object_id in
         ("object_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         match v_key_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "key_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate_permissions", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "application_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_access_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_access_policy

[@@@deriving.end]

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
