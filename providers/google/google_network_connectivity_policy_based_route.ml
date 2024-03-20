(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  dest_range : string prop option; [@option]
  ip_protocol : string prop option; [@option]
  protocol_version : string prop;
  src_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       dest_range = v_dest_range;
       ip_protocol = v_ip_protocol;
       protocol_version = v_protocol_version;
       src_range = v_src_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_src_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "src_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_protocol_version
         in
         ("protocol_version", arg) :: bnds
       in
       let bnds =
         match v_ip_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dest_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dest_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type interconnect_attachment = { region : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : interconnect_attachment) -> ()

let yojson_of_interconnect_attachment =
  (function
   | { region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       `Assoc bnds
    : interconnect_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_interconnect_attachment

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

type virtual_machine = { tags : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : virtual_machine) -> ()

let yojson_of_virtual_machine =
  (function
   | { tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_tags
         in
         ("tags", arg) :: bnds
       in
       `Assoc bnds
    : virtual_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_virtual_machine

[@@@deriving.end]

type warnings = {
  code : string prop;
  data : (string * string prop) list;
  warning_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : warnings) -> ()

let yojson_of_warnings =
  (function
   | {
       code = v_code;
       data = v_data;
       warning_message = v_warning_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_warning_message
         in
         ("warning_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_data
         in
         ("data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : warnings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_warnings

[@@@deriving.end]

type google_network_connectivity_policy_based_route = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  network : string prop;
  next_hop_ilb_ip : string prop option; [@option]
  next_hop_other_routes : string prop option; [@option]
  priority : float prop option; [@option]
  project : string prop option; [@option]
  filter : filter list;
  interconnect_attachment : interconnect_attachment list;
  timeouts : timeouts option;
  virtual_machine : virtual_machine list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_network_connectivity_policy_based_route) -> ()

let yojson_of_google_network_connectivity_policy_based_route =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       network = v_network;
       next_hop_ilb_ip = v_next_hop_ilb_ip;
       next_hop_other_routes = v_next_hop_other_routes;
       priority = v_priority;
       project = v_project;
       filter = v_filter;
       interconnect_attachment = v_interconnect_attachment;
       timeouts = v_timeouts;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_virtual_machine v_virtual_machine
         in
         ("virtual_machine", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_interconnect_attachment
             v_interconnect_attachment
         in
         ("interconnect_attachment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_other_routes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_other_routes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_ilb_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_ilb_ip", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_network_connectivity_policy_based_route ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_connectivity_policy_based_route

[@@@deriving.end]

let filter ?dest_range ?ip_protocol ?src_range ~protocol_version () :
    filter =
  { dest_range; ip_protocol; protocol_version; src_range }

let interconnect_attachment ~region () : interconnect_attachment =
  { region }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let virtual_machine ~tags () : virtual_machine = { tags }

let google_network_connectivity_policy_based_route ?description ?id
    ?labels ?next_hop_ilb_ip ?next_hop_other_routes ?priority
    ?project ?timeouts ~name ~network ~filter
    ~interconnect_attachment ~virtual_machine () :
    google_network_connectivity_policy_based_route =
  {
    description;
    id;
    labels;
    name;
    network;
    next_hop_ilb_ip;
    next_hop_other_routes;
    priority;
    project;
    filter;
    interconnect_attachment;
    timeouts;
    virtual_machine;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  kind : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  next_hop_ilb_ip : string prop;
  next_hop_other_routes : string prop;
  priority : float prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  warnings : warnings list prop;
}

let make ?description ?id ?labels ?next_hop_ilb_ip
    ?next_hop_other_routes ?priority ?project ?timeouts ~name
    ~network ~filter ~interconnect_attachment ~virtual_machine __id =
  let __type = "google_network_connectivity_policy_based_route" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       next_hop_ilb_ip = Prop.computed __type __id "next_hop_ilb_ip";
       next_hop_other_routes =
         Prop.computed __type __id "next_hop_other_routes";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       warnings = Prop.computed __type __id "warnings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_connectivity_policy_based_route
        (google_network_connectivity_policy_based_route ?description
           ?id ?labels ?next_hop_ilb_ip ?next_hop_other_routes
           ?priority ?project ?timeouts ~name ~network ~filter
           ~interconnect_attachment ~virtual_machine ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?next_hop_ilb_ip
    ?next_hop_other_routes ?priority ?project ?timeouts ~name
    ~network ~filter ~interconnect_attachment ~virtual_machine __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?next_hop_ilb_ip
      ?next_hop_other_routes ?priority ?project ?timeouts ~name
      ~network ~filter ~interconnect_attachment ~virtual_machine __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
