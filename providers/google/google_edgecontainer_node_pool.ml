(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type local_disk_encryption = {
  kms_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : local_disk_encryption) -> ()

let yojson_of_local_disk_encryption =
  (function
   | { kms_key = v_kms_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : local_disk_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_local_disk_encryption

[@@@deriving.end]

type node_config = {
  labels : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_config) -> ()

let yojson_of_node_config =
  (function
   | { labels = v_labels } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : node_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_config

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

type google_edgecontainer_node_pool = {
  cluster : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  location : string prop;
  machine_filter : string prop option; [@option]
  name : string prop;
  node_count : float prop;
  node_location : string prop;
  project : string prop option; [@option]
  local_disk_encryption : local_disk_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  node_config : node_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_edgecontainer_node_pool) -> ()

let yojson_of_google_edgecontainer_node_pool =
  (function
   | {
       cluster = v_cluster;
       id = v_id;
       labels = v_labels;
       location = v_location;
       machine_filter = v_machine_filter;
       name = v_name;
       node_count = v_node_count;
       node_location = v_node_location;
       project = v_project;
       local_disk_encryption = v_local_disk_encryption;
       node_config = v_node_config;
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
         if Stdlib.( = ) [] v_node_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_node_config) v_node_config
           in
           let bnd = "node_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_local_disk_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_local_disk_encryption)
               v_local_disk_encryption
           in
           let bnd = "local_disk_encryption", arg in
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
         let arg = yojson_of_prop yojson_of_string v_node_location in
         ("node_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_machine_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_filter", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : google_edgecontainer_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_edgecontainer_node_pool

[@@@deriving.end]

let local_disk_encryption ?kms_key () : local_disk_encryption =
  { kms_key }

let node_config ?labels () : node_config = { labels }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_edgecontainer_node_pool ?id ?labels ?machine_filter
    ?project ?(local_disk_encryption = []) ?(node_config = [])
    ?timeouts ~cluster ~location ~name ~node_count ~node_location ()
    : google_edgecontainer_node_pool =
  {
    cluster;
    id;
    labels;
    location;
    machine_filter;
    name;
    node_count;
    node_location;
    project;
    local_disk_encryption;
    node_config;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster : string prop;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  machine_filter : string prop;
  name : string prop;
  node_count : float prop;
  node_location : string prop;
  node_version : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

let make ?id ?labels ?machine_filter ?project
    ?(local_disk_encryption = []) ?(node_config = []) ?timeouts
    ~cluster ~location ~name ~node_count ~node_location __id =
  let __type = "google_edgecontainer_node_pool" in
  let __attrs =
    ({
       tf_name = __id;
       cluster = Prop.computed __type __id "cluster";
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       machine_filter = Prop.computed __type __id "machine_filter";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_location = Prop.computed __type __id "node_location";
       node_version = Prop.computed __type __id "node_version";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgecontainer_node_pool
        (google_edgecontainer_node_pool ?id ?labels ?machine_filter
           ?project ~local_disk_encryption ~node_config ?timeouts
           ~cluster ~location ~name ~node_count ~node_location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?machine_filter ?project
    ?(local_disk_encryption = []) ?(node_config = []) ?timeouts
    ~cluster ~location ~name ~node_count ~node_location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?machine_filter ?project ~local_disk_encryption
      ~node_config ?timeouts ~cluster ~location ~name ~node_count
      ~node_location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
