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

type security_rule = {
  access : string prop;
  description : string prop;
  destination_address_prefix : string prop;
  destination_address_prefixes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  destination_application_security_group_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  destination_port_range : string prop;
  destination_port_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  direction : string prop;
  name : string prop;
  priority : float prop;
  protocol : string prop;
  source_address_prefix : string prop;
  source_address_prefixes : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  source_application_security_group_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  source_port_range : string prop;
  source_port_ranges : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_rule) -> ()

let yojson_of_security_rule =
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
       name = v_name;
       priority = v_priority;
       protocol = v_protocol;
       source_address_prefix = v_source_address_prefix;
       source_address_prefixes = v_source_address_prefixes;
       source_application_security_group_ids =
         v_source_application_security_group_ids;
       source_port_range = v_source_port_range;
       source_port_ranges = v_source_port_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_source_port_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_port_ranges
           in
           let bnd = "source_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_port_range
         in
         ("source_port_range", arg) :: bnds
       in
       let bnds =
         if [] = v_source_application_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_application_security_group_ids
           in
           let bnd = "source_application_security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source_address_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_address_prefixes
           in
           let bnd = "source_address_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_source_address_prefix
         in
         ("source_address_prefix", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_direction in
         ("direction", arg) :: bnds
       in
       let bnds =
         if [] = v_destination_port_ranges then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_port_ranges
           in
           let bnd = "destination_port_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_destination_port_range
         in
         ("destination_port_range", arg) :: bnds
       in
       let bnds =
         if [] = v_destination_application_security_group_ids then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_application_security_group_ids
           in
           let bnd =
             "destination_application_security_group_ids", arg
           in
           bnd :: bnds
       in
       let bnds =
         if [] = v_destination_address_prefixes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_address_prefixes
           in
           let bnd = "destination_address_prefixes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_destination_address_prefix
         in
         ("destination_address_prefix", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access in
         ("access", arg) :: bnds
       in
       `Assoc bnds
    : security_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_rule

[@@@deriving.end]

type azurerm_network_security_group = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_network_security_group) -> ()

let yojson_of_azurerm_network_security_group =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
    : azurerm_network_security_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_network_security_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_network_security_group ?id ?timeouts ~name
    ~resource_group_name () : azurerm_network_security_group =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  security_rule : security_rule list prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_network_security_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       security_rule = Prop.computed __type __id "security_rule";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_network_security_group
        (azurerm_network_security_group ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
