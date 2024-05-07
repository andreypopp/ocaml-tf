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

type azurerm_container_app_environment_storage = {
  access_key : string prop;
  access_mode : string prop;
  account_name : string prop;
  container_app_environment_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  share_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_environment_storage) -> ()

let yojson_of_azurerm_container_app_environment_storage =
  (function
   | {
       access_key = v_access_key;
       access_mode = v_access_mode;
       account_name = v_account_name;
       container_app_environment_id = v_container_app_environment_id;
       id = v_id;
       name = v_name;
       share_name = v_share_name;
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
         let arg = yojson_of_prop yojson_of_string v_share_name in
         ("share_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_container_app_environment_id
         in
         ("container_app_environment_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_name in
         ("account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_mode in
         ("access_mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key in
         ("access_key", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_environment_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_environment_storage

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_app_environment_storage ?id ?timeouts
    ~access_key ~access_mode ~account_name
    ~container_app_environment_id ~name ~share_name () :
    azurerm_container_app_environment_storage =
  {
    access_key;
    access_mode;
    account_name;
    container_app_environment_id;
    id;
    name;
    share_name;
    timeouts;
  }

type t = {
  tf_name : string;
  access_key : string prop;
  access_mode : string prop;
  account_name : string prop;
  container_app_environment_id : string prop;
  id : string prop;
  name : string prop;
  share_name : string prop;
}

let make ?id ?timeouts ~access_key ~access_mode ~account_name
    ~container_app_environment_id ~name ~share_name __id =
  let __type = "azurerm_container_app_environment_storage" in
  let __attrs =
    ({
       tf_name = __id;
       access_key = Prop.computed __type __id "access_key";
       access_mode = Prop.computed __type __id "access_mode";
       account_name = Prop.computed __type __id "account_name";
       container_app_environment_id =
         Prop.computed __type __id "container_app_environment_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       share_name = Prop.computed __type __id "share_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment_storage
        (azurerm_container_app_environment_storage ?id ?timeouts
           ~access_key ~access_mode ~account_name
           ~container_app_environment_id ~name ~share_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_key ~access_mode
    ~account_name ~container_app_environment_id ~name ~share_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_key ~access_mode ~account_name
      ~container_app_environment_id ~name ~share_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
