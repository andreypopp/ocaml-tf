(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type collector_ilb = { url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : collector_ilb) -> ()

let yojson_of_collector_ilb =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : collector_ilb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_collector_ilb

[@@@deriving.end]

type filter = {
  cidr_ranges : string prop list option; [@option]
  direction : string prop option; [@option]
  ip_protocols : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | {
       cidr_ranges = v_cidr_ranges;
       direction = v_direction;
       ip_protocols = v_ip_protocols;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ip_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ip_protocols", arg in
             bnd :: bnds
       in
       let bnds =
         match v_direction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "direction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cidr_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cidr_ranges", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type mirrored_resources__instances = { url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : mirrored_resources__instances) -> ()

let yojson_of_mirrored_resources__instances =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : mirrored_resources__instances ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mirrored_resources__instances

[@@@deriving.end]

type mirrored_resources__subnetworks = { url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : mirrored_resources__subnetworks) -> ()

let yojson_of_mirrored_resources__subnetworks =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : mirrored_resources__subnetworks ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mirrored_resources__subnetworks

[@@@deriving.end]

type mirrored_resources = {
  tags : string prop list option; [@option]
  instances : mirrored_resources__instances list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnetworks : mirrored_resources__subnetworks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mirrored_resources) -> ()

let yojson_of_mirrored_resources =
  (function
   | {
       tags = v_tags;
       instances = v_instances;
       subnetworks = v_subnetworks;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnetworks then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_mirrored_resources__subnetworks)
               v_subnetworks
           in
           let bnd = "subnetworks", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_instances then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mirrored_resources__instances)
               v_instances
           in
           let bnd = "instances", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : mirrored_resources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mirrored_resources

[@@@deriving.end]

type network = { url : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | { url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

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

type google_compute_packet_mirroring = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  collector_ilb : collector_ilb list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  mirrored_resources : mirrored_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network : network list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_packet_mirroring) -> ()

let yojson_of_google_compute_packet_mirroring =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       priority = v_priority;
       project = v_project;
       region = v_region;
       collector_ilb = v_collector_ilb;
       filter = v_filter;
       mirrored_resources = v_mirrored_resources;
       network = v_network;
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
         if Stdlib.( = ) [] v_network then bnds
         else
           let arg = (yojson_of_list yojson_of_network) v_network in
           let bnd = "network", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_mirrored_resources then bnds
         else
           let arg =
             (yojson_of_list yojson_of_mirrored_resources)
               v_mirrored_resources
           in
           let bnd = "mirrored_resources", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_collector_ilb then bnds
         else
           let arg =
             (yojson_of_list yojson_of_collector_ilb) v_collector_ilb
           in
           let bnd = "collector_ilb", arg in
           bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_packet_mirroring ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_packet_mirroring

[@@@deriving.end]

let collector_ilb ~url () : collector_ilb = { url }

let filter ?cidr_ranges ?direction ?ip_protocols () : filter =
  { cidr_ranges; direction; ip_protocols }

let mirrored_resources__instances ~url () :
    mirrored_resources__instances =
  { url }

let mirrored_resources__subnetworks ~url () :
    mirrored_resources__subnetworks =
  { url }

let mirrored_resources ?tags ?(instances = []) ?(subnetworks = []) ()
    : mirrored_resources =
  { tags; instances; subnetworks }

let network ~url () : network = { url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_packet_mirroring ?description ?id ?priority
    ?project ?region ?(filter = []) ?timeouts ~name ~collector_ilb
    ~mirrored_resources ~network () : google_compute_packet_mirroring
    =
  {
    description;
    id;
    name;
    priority;
    project;
    region;
    collector_ilb;
    filter;
    mirrored_resources;
    network;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  project : string prop;
  region : string prop;
}

let make ?description ?id ?priority ?project ?region ?(filter = [])
    ?timeouts ~name ~collector_ilb ~mirrored_resources ~network __id
    =
  let __type = "google_compute_packet_mirroring" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_packet_mirroring
        (google_compute_packet_mirroring ?description ?id ?priority
           ?project ?region ~filter ?timeouts ~name ~collector_ilb
           ~mirrored_resources ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?priority ?project ?region
    ?(filter = []) ?timeouts ~name ~collector_ilb ~mirrored_resources
    ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?priority ?project ?region ~filter
      ?timeouts ~name ~collector_ilb ~mirrored_resources ~network
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
