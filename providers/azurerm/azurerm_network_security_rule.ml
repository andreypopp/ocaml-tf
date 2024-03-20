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

type azurerm_network_security_rule = {
  access : string prop;
  description : string prop option; [@option]
  destination_address_prefix : string prop option; [@option]
  destination_address_prefixes : string prop list option; [@option]
  destination_application_security_group_ids :
    string prop list option;
      [@option]
  destination_port_range : string prop option; [@option]
  destination_port_ranges : string prop list option; [@option]
  direction : string prop;
  id : string prop option; [@option]
  name : string prop;
  network_security_group_name : string prop;
  priority : float prop;
  protocol : string prop;
  resource_group_name : string prop;
  source_address_prefix : string prop option; [@option]
  source_address_prefixes : string prop list option; [@option]
  source_application_security_group_ids : string prop list option;
      [@option]
  source_port_range : string prop option; [@option]
  source_port_ranges : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_security_rule) -> ()

let yojson_of_azurerm_network_security_rule =
  (function
   | {
       access = v_access;
       description = v_description;
       destination_address_prefix = v_destination_address_prefix;
       destination_address_prefixes = v_destination_address_prefixes;
       destination_application_security_group_ids =
         v_destination_application_security_group_ids;
       destination_port_range = v_destination_port_range;
       destination_port_ranges = v_destination_port_ranges;
       direction = v_direction;
       id = v_id;
       name = v_name;
       network_security_group_name = v_network_security_group_name;
       priority = v_priority;
       protocol = v_protocol;
       resource_group_name = v_resource_group_name;
       source_address_prefix = v_source_address_prefix;
       source_address_prefixes = v_source_address_prefixes;
       source_application_security_group_ids =
         v_source_application_security_group_ids;
       source_port_range = v_source_port_range;
       source_port_ranges = v_source_port_ranges;
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
         match v_source_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_port_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_application_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "source_application_security_group_ids", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_source_address_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_address_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_address_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_address_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_network_security_group_name
         in
         ("network_security_group_name", arg) :: bnds
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
         match v_destination_port_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_port_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_application_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd =
               "destination_application_security_group_ids", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_destination_address_prefixes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "destination_address_prefixes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_destination_address_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination_address_prefix", arg in
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
         let arg = yojson_of_prop yojson_of_string v_access in
         ("access", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_network_security_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_security_rule

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_network_security_rule ?description
    ?destination_address_prefix ?destination_address_prefixes
    ?destination_application_security_group_ids
    ?destination_port_range ?destination_port_ranges ?id
    ?source_address_prefix ?source_address_prefixes
    ?source_application_security_group_ids ?source_port_range
    ?source_port_ranges ?timeouts ~access ~direction ~name
    ~network_security_group_name ~priority ~protocol
    ~resource_group_name () : azurerm_network_security_rule =
  {
    access;
    description;
    destination_address_prefix;
    destination_address_prefixes;
    destination_application_security_group_ids;
    destination_port_range;
    destination_port_ranges;
    direction;
    id;
    name;
    network_security_group_name;
    priority;
    protocol;
    resource_group_name;
    source_address_prefix;
    source_address_prefixes;
    source_application_security_group_ids;
    source_port_range;
    source_port_ranges;
    timeouts;
  }

type t = {
  access : string prop;
  description : string prop;
  destination_address_prefix : string prop;
  destination_address_prefixes : string list prop;
  destination_application_security_group_ids : string list prop;
  destination_port_range : string prop;
  destination_port_ranges : string list prop;
  direction : string prop;
  id : string prop;
  name : string prop;
  network_security_group_name : string prop;
  priority : float prop;
  protocol : string prop;
  resource_group_name : string prop;
  source_address_prefix : string prop;
  source_address_prefixes : string list prop;
  source_application_security_group_ids : string list prop;
  source_port_range : string prop;
  source_port_ranges : string list prop;
}

let make ?description ?destination_address_prefix
    ?destination_address_prefixes
    ?destination_application_security_group_ids
    ?destination_port_range ?destination_port_ranges ?id
    ?source_address_prefix ?source_address_prefixes
    ?source_application_security_group_ids ?source_port_range
    ?source_port_ranges ?timeouts ~access ~direction ~name
    ~network_security_group_name ~priority ~protocol
    ~resource_group_name __id =
  let __type = "azurerm_network_security_rule" in
  let __attrs =
    ({
       access = Prop.computed __type __id "access";
       description = Prop.computed __type __id "description";
       destination_address_prefix =
         Prop.computed __type __id "destination_address_prefix";
       destination_address_prefixes =
         Prop.computed __type __id "destination_address_prefixes";
       destination_application_security_group_ids =
         Prop.computed __type __id
           "destination_application_security_group_ids";
       destination_port_range =
         Prop.computed __type __id "destination_port_range";
       destination_port_ranges =
         Prop.computed __type __id "destination_port_ranges";
       direction = Prop.computed __type __id "direction";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_security_group_name =
         Prop.computed __type __id "network_security_group_name";
       priority = Prop.computed __type __id "priority";
       protocol = Prop.computed __type __id "protocol";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_address_prefix =
         Prop.computed __type __id "source_address_prefix";
       source_address_prefixes =
         Prop.computed __type __id "source_address_prefixes";
       source_application_security_group_ids =
         Prop.computed __type __id
           "source_application_security_group_ids";
       source_port_range =
         Prop.computed __type __id "source_port_range";
       source_port_ranges =
         Prop.computed __type __id "source_port_ranges";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_security_rule
        (azurerm_network_security_rule ?description
           ?destination_address_prefix ?destination_address_prefixes
           ?destination_application_security_group_ids
           ?destination_port_range ?destination_port_ranges ?id
           ?source_address_prefix ?source_address_prefixes
           ?source_application_security_group_ids ?source_port_range
           ?source_port_ranges ?timeouts ~access ~direction ~name
           ~network_security_group_name ~priority ~protocol
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?destination_address_prefix
    ?destination_address_prefixes
    ?destination_application_security_group_ids
    ?destination_port_range ?destination_port_ranges ?id
    ?source_address_prefix ?source_address_prefixes
    ?source_application_security_group_ids ?source_port_range
    ?source_port_ranges ?timeouts ~access ~direction ~name
    ~network_security_group_name ~priority ~protocol
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?destination_address_prefix
      ?destination_address_prefixes
      ?destination_application_security_group_ids
      ?destination_port_range ?destination_port_ranges ?id
      ?source_address_prefix ?source_address_prefixes
      ?source_application_security_group_ids ?source_port_range
      ?source_port_ranges ?timeouts ~access ~direction ~name
      ~network_security_group_name ~priority ~protocol
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
