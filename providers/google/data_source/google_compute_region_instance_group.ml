(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type instances__named_ports = {
  name : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instances__named_ports) -> ()

let yojson_of_instances__named_ports =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : instances__named_ports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instances__named_ports

[@@@deriving.end]

type instances = {
  instance : string prop;
  named_ports : instances__named_ports list;
      [@default []] [@yojson_drop_default ( = )]
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : instances) -> ()

let yojson_of_instances =
  (function
   | {
       instance = v_instance;
       named_ports = v_named_ports;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         if [] = v_named_ports then bnds
         else
           let arg =
             (yojson_of_list yojson_of_instances__named_ports)
               v_named_ports
           in
           let bnd = "named_ports", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance in
         ("instance", arg) :: bnds
       in
       `Assoc bnds
    : instances -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_instances

[@@@deriving.end]

type google_compute_region_instance_group = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  self_link : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_region_instance_group) -> ()

let yojson_of_google_compute_region_instance_group =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       self_link = v_self_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_self_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "self_link", arg in
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
       `Assoc bnds
    : google_compute_region_instance_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_region_instance_group

[@@@deriving.end]

let google_compute_region_instance_group ?id ?name ?project ?region
    ?self_link () : google_compute_region_instance_group =
  { id; name; project; region; self_link }

type t = {
  tf_name : string;
  id : string prop;
  instances : instances list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  size : float prop;
}

let make ?id ?name ?project ?region ?self_link __id =
  let __type = "google_compute_region_instance_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_instance_group
        (google_compute_region_instance_group ?id ?name ?project
           ?region ?self_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?region ?self_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?region ?self_link __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
