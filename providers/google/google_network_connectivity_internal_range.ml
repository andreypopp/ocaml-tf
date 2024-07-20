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

type google_network_connectivity_internal_range = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  ip_cidr_range : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  network : string prop;
  overlaps : string prop list option; [@option]
  peering : string prop;
  prefix_length : float prop option; [@option]
  project : string prop option; [@option]
  target_cidr_range : string prop list option; [@option]
  usage : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_connectivity_internal_range) -> ()

let yojson_of_google_network_connectivity_internal_range =
  (function
   | {
       description = v_description;
       id = v_id;
       ip_cidr_range = v_ip_cidr_range;
       labels = v_labels;
       name = v_name;
       network = v_network;
       overlaps = v_overlaps;
       peering = v_peering;
       prefix_length = v_prefix_length;
       project = v_project;
       target_cidr_range = v_target_cidr_range;
       usage = v_usage;
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
         let arg = yojson_of_prop yojson_of_string v_usage in
         ("usage", arg) :: bnds
       in
       let bnds =
         match v_target_cidr_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "target_cidr_range", arg in
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
         match v_prefix_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "prefix_length", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_peering in
         ("peering", arg) :: bnds
       in
       let bnds =
         match v_overlaps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "overlaps", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
         match v_ip_cidr_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_cidr_range", arg in
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
    : google_network_connectivity_internal_range ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_connectivity_internal_range

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_connectivity_internal_range ?description ?id
    ?ip_cidr_range ?labels ?overlaps ?prefix_length ?project
    ?target_cidr_range ?timeouts ~name ~network ~peering ~usage () :
    google_network_connectivity_internal_range =
  {
    description;
    id;
    ip_cidr_range;
    labels;
    name;
    network;
    overlaps;
    peering;
    prefix_length;
    project;
    target_cidr_range;
    usage;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  ip_cidr_range : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  overlaps : string list prop;
  peering : string prop;
  prefix_length : float prop;
  project : string prop;
  target_cidr_range : string list prop;
  terraform_labels : (string * string) list prop;
  usage : string prop;
  users : string list prop;
}

let make ?description ?id ?ip_cidr_range ?labels ?overlaps
    ?prefix_length ?project ?target_cidr_range ?timeouts ~name
    ~network ~peering ~usage __id =
  let __type = "google_network_connectivity_internal_range" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       overlaps = Prop.computed __type __id "overlaps";
       peering = Prop.computed __type __id "peering";
       prefix_length = Prop.computed __type __id "prefix_length";
       project = Prop.computed __type __id "project";
       target_cidr_range =
         Prop.computed __type __id "target_cidr_range";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       usage = Prop.computed __type __id "usage";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_connectivity_internal_range
        (google_network_connectivity_internal_range ?description ?id
           ?ip_cidr_range ?labels ?overlaps ?prefix_length ?project
           ?target_cidr_range ?timeouts ~name ~network ~peering
           ~usage ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ip_cidr_range ?labels
    ?overlaps ?prefix_length ?project ?target_cidr_range ?timeouts
    ~name ~network ~peering ~usage __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ip_cidr_range ?labels ?overlaps
      ?prefix_length ?project ?target_cidr_range ?timeouts ~name
      ~network ~peering ~usage __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
