(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type secondary_ip_range = {
  ip_cidr_range : string prop;
  range_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : secondary_ip_range) -> ()

let yojson_of_secondary_ip_range =
  (function
   | { ip_cidr_range = v_ip_cidr_range; range_name = v_range_name }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range_name in
         ("range_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_cidr_range in
         ("ip_cidr_range", arg) :: bnds
       in
       `Assoc bnds
    : secondary_ip_range -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secondary_ip_range

[@@@deriving.end]

type google_compute_subnetwork = {
  id : string prop option; [@option]
  name : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  self_link : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_subnetwork) -> ()

let yojson_of_google_compute_subnetwork =
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
    : google_compute_subnetwork -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_subnetwork

[@@@deriving.end]

let google_compute_subnetwork ?id ?name ?project ?region ?self_link
    () : google_compute_subnetwork =
  { id; name; project; region; self_link }

type t = {
  tf_name : string;
  description : string prop;
  gateway_address : string prop;
  id : string prop;
  internal_ipv6_prefix : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  network : string prop;
  private_ip_google_access : bool prop;
  project : string prop;
  region : string prop;
  secondary_ip_range : secondary_ip_range list prop;
  self_link : string prop;
}

let make ?id ?name ?project ?region ?self_link __id =
  let __type = "google_compute_subnetwork" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       gateway_address = Prop.computed __type __id "gateway_address";
       id = Prop.computed __type __id "id";
       internal_ipv6_prefix =
         Prop.computed __type __id "internal_ipv6_prefix";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       private_ip_google_access =
         Prop.computed __type __id "private_ip_google_access";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       secondary_ip_range =
         Prop.computed __type __id "secondary_ip_range";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_subnetwork
        (google_compute_subnetwork ?id ?name ?project ?region
           ?self_link ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?project ?region ?self_link __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?project ?region ?self_link __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
