(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination = {
  address_prefix : string prop;
  address_prefix_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination) -> ()

let yojson_of_destination =
  (function
   | {
       address_prefix = v_address_prefix;
       address_prefix_type = v_address_prefix_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix_type
         in
         ("address_prefix_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix
         in
         ("address_prefix", arg) :: bnds
       in
       `Assoc bnds
    : destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination

[@@@deriving.end]

type source = {
  address_prefix : string prop;
  address_prefix_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       address_prefix = v_address_prefix;
       address_prefix_type = v_address_prefix_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix_type
         in
         ("address_prefix_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_prefix
         in
         ("address_prefix", arg) :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

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

type azurerm_network_manager_admin_rule = {
  action : string prop;
  admin_rule_collection_id : string prop;
  description : string prop option; [@option]
  destination_port_ranges : string prop list option; [@option]
  direction : string prop;
  id : string prop option; [@option]
  name : string prop;
  priority : float prop;
  protocol : string prop;
  source_port_ranges : string prop list option; [@option]
  destination : destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_manager_admin_rule) -> ()

let yojson_of_azurerm_network_manager_admin_rule =
  (function
   | {
       action = v_action;
       admin_rule_collection_id = v_admin_rule_collection_id;
       description = v_description;
       destination_port_ranges = v_destination_port_ranges;
       direction = v_direction;
       id = v_id;
       name = v_name;
       priority = v_priority;
       protocol = v_protocol;
       source_port_ranges = v_source_port_ranges;
       destination = v_destination;
       source = v_source;
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
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination) v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_source_port_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_port_ranges", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         match v_destination_port_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_port_ranges", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_admin_rule_collection_id
         in
         ("admin_rule_collection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_network_manager_admin_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_manager_admin_rule

[@@@deriving.end]

let destination ~address_prefix ~address_prefix_type () : destination
    =
  { address_prefix; address_prefix_type }

let source ~address_prefix ~address_prefix_type () : source =
  { address_prefix; address_prefix_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_manager_admin_rule ?description
    ?destination_port_ranges ?id ?source_port_ranges
    ?(destination = []) ?(source = []) ?timeouts ~action
    ~admin_rule_collection_id ~direction ~name ~priority ~protocol ()
    : azurerm_network_manager_admin_rule =
  {
    action;
    admin_rule_collection_id;
    description;
    destination_port_ranges;
    direction;
    id;
    name;
    priority;
    protocol;
    source_port_ranges;
    destination;
    source;
    timeouts;
  }

type t = {
  tf_name : string;
  action : string prop;
  admin_rule_collection_id : string prop;
  description : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  protocol : string prop;
  source_port_ranges : string list prop;
}

let make ?description ?destination_port_ranges ?id
    ?source_port_ranges ?(destination = []) ?(source = []) ?timeouts
    ~action ~admin_rule_collection_id ~direction ~name ~priority
    ~protocol __id =
  let __type = "azurerm_network_manager_admin_rule" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       admin_rule_collection_id =
         Prop.computed __type __id "admin_rule_collection_id";
       description = Prop.computed __type __id "description";
       destination_port_ranges =
         Prop.computed __type __id "destination_port_ranges";
       direction = Prop.computed __type __id "direction";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       protocol = Prop.computed __type __id "protocol";
       source_port_ranges =
         Prop.computed __type __id "source_port_ranges";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_manager_admin_rule
        (azurerm_network_manager_admin_rule ?description
           ?destination_port_ranges ?id ?source_port_ranges
           ~destination ~source ?timeouts ~action
           ~admin_rule_collection_id ~direction ~name ~priority
           ~protocol ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?destination_port_ranges ?id
    ?source_port_ranges ?(destination = []) ?(source = []) ?timeouts
    ~action ~admin_rule_collection_id ~direction ~name ~priority
    ~protocol __id =
  let (r : _ Tf_core.resource) =
    make ?description ?destination_port_ranges ?id
      ?source_port_ranges ~destination ~source ?timeouts ~action
      ~admin_rule_collection_id ~direction ~name ~priority ~protocol
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
