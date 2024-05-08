(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type linked_interconnect_attachments = {
  site_to_site_data_transfer : bool prop;
  uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_interconnect_attachments) -> ()

let yojson_of_linked_interconnect_attachments =
  (function
   | {
       site_to_site_data_transfer = v_site_to_site_data_transfer;
       uris = v_uris;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_uris
           in
           let bnd = "uris", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_site_to_site_data_transfer
         in
         ("site_to_site_data_transfer", arg) :: bnds
       in
       `Assoc bnds
    : linked_interconnect_attachments ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_interconnect_attachments

[@@@deriving.end]

type linked_router_appliance_instances__instances = {
  ip_address : string prop option; [@option]
  virtual_machine : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_router_appliance_instances__instances) -> ()

let yojson_of_linked_router_appliance_instances__instances =
  (function
   | {
       ip_address = v_ip_address;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_virtual_machine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_machine", arg in
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
    : linked_router_appliance_instances__instances ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_router_appliance_instances__instances

[@@@deriving.end]

type linked_router_appliance_instances = {
  site_to_site_data_transfer : bool prop;
  instances : linked_router_appliance_instances__instances list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_router_appliance_instances) -> ()

let yojson_of_linked_router_appliance_instances =
  (function
   | {
       site_to_site_data_transfer = v_site_to_site_data_transfer;
       instances = v_instances;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_instances then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_linked_router_appliance_instances__instances)
               v_instances
           in
           let bnd = "instances", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_site_to_site_data_transfer
         in
         ("site_to_site_data_transfer", arg) :: bnds
       in
       `Assoc bnds
    : linked_router_appliance_instances ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_router_appliance_instances

[@@@deriving.end]

type linked_vpc_network = {
  exclude_export_ranges : string prop list option; [@option]
  uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_vpc_network) -> ()

let yojson_of_linked_vpc_network =
  (function
   | { exclude_export_ranges = v_exclude_export_ranges; uri = v_uri }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       let bnds =
         match v_exclude_export_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "exclude_export_ranges", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : linked_vpc_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_vpc_network

[@@@deriving.end]

type linked_vpn_tunnels = {
  site_to_site_data_transfer : bool prop;
  uris : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linked_vpn_tunnels) -> ()

let yojson_of_linked_vpn_tunnels =
  (function
   | {
       site_to_site_data_transfer = v_site_to_site_data_transfer;
       uris = v_uris;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_uris then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_uris
           in
           let bnd = "uris", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_site_to_site_data_transfer
         in
         ("site_to_site_data_transfer", arg) :: bnds
       in
       `Assoc bnds
    : linked_vpn_tunnels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linked_vpn_tunnels

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

type google_network_connectivity_spoke = {
  description : string prop option; [@option]
  hub : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  linked_interconnect_attachments :
    linked_interconnect_attachments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linked_router_appliance_instances :
    linked_router_appliance_instances list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linked_vpc_network : linked_vpc_network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  linked_vpn_tunnels : linked_vpn_tunnels list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_connectivity_spoke) -> ()

let yojson_of_google_network_connectivity_spoke =
  (function
   | {
       description = v_description;
       hub = v_hub;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       linked_interconnect_attachments =
         v_linked_interconnect_attachments;
       linked_router_appliance_instances =
         v_linked_router_appliance_instances;
       linked_vpc_network = v_linked_vpc_network;
       linked_vpn_tunnels = v_linked_vpn_tunnels;
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
         if Stdlib.( = ) [] v_linked_vpn_tunnels then bnds
         else
           let arg =
             (yojson_of_list yojson_of_linked_vpn_tunnels)
               v_linked_vpn_tunnels
           in
           let bnd = "linked_vpn_tunnels", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linked_vpc_network then bnds
         else
           let arg =
             (yojson_of_list yojson_of_linked_vpc_network)
               v_linked_vpc_network
           in
           let bnd = "linked_vpc_network", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linked_router_appliance_instances then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_linked_router_appliance_instances)
               v_linked_router_appliance_instances
           in
           let bnd = "linked_router_appliance_instances", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_linked_interconnect_attachments then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_linked_interconnect_attachments)
               v_linked_interconnect_attachments
           in
           let bnd = "linked_interconnect_attachments", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_hub in
         ("hub", arg) :: bnds
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
    : google_network_connectivity_spoke ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_connectivity_spoke

[@@@deriving.end]

let linked_interconnect_attachments ~site_to_site_data_transfer ~uris
    () : linked_interconnect_attachments =
  { site_to_site_data_transfer; uris }

let linked_router_appliance_instances__instances ?ip_address
    ?virtual_machine () :
    linked_router_appliance_instances__instances =
  { ip_address; virtual_machine }

let linked_router_appliance_instances ~site_to_site_data_transfer
    ~instances () : linked_router_appliance_instances =
  { site_to_site_data_transfer; instances }

let linked_vpc_network ?exclude_export_ranges ~uri () :
    linked_vpc_network =
  { exclude_export_ranges; uri }

let linked_vpn_tunnels ~site_to_site_data_transfer ~uris () :
    linked_vpn_tunnels =
  { site_to_site_data_transfer; uris }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_connectivity_spoke ?description ?id ?labels
    ?project ?(linked_interconnect_attachments = [])
    ?(linked_router_appliance_instances = [])
    ?(linked_vpc_network = []) ?(linked_vpn_tunnels = []) ?timeouts
    ~hub ~location ~name () : google_network_connectivity_spoke =
  {
    description;
    hub;
    id;
    labels;
    location;
    name;
    project;
    linked_interconnect_attachments;
    linked_router_appliance_instances;
    linked_vpc_network;
    linked_vpn_tunnels;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  hub : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  unique_id : string prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project
    ?(linked_interconnect_attachments = [])
    ?(linked_router_appliance_instances = [])
    ?(linked_vpc_network = []) ?(linked_vpn_tunnels = []) ?timeouts
    ~hub ~location ~name __id =
  let __type = "google_network_connectivity_spoke" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       hub = Prop.computed __type __id "hub";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       unique_id = Prop.computed __type __id "unique_id";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_connectivity_spoke
        (google_network_connectivity_spoke ?description ?id ?labels
           ?project ~linked_interconnect_attachments
           ~linked_router_appliance_instances ~linked_vpc_network
           ~linked_vpn_tunnels ?timeouts ~hub ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?(linked_interconnect_attachments = [])
    ?(linked_router_appliance_instances = [])
    ?(linked_vpc_network = []) ?(linked_vpn_tunnels = []) ?timeouts
    ~hub ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project
      ~linked_interconnect_attachments
      ~linked_router_appliance_instances ~linked_vpc_network
      ~linked_vpn_tunnels ?timeouts ~hub ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
