(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authority = { issuer : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : authority) -> ()

let yojson_of_authority =
  (function
   | { issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       `Assoc bnds
    : authority -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authority

[@@@deriving.end]

type endpoint__gke_cluster = { resource_link : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint__gke_cluster) -> ()

let yojson_of_endpoint__gke_cluster =
  (function
   | { resource_link = v_resource_link } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_link in
         ("resource_link", arg) :: bnds
       in
       `Assoc bnds
    : endpoint__gke_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint__gke_cluster

[@@@deriving.end]

type endpoint = { gke_cluster : endpoint__gke_cluster list }
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoint) -> ()

let yojson_of_endpoint =
  (function
   | { gke_cluster = v_gke_cluster } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_endpoint__gke_cluster
             v_gke_cluster
         in
         ("gke_cluster", arg) :: bnds
       in
       `Assoc bnds
    : endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoint

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

type google_gke_hub_membership = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  membership_id : string prop;
  project : string prop option; [@option]
  authority : authority list;
  endpoint : endpoint list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gke_hub_membership) -> ()

let yojson_of_google_gke_hub_membership =
  (function
   | {
       id = v_id;
       labels = v_labels;
       location = v_location;
       membership_id = v_membership_id;
       project = v_project;
       authority = v_authority;
       endpoint = v_endpoint;
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
         let arg = yojson_of_list yojson_of_endpoint v_endpoint in
         ("endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_authority v_authority in
         ("authority", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_membership_id in
         ("membership_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_gke_hub_membership -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gke_hub_membership

[@@@deriving.end]

let authority ~issuer () : authority = { issuer }

let endpoint__gke_cluster ~resource_link () : endpoint__gke_cluster =
  { resource_link }

let endpoint ?(gke_cluster = []) () : endpoint = { gke_cluster }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_hub_membership ?id ?labels ?location ?project
    ?(authority = []) ?(endpoint = []) ?timeouts ~membership_id () :
    google_gke_hub_membership =
  {
    id;
    labels;
    location;
    membership_id;
    project;
    authority;
    endpoint;
    timeouts;
  }

type t = {
  tf_name : string;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  membership_id : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?location ?project ?(authority = [])
    ?(endpoint = []) ?timeouts ~membership_id __id =
  let __type = "google_gke_hub_membership" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       membership_id = Prop.computed __type __id "membership_id";
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
      yojson_of_google_gke_hub_membership
        (google_gke_hub_membership ?id ?labels ?location ?project
           ~authority ~endpoint ?timeouts ~membership_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?location ?project
    ?(authority = []) ?(endpoint = []) ?timeouts ~membership_id __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?location ?project ~authority ~endpoint
      ?timeouts ~membership_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
