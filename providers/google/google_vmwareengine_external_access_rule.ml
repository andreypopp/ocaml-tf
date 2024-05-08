(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_ip_ranges = {
  external_address : string prop option; [@option]
  ip_address_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination_ip_ranges) -> ()

let yojson_of_destination_ip_ranges =
  (function
   | {
       external_address = v_external_address;
       ip_address_range = v_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_address_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination_ip_ranges

[@@@deriving.end]

type source_ip_ranges = {
  ip_address : string prop option; [@option]
  ip_address_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source_ip_ranges) -> ()

let yojson_of_source_ip_ranges =
  (function
   | {
       ip_address = v_ip_address;
       ip_address_range = v_ip_address_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_address_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_range", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source_ip_ranges

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_vmwareengine_external_access_rule = {
  action : string prop;
  description : string prop option; [@option]
  destination_ports : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  id : string prop option; [@option]
  ip_protocol : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  source_ports : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  destination_ip_ranges : destination_ip_ranges list;
      [@default []] [@yojson_drop_default ( = )]
  source_ip_ranges : source_ip_ranges list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_external_access_rule) -> ()

let yojson_of_google_vmwareengine_external_access_rule =
  (function
   | {
       action = v_action;
       description = v_description;
       destination_ports = v_destination_ports;
       id = v_id;
       ip_protocol = v_ip_protocol;
       name = v_name;
       parent = v_parent;
       priority = v_priority;
       source_ports = v_source_ports;
       destination_ip_ranges = v_destination_ip_ranges;
       source_ip_ranges = v_source_ip_ranges;
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
         if [] = v_source_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list yojson_of_source_ip_ranges)
               v_source_ip_ranges
           in
           let bnd = "source_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_destination_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination_ip_ranges)
               v_destination_ip_ranges
           in
           let bnd = "destination_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_source_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_source_ports
           in
           let bnd = "source_ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
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
         if [] = v_destination_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_destination_ports
           in
           let bnd = "destination_ports", arg in
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
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : google_vmwareengine_external_access_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_external_access_rule

[@@@deriving.end]

let destination_ip_ranges ?external_address ?ip_address_range () :
    destination_ip_ranges =
  { external_address; ip_address_range }

let source_ip_ranges ?ip_address ?ip_address_range () :
    source_ip_ranges =
  { ip_address; ip_address_range }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_external_access_rule ?description ?id
    ?timeouts ~action ~destination_ports ~ip_protocol ~name ~parent
    ~priority ~source_ports ~destination_ip_ranges ~source_ip_ranges
    () : google_vmwareengine_external_access_rule =
  {
    action;
    description;
    destination_ports;
    id;
    ip_protocol;
    name;
    parent;
    priority;
    source_ports;
    destination_ip_ranges;
    source_ip_ranges;
    timeouts;
  }

type t = {
  tf_name : string;
  action : string prop;
  create_time : string prop;
  description : string prop;
  destination_ports : string list prop;
  id : string prop;
  ip_protocol : string prop;
  name : string prop;
  parent : string prop;
  priority : float prop;
  source_ports : string list prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?description ?id ?timeouts ~action ~destination_ports
    ~ip_protocol ~name ~parent ~priority ~source_ports
    ~destination_ip_ranges ~source_ip_ranges __id =
  let __type = "google_vmwareengine_external_access_rule" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       destination_ports =
         Prop.computed __type __id "destination_ports";
       id = Prop.computed __type __id "id";
       ip_protocol = Prop.computed __type __id "ip_protocol";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       priority = Prop.computed __type __id "priority";
       source_ports = Prop.computed __type __id "source_ports";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_external_access_rule
        (google_vmwareengine_external_access_rule ?description ?id
           ?timeouts ~action ~destination_ports ~ip_protocol ~name
           ~parent ~priority ~source_ports ~destination_ip_ranges
           ~source_ip_ranges ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~action
    ~destination_ports ~ip_protocol ~name ~parent ~priority
    ~source_ports ~destination_ip_ranges ~source_ip_ranges __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~action ~destination_ports
      ~ip_protocol ~name ~parent ~priority ~source_ports
      ~destination_ip_ranges ~source_ip_ranges __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
