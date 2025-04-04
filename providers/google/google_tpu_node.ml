(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type scheduling_config = { preemptible : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : scheduling_config) -> ()

let yojson_of_scheduling_config =
  (function
   | { preemptible = v_preemptible } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_preemptible in
         ("preemptible", arg) :: bnds
       in
       `Assoc bnds
    : scheduling_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_scheduling_config

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

type network_endpoints = {
  ip_address : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_endpoints) -> ()

let yojson_of_network_endpoints =
  (function
   | { ip_address = v_ip_address; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : network_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_endpoints

[@@@deriving.end]

type google_tpu_node = {
  accelerator_type : string prop;
  cidr_block : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  network : string prop option; [@option]
  project : string prop option; [@option]
  tensorflow_version : string prop;
  use_service_networking : bool prop option; [@option]
  zone : string prop option; [@option]
  scheduling_config : scheduling_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tpu_node) -> ()

let yojson_of_google_tpu_node =
  (function
   | {
       accelerator_type = v_accelerator_type;
       cidr_block = v_cidr_block;
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       network = v_network;
       project = v_project;
       tensorflow_version = v_tensorflow_version;
       use_service_networking = v_use_service_networking;
       zone = v_zone;
       scheduling_config = v_scheduling_config;
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
         if Stdlib.( = ) [] v_scheduling_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_scheduling_config)
               v_scheduling_config
           in
           let bnd = "scheduling_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_service_networking with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_service_networking", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_tensorflow_version
         in
         ("tensorflow_version", arg) :: bnds
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
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
       let bnds =
         match v_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       `Assoc bnds
    : google_tpu_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tpu_node

[@@@deriving.end]

let scheduling_config ~preemptible () : scheduling_config =
  { preemptible }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_tpu_node ?cidr_block ?description ?id ?labels ?network
    ?project ?use_service_networking ?zone ?(scheduling_config = [])
    ?timeouts ~accelerator_type ~name ~tensorflow_version () :
    google_tpu_node =
  {
    accelerator_type;
    cidr_block;
    description;
    id;
    labels;
    name;
    network;
    project;
    tensorflow_version;
    use_service_networking;
    zone;
    scheduling_config;
    timeouts;
  }

type t = {
  tf_name : string;
  accelerator_type : string prop;
  cidr_block : string prop;
  description : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  network : string prop;
  network_endpoints : network_endpoints list prop;
  project : string prop;
  service_account : string prop;
  tensorflow_version : string prop;
  terraform_labels : string Tf_core.assoc prop;
  use_service_networking : bool prop;
  zone : string prop;
}

let make ?cidr_block ?description ?id ?labels ?network ?project
    ?use_service_networking ?zone ?(scheduling_config = []) ?timeouts
    ~accelerator_type ~name ~tensorflow_version __id =
  let __type = "google_tpu_node" in
  let __attrs =
    ({
       tf_name = __id;
       accelerator_type =
         Prop.computed __type __id "accelerator_type";
       cidr_block = Prop.computed __type __id "cidr_block";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       network_endpoints =
         Prop.computed __type __id "network_endpoints";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
       tensorflow_version =
         Prop.computed __type __id "tensorflow_version";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       use_service_networking =
         Prop.computed __type __id "use_service_networking";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tpu_node
        (google_tpu_node ?cidr_block ?description ?id ?labels
           ?network ?project ?use_service_networking ?zone
           ~scheduling_config ?timeouts ~accelerator_type ~name
           ~tensorflow_version ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr_block ?description ?id ?labels ?network
    ?project ?use_service_networking ?zone ?(scheduling_config = [])
    ?timeouts ~accelerator_type ~name ~tensorflow_version __id =
  let (r : _ Tf_core.resource) =
    make ?cidr_block ?description ?id ?labels ?network ?project
      ?use_service_networking ?zone ~scheduling_config ?timeouts
      ~accelerator_type ~name ~tensorflow_version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
