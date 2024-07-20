(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type connection_endpoints = {
  ip_address : string prop;
  project_id_or_num : string prop;
  secondary_ip_cidr_ranges : string prop;
  status : string prop;
  subnetwork : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connection_endpoints) -> ()

let yojson_of_connection_endpoints =
  (function
   | {
       ip_address = v_ip_address;
       project_id_or_num = v_project_id_or_num;
       secondary_ip_cidr_ranges = v_secondary_ip_cidr_ranges;
       status = v_status;
       subnetwork = v_subnetwork;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnetwork in
         ("subnetwork", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_secondary_ip_cidr_ranges
         in
         ("secondary_ip_cidr_ranges", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_project_id_or_num
         in
         ("project_id_or_num", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : connection_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connection_endpoints

[@@@deriving.end]

type google_compute_network_attachment = {
  connection_preference : string prop;
  description : string prop option; [@option]
  name : string prop;
  producer_accept_lists : string prop list option; [@option]
  producer_reject_lists : string prop list option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  subnetworks : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network_attachment) -> ()

let yojson_of_google_compute_network_attachment =
  (function
   | {
       connection_preference = v_connection_preference;
       description = v_description;
       name = v_name;
       producer_accept_lists = v_producer_accept_lists;
       producer_reject_lists = v_producer_reject_lists;
       project = v_project;
       region = v_region;
       subnetworks = v_subnetworks;
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
         if Stdlib.( = ) [] v_subnetworks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnetworks
           in
           let bnd = "subnetworks", arg in
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
         match v_producer_reject_lists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "producer_reject_lists", arg in
             bnd :: bnds
       in
       let bnds =
         match v_producer_accept_lists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "producer_accept_lists", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_connection_preference
         in
         ("connection_preference", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_network_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network_attachment

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_network_attachment ?description
    ?producer_accept_lists ?producer_reject_lists ?project ?region
    ?timeouts ~connection_preference ~name ~subnetworks () :
    google_compute_network_attachment =
  {
    connection_preference;
    description;
    name;
    producer_accept_lists;
    producer_reject_lists;
    project;
    region;
    subnetworks;
    timeouts;
  }

type t = {
  tf_name : string;
  connection_endpoints : connection_endpoints list prop;
  connection_preference : string prop;
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  network : string prop;
  producer_accept_lists : string list prop;
  producer_reject_lists : string list prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  self_link_with_id : string prop;
  subnetworks : string list prop;
}

let make ?description ?producer_accept_lists ?producer_reject_lists
    ?project ?region ?timeouts ~connection_preference ~name
    ~subnetworks __id =
  let __type = "google_compute_network_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       connection_endpoints =
         Prop.computed __type __id "connection_endpoints";
       connection_preference =
         Prop.computed __type __id "connection_preference";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       producer_accept_lists =
         Prop.computed __type __id "producer_accept_lists";
       producer_reject_lists =
         Prop.computed __type __id "producer_reject_lists";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       self_link_with_id =
         Prop.computed __type __id "self_link_with_id";
       subnetworks = Prop.computed __type __id "subnetworks";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network_attachment
        (google_compute_network_attachment ?description
           ?producer_accept_lists ?producer_reject_lists ?project
           ?region ?timeouts ~connection_preference ~name
           ~subnetworks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?producer_accept_lists
    ?producer_reject_lists ?project ?region ?timeouts
    ~connection_preference ~name ~subnetworks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?producer_accept_lists ?producer_reject_lists
      ?project ?region ?timeouts ~connection_preference ~name
      ~subnetworks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
