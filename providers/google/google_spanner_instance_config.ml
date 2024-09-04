(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type replicas = {
  default_leader_location : bool prop option; [@option]
  location : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replicas) -> ()

let yojson_of_replicas =
  (function
   | {
       default_leader_location = v_default_leader_location;
       location = v_location;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_leader_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "default_leader_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replicas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replicas

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

type google_spanner_instance_config = {
  base_config : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  replicas : replicas list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_spanner_instance_config) -> ()

let yojson_of_google_spanner_instance_config =
  (function
   | {
       base_config = v_base_config;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       name = v_name;
       project = v_project;
       replicas = v_replicas;
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
         if Stdlib.( = ) [] v_replicas then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replicas) v_replicas
           in
           let bnd = "replicas", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_base_config with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "base_config", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_spanner_instance_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_spanner_instance_config

[@@@deriving.end]

let replicas ?default_leader_location ?location ?type_ () : replicas
    =
  { default_leader_location; location; type_ }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_spanner_instance_config ?base_config ?id ?labels ?name
    ?project ?timeouts ~display_name ~replicas () :
    google_spanner_instance_config =
  {
    base_config;
    display_name;
    id;
    labels;
    name;
    project;
    replicas;
    timeouts;
  }

type t = {
  tf_name : string;
  base_config : string prop;
  config_type : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?base_config ?id ?labels ?name ?project ?timeouts
    ~display_name ~replicas __id =
  let __type = "google_spanner_instance_config" in
  let __attrs =
    ({
       tf_name = __id;
       base_config = Prop.computed __type __id "base_config";
       config_type = Prop.computed __type __id "config_type";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
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
      yojson_of_google_spanner_instance_config
        (google_spanner_instance_config ?base_config ?id ?labels
           ?name ?project ?timeouts ~display_name ~replicas ());
    attrs = __attrs;
  }

let register ?tf_module ?base_config ?id ?labels ?name ?project
    ?timeouts ~display_name ~replicas __id =
  let (r : _ Tf_core.resource) =
    make ?base_config ?id ?labels ?name ?project ?timeouts
      ~display_name ~replicas __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
