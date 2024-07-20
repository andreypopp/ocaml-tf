(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subnetworks = {
  description : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  network : string prop;
  network_self_link : string prop;
  private_ip_google_access : bool prop;
  self_link : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnetworks) -> ()

let yojson_of_subnetworks =
  (function
   | {
       description = v_description;
       ip_cidr_range = v_ip_cidr_range;
       name = v_name;
       network = v_network;
       network_self_link = v_network_self_link;
       private_ip_google_access = v_private_ip_google_access;
       self_link = v_self_link;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_private_ip_google_access
         in
         ("private_ip_google_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_self_link
         in
         ("network_self_link", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_ip_cidr_range in
         ("ip_cidr_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : subnetworks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnetworks

[@@@deriving.end]

type google_compute_subnetworks = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_subnetworks) -> ()

let yojson_of_google_compute_subnetworks =
  (function
   | {
       filter = v_filter;
       id = v_id;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_subnetworks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_subnetworks

[@@@deriving.end]

let google_compute_subnetworks ?filter ?id ?project ?region () :
    google_compute_subnetworks =
  { filter; id; project; region }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  project : string prop;
  region : string prop;
  subnetworks : subnetworks list prop;
}

let make ?filter ?id ?project ?region __id =
  let __type = "google_compute_subnetworks" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       subnetworks = Prop.computed __type __id "subnetworks";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_subnetworks
        (google_compute_subnetworks ?filter ?id ?project ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ?project ?region __id =
  let (r : _ Tf_core.resource) =
    make ?filter ?id ?project ?region __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
