(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type key_vault_key = {
  key_name : string prop;
  key_vault_id : string prop;
  key_version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : key_vault_key) -> ()

let yojson_of_key_vault_key =
  (function
   | {
       key_name = v_key_name;
       key_vault_id = v_key_vault_id;
       key_version = v_key_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_name in
         ("key_name", arg) :: bnds
       in
       `Assoc bnds
    : key_vault_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_key_vault_key

[@@@deriving.end]

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

type azurerm_logic_app_integration_account_certificate = {
  id : string prop option; [@option]
  integration_account_name : string prop;
  metadata : string prop option; [@option]
  name : string prop;
  public_certificate : string prop option; [@option]
  resource_group_name : string prop;
  key_vault_key : key_vault_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_logic_app_integration_account_certificate) -> ()

let yojson_of_azurerm_logic_app_integration_account_certificate =
  (function
   | {
       id = v_id;
       integration_account_name = v_integration_account_name;
       metadata = v_metadata;
       name = v_name;
       public_certificate = v_public_certificate;
       resource_group_name = v_resource_group_name;
       key_vault_key = v_key_vault_key;
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
         if Stdlib.( = ) [] v_key_vault_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_key_vault_key) v_key_vault_key
           in
           let bnd = "key_vault_key", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_public_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "metadata", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_account_name
         in
         ("integration_account_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_logic_app_integration_account_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logic_app_integration_account_certificate

[@@@deriving.end]

let key_vault_key ?key_version ~key_name ~key_vault_id () :
    key_vault_key =
  { key_name; key_vault_id; key_version }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_integration_account_certificate ?id ?metadata
    ?public_certificate ?(key_vault_key = []) ?timeouts
    ~integration_account_name ~name ~resource_group_name () :
    azurerm_logic_app_integration_account_certificate =
  {
    id;
    integration_account_name;
    metadata;
    name;
    public_certificate;
    resource_group_name;
    key_vault_key;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  integration_account_name : string prop;
  metadata : string prop;
  name : string prop;
  public_certificate : string prop;
  resource_group_name : string prop;
}

let make ?id ?metadata ?public_certificate ?(key_vault_key = [])
    ?timeouts ~integration_account_name ~name ~resource_group_name
    __id =
  let __type = "azurerm_logic_app_integration_account_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       integration_account_name =
         Prop.computed __type __id "integration_account_name";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       public_certificate =
         Prop.computed __type __id "public_certificate";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logic_app_integration_account_certificate
        (azurerm_logic_app_integration_account_certificate ?id
           ?metadata ?public_certificate ~key_vault_key ?timeouts
           ~integration_account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?public_certificate
    ?(key_vault_key = []) ?timeouts ~integration_account_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?public_certificate ~key_vault_key ?timeouts
      ~integration_account_name ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
