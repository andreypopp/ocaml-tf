(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_storage_sync_group = {
  id : string prop option; [@option]
  name : string prop;
  storage_sync_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_sync_group) -> ()

let yojson_of_azurerm_storage_sync_group =
  (function
   | {
       id = v_id;
       name = v_name;
       storage_sync_id = v_storage_sync_id;
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
           yojson_of_prop yojson_of_string v_storage_sync_id
         in
         ("storage_sync_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_storage_sync_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_sync_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_sync_group ?id ?timeouts ~name ~storage_sync_id
    () : azurerm_storage_sync_group =
  { id; name; storage_sync_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  storage_sync_id : string prop;
}

let make ?id ?timeouts ~name ~storage_sync_id __id =
  let __type = "azurerm_storage_sync_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       storage_sync_id = Prop.computed __type __id "storage_sync_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_sync_group
        (azurerm_storage_sync_group ?id ?timeouts ~name
           ~storage_sync_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~storage_sync_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~storage_sync_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
