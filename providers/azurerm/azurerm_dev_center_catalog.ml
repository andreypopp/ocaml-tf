(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_adogit = {
  branch : string prop;
  key_vault_key_url : string prop;
  path : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : catalog_adogit) -> ()

let yojson_of_catalog_adogit =
  (function
   | {
       branch = v_branch;
       key_vault_key_url = v_key_vault_key_url;
       path = v_path;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_url
         in
         ("key_vault_key_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : catalog_adogit -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_catalog_adogit

[@@@deriving.end]

type catalog_github = {
  branch : string prop;
  key_vault_key_url : string prop;
  path : string prop;
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : catalog_github) -> ()

let yojson_of_catalog_github =
  (function
   | {
       branch = v_branch;
       key_vault_key_url = v_key_vault_key_url;
       path = v_path;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_url
         in
         ("key_vault_key_url", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch in
         ("branch", arg) :: bnds
       in
       `Assoc bnds
    : catalog_github -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_catalog_github

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

type azurerm_dev_center_catalog = {
  dev_center_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  catalog_adogit : catalog_adogit list;
  catalog_github : catalog_github list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_center_catalog) -> ()

let yojson_of_azurerm_dev_center_catalog =
  (function
   | {
       dev_center_id = v_dev_center_id;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       catalog_adogit = v_catalog_adogit;
       catalog_github = v_catalog_github;
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
         let arg =
           yojson_of_list yojson_of_catalog_github v_catalog_github
         in
         ("catalog_github", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_catalog_adogit v_catalog_adogit
         in
         ("catalog_adogit", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_dev_center_id in
         ("dev_center_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_dev_center_catalog -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_center_catalog

[@@@deriving.end]

let catalog_adogit ~branch ~key_vault_key_url ~path ~uri () :
    catalog_adogit =
  { branch; key_vault_key_url; path; uri }

let catalog_github ~branch ~key_vault_key_url ~path ~uri () :
    catalog_github =
  { branch; key_vault_key_url; path; uri }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_center_catalog ?id ?timeouts ~dev_center_id ~name
    ~resource_group_name ~catalog_adogit ~catalog_github () :
    azurerm_dev_center_catalog =
  {
    dev_center_id;
    id;
    name;
    resource_group_name;
    catalog_adogit;
    catalog_github;
    timeouts;
  }

type t = {
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~dev_center_id ~name ~resource_group_name
    ~catalog_adogit ~catalog_github __id =
  let __type = "azurerm_dev_center_catalog" in
  let __attrs =
    ({
       dev_center_id = Prop.computed __type __id "dev_center_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_center_catalog
        (azurerm_dev_center_catalog ?id ?timeouts ~dev_center_id
           ~name ~resource_group_name ~catalog_adogit ~catalog_github
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dev_center_id ~name
    ~resource_group_name ~catalog_adogit ~catalog_github __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dev_center_id ~name ~resource_group_name
      ~catalog_adogit ~catalog_github __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
