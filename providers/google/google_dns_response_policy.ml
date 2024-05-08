(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type gke_clusters = { gke_cluster_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : gke_clusters) -> ()

let yojson_of_gke_clusters =
  (function
   | { gke_cluster_name = v_gke_cluster_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gke_cluster_name
         in
         ("gke_cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : gke_clusters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gke_clusters

[@@@deriving.end]

type networks = { network_url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : networks) -> ()

let yojson_of_networks =
  (function
   | { network_url = v_network_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       `Assoc bnds
    : networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networks

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

type google_dns_response_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  response_policy_name : string prop;
  gke_clusters : gke_clusters list;
      [@default []] [@yojson_drop_default ( = )]
  networks : networks list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_response_policy) -> ()

let yojson_of_google_dns_response_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       project = v_project;
       response_policy_name = v_response_policy_name;
       gke_clusters = v_gke_clusters;
       networks = v_networks;
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
         if [] = v_networks then bnds
         else
           let arg =
             (yojson_of_list yojson_of_networks) v_networks
           in
           let bnd = "networks", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_gke_clusters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_gke_clusters) v_gke_clusters
           in
           let bnd = "gke_clusters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_response_policy_name
         in
         ("response_policy_name", arg) :: bnds
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
    : google_dns_response_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_response_policy

[@@@deriving.end]

let gke_clusters ~gke_cluster_name () : gke_clusters =
  { gke_cluster_name }

let networks ~network_url () : networks = { network_url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_response_policy ?description ?id ?project
    ?(gke_clusters = []) ?(networks = []) ?timeouts
    ~response_policy_name () : google_dns_response_policy =
  {
    description;
    id;
    project;
    response_policy_name;
    gke_clusters;
    networks;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  project : string prop;
  response_policy_name : string prop;
}

let make ?description ?id ?project ?(gke_clusters = [])
    ?(networks = []) ?timeouts ~response_policy_name __id =
  let __type = "google_dns_response_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       response_policy_name =
         Prop.computed __type __id "response_policy_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_response_policy
        (google_dns_response_policy ?description ?id ?project
           ~gke_clusters ~networks ?timeouts ~response_policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project
    ?(gke_clusters = []) ?(networks = []) ?timeouts
    ~response_policy_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ~gke_clusters ~networks ?timeouts
      ~response_policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
