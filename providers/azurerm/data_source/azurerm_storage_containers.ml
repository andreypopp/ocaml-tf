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

type containers = {
  data_plane_id : string prop;
  name : string prop;
  resource_manager_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : containers) -> ()

let yojson_of_containers =
  (function
   | {
       data_plane_id = v_data_plane_id;
       name = v_name;
       resource_manager_id = v_resource_manager_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_manager_id
         in
         ("resource_manager_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_plane_id in
         ("data_plane_id", arg) :: bnds
       in
       `Assoc bnds
    : containers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_containers

[@@@deriving.end]

type azurerm_storage_containers = {
  id : string prop option; [@option]
  name_prefix : string prop option; [@option]
  storage_account_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_containers) -> ()

let yojson_of_azurerm_storage_containers =
  (function
   | {
       id = v_id;
       name_prefix = v_name_prefix;
       storage_account_id = v_storage_account_id;
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
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
       `Assoc bnds
    : azurerm_storage_containers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_containers

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_containers ?id ?name_prefix ?timeouts
    ~storage_account_id () : azurerm_storage_containers =
  { id; name_prefix; storage_account_id; timeouts }

type t = {
  containers : containers list prop;
  id : string prop;
  name_prefix : string prop;
  storage_account_id : string prop;
}

let make ?id ?name_prefix ?timeouts ~storage_account_id __id =
  let __type = "azurerm_storage_containers" in
  let __attrs =
    ({
       containers = Prop.computed __type __id "containers";
       id = Prop.computed __type __id "id";
       name_prefix = Prop.computed __type __id "name_prefix";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_containers
        (azurerm_storage_containers ?id ?name_prefix ?timeouts
           ~storage_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name_prefix ?timeouts
    ~storage_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name_prefix ?timeouts ~storage_account_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
