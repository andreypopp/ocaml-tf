(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling_policy = {
  max_nodes : float prop option; [@option]
  min_nodes : float prop option; [@option]
  mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling_policy) -> ()

let yojson_of_autoscaling_policy =
  (function
   | {
       max_nodes = v_max_nodes;
       min_nodes = v_min_nodes;
       mode = v_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_nodes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_nodes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_nodes", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : autoscaling_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling_policy

[@@@deriving.end]

type maintenance_window = { start_time : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | { start_time = v_start_time } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start_time in
         ("start_time", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type share_settings__project_map = {
  id : string prop;
  project_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_settings__project_map) -> ()

let yojson_of_share_settings__project_map =
  (function
   | { id = v_id; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : share_settings__project_map ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_settings__project_map

[@@@deriving.end]

type share_settings = {
  share_type : string prop;
  project_map : share_settings__project_map list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : share_settings) -> ()

let yojson_of_share_settings =
  (function
   | { share_type = v_share_type; project_map = v_project_map } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_project_map then bnds
         else
           let arg =
             (yojson_of_list yojson_of_share_settings__project_map)
               v_project_map
           in
           let bnd = "project_map", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_share_type in
         ("share_type", arg) :: bnds
       in
       `Assoc bnds
    : share_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_share_settings

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

type google_compute_node_group = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  initial_size : float prop option; [@option]
  maintenance_policy : string prop option; [@option]
  name : string prop option; [@option]
  node_template : string prop;
  project : string prop option; [@option]
  zone : string prop option; [@option]
  autoscaling_policy : autoscaling_policy list;
      [@default []] [@yojson_drop_default ( = )]
  maintenance_window : maintenance_window list;
      [@default []] [@yojson_drop_default ( = )]
  share_settings : share_settings list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_node_group) -> ()

let yojson_of_google_compute_node_group =
  (function
   | {
       description = v_description;
       id = v_id;
       initial_size = v_initial_size;
       maintenance_policy = v_maintenance_policy;
       name = v_name;
       node_template = v_node_template;
       project = v_project;
       zone = v_zone;
       autoscaling_policy = v_autoscaling_policy;
       maintenance_window = v_maintenance_window;
       share_settings = v_share_settings;
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
         if [] = v_share_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_share_settings)
               v_share_settings
           in
           let bnd = "share_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_maintenance_window then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maintenance_window)
               v_maintenance_window
           in
           let bnd = "maintenance_window", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_autoscaling_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscaling_policy)
               v_autoscaling_policy
           in
           let bnd = "autoscaling_policy", arg in
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_template in
         ("node_template", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maintenance_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "maintenance_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "initial_size", arg in
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
       `Assoc bnds
    : google_compute_node_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_node_group

[@@@deriving.end]

let autoscaling_policy ?max_nodes ?min_nodes ?mode () :
    autoscaling_policy =
  { max_nodes; min_nodes; mode }

let maintenance_window ~start_time () : maintenance_window =
  { start_time }

let share_settings__project_map ~id ~project_id () :
    share_settings__project_map =
  { id; project_id }

let share_settings ~share_type ~project_map () : share_settings =
  { share_type; project_map }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_node_group ?description ?id ?initial_size
    ?maintenance_policy ?name ?project ?zone
    ?(autoscaling_policy = []) ?(maintenance_window = [])
    ?(share_settings = []) ?timeouts ~node_template () :
    google_compute_node_group =
  {
    description;
    id;
    initial_size;
    maintenance_policy;
    name;
    node_template;
    project;
    zone;
    autoscaling_policy;
    maintenance_window;
    share_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  initial_size : float prop;
  maintenance_policy : string prop;
  name : string prop;
  node_template : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

let make ?description ?id ?initial_size ?maintenance_policy ?name
    ?project ?zone ?(autoscaling_policy = [])
    ?(maintenance_window = []) ?(share_settings = []) ?timeouts
    ~node_template __id =
  let __type = "google_compute_node_group" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       initial_size = Prop.computed __type __id "initial_size";
       maintenance_policy =
         Prop.computed __type __id "maintenance_policy";
       name = Prop.computed __type __id "name";
       node_template = Prop.computed __type __id "node_template";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_node_group
        (google_compute_node_group ?description ?id ?initial_size
           ?maintenance_policy ?name ?project ?zone
           ~autoscaling_policy ~maintenance_window ~share_settings
           ?timeouts ~node_template ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?initial_size
    ?maintenance_policy ?name ?project ?zone
    ?(autoscaling_policy = []) ?(maintenance_window = [])
    ?(share_settings = []) ?timeouts ~node_template __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?initial_size ?maintenance_policy ?name
      ?project ?zone ~autoscaling_policy ~maintenance_window
      ~share_settings ?timeouts ~node_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
