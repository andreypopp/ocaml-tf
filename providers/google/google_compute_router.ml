(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp__advertised_ip_ranges = {
  description : string prop option; [@option]
  range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp__advertised_ip_ranges) -> ()

let yojson_of_bgp__advertised_ip_ranges =
  (function
   | { description = v_description; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range in
         ("range", arg) :: bnds
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
    : bgp__advertised_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp__advertised_ip_ranges

[@@@deriving.end]

type bgp = {
  advertise_mode : string prop option; [@option]
  advertised_groups : string prop list option; [@option]
  asn : float prop;
  keepalive_interval : float prop option; [@option]
  advertised_ip_ranges : bgp__advertised_ip_ranges list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp) -> ()

let yojson_of_bgp =
  (function
   | {
       advertise_mode = v_advertise_mode;
       advertised_groups = v_advertised_groups;
       asn = v_asn;
       keepalive_interval = v_keepalive_interval;
       advertised_ip_ranges = v_advertised_ip_ranges;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_advertised_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bgp__advertised_ip_ranges)
               v_advertised_ip_ranges
           in
           let bnd = "advertised_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         match v_keepalive_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "keepalive_interval", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       let bnds =
         match v_advertised_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "advertised_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertise_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "advertise_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bgp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp

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

type google_compute_router = {
  description : string prop option; [@option]
  encrypted_interconnect_router : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  bgp : bgp list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router) -> ()

let yojson_of_google_compute_router =
  (function
   | {
       description = v_description;
       encrypted_interconnect_router =
         v_encrypted_interconnect_router;
       id = v_id;
       name = v_name;
       network = v_network;
       project = v_project;
       region = v_region;
       bgp = v_bgp;
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
         if [] = v_bgp then bnds
         else
           let arg = (yojson_of_list yojson_of_bgp) v_bgp in
           let bnd = "bgp", arg in
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
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
         match v_encrypted_interconnect_router with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "encrypted_interconnect_router", arg in
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
    : google_compute_router -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router

[@@@deriving.end]

let bgp__advertised_ip_ranges ?description ~range () :
    bgp__advertised_ip_ranges =
  { description; range }

let bgp ?advertise_mode ?advertised_groups ?keepalive_interval
    ?(advertised_ip_ranges = []) ~asn () : bgp =
  {
    advertise_mode;
    advertised_groups;
    asn;
    keepalive_interval;
    advertised_ip_ranges;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_router ?description ?encrypted_interconnect_router
    ?id ?project ?region ?(bgp = []) ?timeouts ~name ~network () :
    google_compute_router =
  {
    description;
    encrypted_interconnect_router;
    id;
    name;
    network;
    project;
    region;
    bgp;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  encrypted_interconnect_router : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?encrypted_interconnect_router ?id ?project
    ?region ?(bgp = []) ?timeouts ~name ~network __id =
  let __type = "google_compute_router" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       encrypted_interconnect_router =
         Prop.computed __type __id "encrypted_interconnect_router";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router
        (google_compute_router ?description
           ?encrypted_interconnect_router ?id ?project ?region ~bgp
           ?timeouts ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?encrypted_interconnect_router
    ?id ?project ?region ?(bgp = []) ?timeouts ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?encrypted_interconnect_router ?id ?project
      ?region ~bgp ?timeouts ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
