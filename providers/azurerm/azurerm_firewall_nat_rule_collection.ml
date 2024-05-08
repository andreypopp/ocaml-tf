(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule = {
  description : string prop option; [@option]
  destination_addresses : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  destination_ports : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  protocols : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source_addresses : string prop list option; [@option]
  source_ip_groups : string prop list option; [@option]
  translated_address : string prop;
  translated_port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule) -> ()

let yojson_of_rule =
  (function
   | {
       description = v_description;
       destination_addresses = v_destination_addresses;
       destination_ports = v_destination_ports;
       name = v_name;
       protocols = v_protocols;
       source_addresses = v_source_addresses;
       source_ip_groups = v_source_ip_groups;
       translated_address = v_translated_address;
       translated_port = v_translated_port;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_translated_port
         in
         ("translated_port", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_translated_address
         in
         ("translated_address", arg) :: bnds
       in
       let bnds =
         match v_source_ip_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_ip_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "source_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_protocols then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_protocols
           in
           let bnd = "protocols", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_ports
           in
           let bnd = "destination_ports", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination_addresses then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_addresses
           in
           let bnd = "destination_addresses", arg in
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
       `Assoc bnds
    : rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule

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

type azurerm_firewall_nat_rule_collection = {
  action : string prop;
  azure_firewall_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
  rule : rule list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_firewall_nat_rule_collection) -> ()

let yojson_of_azurerm_firewall_nat_rule_collection =
  (function
   | {
       action = v_action;
       azure_firewall_name = v_azure_firewall_name;
       id = v_id;
       name = v_name;
       priority = v_priority;
       resource_group_name = v_resource_group_name;
       rule = v_rule;
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
         if Stdlib.( = ) [] v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_azure_firewall_name
         in
         ("azure_firewall_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_firewall_nat_rule_collection ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_firewall_nat_rule_collection

[@@@deriving.end]

let rule ?description ?source_addresses ?source_ip_groups
    ~destination_addresses ~destination_ports ~name ~protocols
    ~translated_address ~translated_port () : rule =
  {
    description;
    destination_addresses;
    destination_ports;
    name;
    protocols;
    source_addresses;
    source_ip_groups;
    translated_address;
    translated_port;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_firewall_nat_rule_collection ?id ?timeouts ~action
    ~azure_firewall_name ~name ~priority ~resource_group_name ~rule
    () : azurerm_firewall_nat_rule_collection =
  {
    action;
    azure_firewall_name;
    id;
    name;
    priority;
    resource_group_name;
    rule;
    timeouts;
  }

type t = {
  tf_name : string;
  action : string prop;
  azure_firewall_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  resource_group_name : string prop;
}

let make ?id ?timeouts ~action ~azure_firewall_name ~name ~priority
    ~resource_group_name ~rule __id =
  let __type = "azurerm_firewall_nat_rule_collection" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       azure_firewall_name =
         Prop.computed __type __id "azure_firewall_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_firewall_nat_rule_collection
        (azurerm_firewall_nat_rule_collection ?id ?timeouts ~action
           ~azure_firewall_name ~name ~priority ~resource_group_name
           ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~action ~azure_firewall_name
    ~name ~priority ~resource_group_name ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~action ~azure_firewall_name ~name ~priority
      ~resource_group_name ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
