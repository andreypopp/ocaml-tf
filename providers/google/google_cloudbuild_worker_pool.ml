(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_config = {
  peered_network : string prop;
  peered_network_ip_range : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       peered_network = v_peered_network;
       peered_network_ip_range = v_peered_network_ip_range;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_peered_network_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peered_network_ip_range", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_peered_network
         in
         ("peered_network", arg) :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

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

type worker_config = {
  disk_size_gb : float prop option; [@option]
  machine_type : string prop option; [@option]
  no_external_ip : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : worker_config) -> ()

let yojson_of_worker_config =
  (function
   | {
       disk_size_gb = v_disk_size_gb;
       machine_type = v_machine_type;
       no_external_ip = v_no_external_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_no_external_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_external_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : worker_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_worker_config

[@@@deriving.end]

type google_cloudbuild_worker_pool = {
  annotations : (string * string prop) list option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  worker_config : worker_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloudbuild_worker_pool) -> ()

let yojson_of_google_cloudbuild_worker_pool =
  (function
   | {
       annotations = v_annotations;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       network_config = v_network_config;
       timeouts = v_timeouts;
       worker_config = v_worker_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_worker_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_worker_config) v_worker_config
           in
           let bnd = "worker_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloudbuild_worker_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloudbuild_worker_pool

[@@@deriving.end]

let network_config ?peered_network_ip_range ~peered_network () :
    network_config =
  { peered_network; peered_network_ip_range }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let worker_config ?disk_size_gb ?machine_type ?no_external_ip () :
    worker_config =
  { disk_size_gb; machine_type; no_external_ip }

let google_cloudbuild_worker_pool ?annotations ?display_name ?id
    ?project ?(network_config = []) ?timeouts ?(worker_config = [])
    ~location ~name () : google_cloudbuild_worker_pool =
  {
    annotations;
    display_name;
    id;
    location;
    name;
    project;
    network_config;
    timeouts;
    worker_config;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?display_name ?id ?project
    ?(network_config = []) ?timeouts ?(worker_config = []) ~location
    ~name __id =
  let __type = "google_cloudbuild_worker_pool" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
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
      yojson_of_google_cloudbuild_worker_pool
        (google_cloudbuild_worker_pool ?annotations ?display_name ?id
           ?project ~network_config ?timeouts ~worker_config
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?display_name ?id ?project
    ?(network_config = []) ?timeouts ?(worker_config = []) ~location
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?display_name ?id ?project ~network_config
      ?timeouts ~worker_config ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
