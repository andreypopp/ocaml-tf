(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_compute_target_pool = {
  backup_pool : string prop option; [@option]
  description : string prop option; [@option]
  failover_ratio : float prop option; [@option]
  health_checks : string prop list option; [@option]
  id : string prop option; [@option]
  instances : string prop list option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  session_affinity : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_target_pool) -> ()

let yojson_of_google_compute_target_pool =
  (function
   | {
       backup_pool = v_backup_pool;
       description = v_description;
       failover_ratio = v_failover_ratio;
       health_checks = v_health_checks;
       id = v_id;
       instances = v_instances;
       name = v_name;
       project = v_project;
       region = v_region;
       session_affinity = v_session_affinity;
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
         match v_session_affinity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "session_affinity", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instances", arg in
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
         match v_health_checks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "health_checks", arg in
             bnd :: bnds
       in
       let bnds =
         match v_failover_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "failover_ratio", arg in
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
         match v_backup_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backup_pool", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_target_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_target_pool

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_pool ?backup_pool ?description
    ?failover_ratio ?health_checks ?id ?instances ?project ?region
    ?session_affinity ?timeouts ~name () : google_compute_target_pool
    =
  {
    backup_pool;
    description;
    failover_ratio;
    health_checks;
    id;
    instances;
    name;
    project;
    region;
    session_affinity;
    timeouts;
  }

type t = {
  backup_pool : string prop;
  description : string prop;
  failover_ratio : float prop;
  health_checks : string list prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  session_affinity : string prop;
}

let make ?backup_pool ?description ?failover_ratio ?health_checks ?id
    ?instances ?project ?region ?session_affinity ?timeouts ~name
    __id =
  let __type = "google_compute_target_pool" in
  let __attrs =
    ({
       backup_pool = Prop.computed __type __id "backup_pool";
       description = Prop.computed __type __id "description";
       failover_ratio = Prop.computed __type __id "failover_ratio";
       health_checks = Prop.computed __type __id "health_checks";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       session_affinity =
         Prop.computed __type __id "session_affinity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_pool
        (google_compute_target_pool ?backup_pool ?description
           ?failover_ratio ?health_checks ?id ?instances ?project
           ?region ?session_affinity ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?backup_pool ?description ?failover_ratio
    ?health_checks ?id ?instances ?project ?region ?session_affinity
    ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?backup_pool ?description ?failover_ratio ?health_checks ?id
      ?instances ?project ?region ?session_affinity ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
