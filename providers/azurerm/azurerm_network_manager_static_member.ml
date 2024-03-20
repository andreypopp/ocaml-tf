(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_network_manager_static_member = {
  id : string prop option; [@option]
  name : string prop;
  network_group_id : string prop;
  target_virtual_network_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_manager_static_member) -> ()

let yojson_of_azurerm_network_manager_static_member =
  (function
   | {
       id = v_id;
       name = v_name;
       network_group_id = v_network_group_id;
       target_virtual_network_id = v_target_virtual_network_id;
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
           yojson_of_prop yojson_of_string
             v_target_virtual_network_id
         in
         ("target_virtual_network_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_group_id
         in
         ("network_group_id", arg) :: bnds
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
    : azurerm_network_manager_static_member ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_manager_static_member

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_network_manager_static_member ?id ?timeouts ~name
    ~network_group_id ~target_virtual_network_id () :
    azurerm_network_manager_static_member =
  { id; name; network_group_id; target_virtual_network_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  network_group_id : string prop;
  region : string prop;
  target_virtual_network_id : string prop;
}

let make ?id ?timeouts ~name ~network_group_id
    ~target_virtual_network_id __id =
  let __type = "azurerm_network_manager_static_member" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_group_id =
         Prop.computed __type __id "network_group_id";
       region = Prop.computed __type __id "region";
       target_virtual_network_id =
         Prop.computed __type __id "target_virtual_network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_static_member
        (azurerm_network_manager_static_member ?id ?timeouts ~name
           ~network_group_id ~target_virtual_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~network_group_id
    ~target_virtual_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~network_group_id
      ~target_virtual_network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
