(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cluster__autoscaling_config = {
  cpu_target : float prop;
  max_nodes : float prop;
  min_nodes : float prop;
  storage_target : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster__autoscaling_config) -> ()

let yojson_of_cluster__autoscaling_config =
  (function
   | {
       cpu_target = v_cpu_target;
       max_nodes = v_max_nodes;
       min_nodes = v_min_nodes;
       storage_target = v_storage_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "storage_target", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_nodes in
         ("min_nodes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_nodes in
         ("max_nodes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_cpu_target in
         ("cpu_target", arg) :: bnds
       in
       `Assoc bnds
    : cluster__autoscaling_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster__autoscaling_config

[@@@deriving.end]

type cluster = {
  cluster_id : string prop;
  kms_key_name : string prop option; [@option]
  num_nodes : float prop option; [@option]
  storage_type : string prop option; [@option]
  zone : string prop option; [@option]
  autoscaling_config : cluster__autoscaling_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cluster) -> ()

let yojson_of_cluster =
  (function
   | {
       cluster_id = v_cluster_id;
       kms_key_name = v_kms_key_name;
       num_nodes = v_num_nodes;
       storage_type = v_storage_type;
       zone = v_zone;
       autoscaling_config = v_autoscaling_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cluster__autoscaling_config)
               v_autoscaling_config
           in
           let bnd = "autoscaling_config", arg in
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
         match v_storage_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_num_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "num_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cluster

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; read = v_read; update = v_update } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_bigtable_instance = {
  deletion_protection : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  instance_type : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  cluster : cluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_bigtable_instance) -> ()

let yojson_of_google_bigtable_instance =
  (function
   | {
       deletion_protection = v_deletion_protection;
       display_name = v_display_name;
       id = v_id;
       instance_type = v_instance_type;
       labels = v_labels;
       name = v_name;
       project = v_project;
       cluster = v_cluster;
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
         if Stdlib.( = ) [] v_cluster then bnds
         else
           let arg = (yojson_of_list yojson_of_cluster) v_cluster in
           let bnd = "cluster", arg in
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
         match v_instance_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_type", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_protection with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "deletion_protection", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_bigtable_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_bigtable_instance

[@@@deriving.end]

let cluster__autoscaling_config ?storage_target ~cpu_target
    ~max_nodes ~min_nodes () : cluster__autoscaling_config =
  { cpu_target; max_nodes; min_nodes; storage_target }

let cluster ?kms_key_name ?num_nodes ?storage_type ?zone
    ?(autoscaling_config = []) ~cluster_id () : cluster =
  {
    cluster_id;
    kms_key_name;
    num_nodes;
    storage_type;
    zone;
    autoscaling_config;
  }

let timeouts ?create ?read ?update () : timeouts =
  { create; read; update }

let google_bigtable_instance ?deletion_protection ?display_name ?id
    ?instance_type ?labels ?project ?(cluster = []) ?timeouts ~name
    () : google_bigtable_instance =
  {
    deletion_protection;
    display_name;
    id;
    instance_type;
    labels;
    name;
    project;
    cluster;
    timeouts;
  }

type t = {
  tf_name : string;
  deletion_protection : bool prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instance_type : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?deletion_protection ?display_name ?id ?instance_type
    ?labels ?project ?(cluster = []) ?timeouts ~name __id =
  let __type = "google_bigtable_instance" in
  let __attrs =
    ({
       tf_name = __id;
       deletion_protection =
         Prop.computed __type __id "deletion_protection";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       instance_type = Prop.computed __type __id "instance_type";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_bigtable_instance
        (google_bigtable_instance ?deletion_protection ?display_name
           ?id ?instance_type ?labels ?project ~cluster ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?deletion_protection ?display_name ?id
    ?instance_type ?labels ?project ?(cluster = []) ?timeouts ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?deletion_protection ?display_name ?id ?instance_type
      ?labels ?project ~cluster ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
