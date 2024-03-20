(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type node_type_flexibility = {
  cpus : string prop option; [@option]
  memory : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_type_flexibility) -> ()

let yojson_of_node_type_flexibility =
  (function
   | { cpus = v_cpus; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_memory with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "memory", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpus", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_type_flexibility -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_type_flexibility

[@@@deriving.end]

type server_binding = { type_ : string prop [@key "type"] }
[@@deriving_inline yojson_of]

let _ = fun (_ : server_binding) -> ()

let yojson_of_server_binding =
  (function
   | { type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : server_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_server_binding

[@@@deriving.end]

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

type google_compute_node_template = {
  cpu_overcommit_type : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop option; [@option]
  node_affinity_labels : (string * string prop) list option;
      [@option]
  node_type : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  node_type_flexibility : node_type_flexibility list;
  server_binding : server_binding list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_node_template) -> ()

let yojson_of_google_compute_node_template =
  (function
   | {
       cpu_overcommit_type = v_cpu_overcommit_type;
       description = v_description;
       id = v_id;
       name = v_name;
       node_affinity_labels = v_node_affinity_labels;
       node_type = v_node_type;
       project = v_project;
       region = v_region;
       node_type_flexibility = v_node_type_flexibility;
       server_binding = v_server_binding;
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
           yojson_of_list yojson_of_server_binding v_server_binding
         in
         ("server_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_type_flexibility
             v_node_type_flexibility
         in
         ("node_type_flexibility", arg) :: bnds
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
         match v_node_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_affinity_labels with
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
             let bnd = "node_affinity_labels", arg in
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
         match v_cpu_overcommit_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_overcommit_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_node_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_node_template

[@@@deriving.end]

let node_type_flexibility ?cpus ?memory () : node_type_flexibility =
  { cpus; memory }

let server_binding ~type_ () : server_binding = { type_ }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_node_template ?cpu_overcommit_type ?description
    ?id ?name ?node_affinity_labels ?node_type ?project ?region
    ?timeouts ~node_type_flexibility ~server_binding () :
    google_compute_node_template =
  {
    cpu_overcommit_type;
    description;
    id;
    name;
    node_affinity_labels;
    node_type;
    project;
    region;
    node_type_flexibility;
    server_binding;
    timeouts;
  }

type t = {
  cpu_overcommit_type : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  node_affinity_labels : (string * string) list prop;
  node_type : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?cpu_overcommit_type ?description ?id ?name
    ?node_affinity_labels ?node_type ?project ?region ?timeouts
    ~node_type_flexibility ~server_binding __id =
  let __type = "google_compute_node_template" in
  let __attrs =
    ({
       cpu_overcommit_type =
         Prop.computed __type __id "cpu_overcommit_type";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       node_affinity_labels =
         Prop.computed __type __id "node_affinity_labels";
       node_type = Prop.computed __type __id "node_type";
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
      yojson_of_google_compute_node_template
        (google_compute_node_template ?cpu_overcommit_type
           ?description ?id ?name ?node_affinity_labels ?node_type
           ?project ?region ?timeouts ~node_type_flexibility
           ~server_binding ());
    attrs = __attrs;
  }

let register ?tf_module ?cpu_overcommit_type ?description ?id ?name
    ?node_affinity_labels ?node_type ?project ?region ?timeouts
    ~node_type_flexibility ~server_binding __id =
  let (r : _ Tf_core.resource) =
    make ?cpu_overcommit_type ?description ?id ?name
      ?node_affinity_labels ?node_type ?project ?region ?timeouts
      ~node_type_flexibility ~server_binding __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
