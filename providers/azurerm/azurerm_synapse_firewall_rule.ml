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

type azurerm_synapse_firewall_rule = {
  end_ip_address : string prop;
  id : string prop option; [@option]
  name : string prop;
  start_ip_address : string prop;
  synapse_workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_firewall_rule) -> ()

let yojson_of_azurerm_synapse_firewall_rule =
  (function
   | {
       end_ip_address = v_end_ip_address;
       id = v_id;
       name = v_name;
       start_ip_address = v_start_ip_address;
       synapse_workspace_id = v_synapse_workspace_id;
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
           yojson_of_prop yojson_of_string v_synapse_workspace_id
         in
         ("synapse_workspace_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_start_ip_address
         in
         ("start_ip_address", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_end_ip_address
         in
         ("end_ip_address", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_synapse_firewall_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_firewall_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id () :
    azurerm_synapse_firewall_rule =
  {
    end_ip_address;
    id;
    name;
    start_ip_address;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  start_ip_address : string prop;
  synapse_workspace_id : string prop;
}

let make ?id ?timeouts ~end_ip_address ~name ~start_ip_address
    ~synapse_workspace_id __id =
  let __type = "azurerm_synapse_firewall_rule" in
  let __attrs =
    ({
       end_ip_address = Prop.computed __type __id "end_ip_address";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       start_ip_address =
         Prop.computed __type __id "start_ip_address";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_firewall_rule
        (azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address
           ~name ~start_ip_address ~synapse_workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~end_ip_address ~name ~start_ip_address
      ~synapse_workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
