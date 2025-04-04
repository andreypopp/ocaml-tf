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

type azurerm_media_asset = {
  alternate_id : string prop option; [@option]
  container : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_asset) -> ()

let yojson_of_azurerm_media_asset =
  (function
   | {
       alternate_id = v_alternate_id;
       container = v_container;
       description = v_description;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       storage_account_name = v_storage_account_name;
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
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "container", arg in
             bnd :: bnds
       in
       let bnds =
         match v_alternate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alternate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_asset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_asset

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_media_asset ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name () : azurerm_media_asset =
  {
    alternate_id;
    container;
    description;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    storage_account_name;
    timeouts;
  }

type t = {
  tf_name : string;
  alternate_id : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_name : string prop;
}

let make ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_media_asset" in
  let __attrs =
    ({
       tf_name = __id;
       alternate_id = Prop.computed __type __id "alternate_id";
       container = Prop.computed __type __id "container";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_asset
        (azurerm_media_asset ?alternate_id ?container ?description
           ?id ?storage_account_name ?timeouts
           ~media_services_account_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?alternate_id ?container ?description ?id
      ?storage_account_name ?timeouts ~media_services_account_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
