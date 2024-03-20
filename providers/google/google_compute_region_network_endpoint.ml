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

type google_compute_region_network_endpoint = {
  fqdn : string prop option; [@option]
  id : string prop option; [@option]
  ip_address : string prop option; [@option]
  port : float prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  region_network_endpoint_group : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_network_endpoint) -> ()

let yojson_of_google_compute_region_network_endpoint =
  (function
   | {
       fqdn = v_fqdn;
       id = v_id;
       ip_address = v_ip_address;
       port = v_port;
       project = v_project;
       region = v_region;
       region_network_endpoint_group =
         v_region_network_endpoint_group;
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
           yojson_of_prop yojson_of_string
             v_region_network_endpoint_group
         in
         ("region_network_endpoint_group", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
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
         match v_fqdn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fqdn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_region_network_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_network_endpoint

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_network_endpoint ?fqdn ?id ?ip_address
    ?project ?region ?timeouts ~port ~region_network_endpoint_group
    () : google_compute_region_network_endpoint =
  {
    fqdn;
    id;
    ip_address;
    port;
    project;
    region;
    region_network_endpoint_group;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  ip_address : string prop;
  port : float prop;
  project : string prop;
  region : string prop;
  region_network_endpoint_group : string prop;
}

let make ?fqdn ?id ?ip_address ?project ?region ?timeouts ~port
    ~region_network_endpoint_group __id =
  let __type = "google_compute_region_network_endpoint" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       ip_address = Prop.computed __type __id "ip_address";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       region_network_endpoint_group =
         Prop.computed __type __id "region_network_endpoint_group";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_network_endpoint
        (google_compute_region_network_endpoint ?fqdn ?id ?ip_address
           ?project ?region ?timeouts ~port
           ~region_network_endpoint_group ());
    attrs = __attrs;
  }

let register ?tf_module ?fqdn ?id ?ip_address ?project ?region
    ?timeouts ~port ~region_network_endpoint_group __id =
  let (r : _ Tf_core.resource) =
    make ?fqdn ?id ?ip_address ?project ?region ?timeouts ~port
      ~region_network_endpoint_group __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
