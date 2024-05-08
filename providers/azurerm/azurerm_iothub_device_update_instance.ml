(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type diagnostic_storage_account = {
  connection_string : string prop;
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : diagnostic_storage_account) -> ()

let yojson_of_diagnostic_storage_account =
  (function
   | { connection_string = v_connection_string; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_string
         in
         ("connection_string", arg) :: bnds
       in
       `Assoc bnds
    : diagnostic_storage_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_diagnostic_storage_account

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

type azurerm_iothub_device_update_instance = {
  device_update_account_id : string prop;
  diagnostic_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  iothub_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  diagnostic_storage_account : diagnostic_storage_account list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_iothub_device_update_instance) -> ()

let yojson_of_azurerm_iothub_device_update_instance =
  (function
   | {
       device_update_account_id = v_device_update_account_id;
       diagnostic_enabled = v_diagnostic_enabled;
       id = v_id;
       iothub_id = v_iothub_id;
       name = v_name;
       tags = v_tags;
       diagnostic_storage_account = v_diagnostic_storage_account;
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
         if [] = v_diagnostic_storage_account then bnds
         else
           let arg =
             (yojson_of_list yojson_of_diagnostic_storage_account)
               v_diagnostic_storage_account
           in
           let bnd = "diagnostic_storage_account", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iothub_id in
         ("iothub_id", arg) :: bnds
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
         match v_diagnostic_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "diagnostic_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_device_update_account_id
         in
         ("device_update_account_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_iothub_device_update_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_iothub_device_update_instance

[@@@deriving.end]

let diagnostic_storage_account ~connection_string ~id () :
    diagnostic_storage_account =
  { connection_string; id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_device_update_instance ?diagnostic_enabled ?id
    ?tags ?(diagnostic_storage_account = []) ?timeouts
    ~device_update_account_id ~iothub_id ~name () :
    azurerm_iothub_device_update_instance =
  {
    device_update_account_id;
    diagnostic_enabled;
    id;
    iothub_id;
    name;
    tags;
    diagnostic_storage_account;
    timeouts;
  }

type t = {
  tf_name : string;
  device_update_account_id : string prop;
  diagnostic_enabled : bool prop;
  id : string prop;
  iothub_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?diagnostic_enabled ?id ?tags
    ?(diagnostic_storage_account = []) ?timeouts
    ~device_update_account_id ~iothub_id ~name __id =
  let __type = "azurerm_iothub_device_update_instance" in
  let __attrs =
    ({
       tf_name = __id;
       device_update_account_id =
         Prop.computed __type __id "device_update_account_id";
       diagnostic_enabled =
         Prop.computed __type __id "diagnostic_enabled";
       id = Prop.computed __type __id "id";
       iothub_id = Prop.computed __type __id "iothub_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_device_update_instance
        (azurerm_iothub_device_update_instance ?diagnostic_enabled
           ?id ?tags ~diagnostic_storage_account ?timeouts
           ~device_update_account_id ~iothub_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?diagnostic_enabled ?id ?tags
    ?(diagnostic_storage_account = []) ?timeouts
    ~device_update_account_id ~iothub_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?diagnostic_enabled ?id ?tags ~diagnostic_storage_account
      ?timeouts ~device_update_account_id ~iothub_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
