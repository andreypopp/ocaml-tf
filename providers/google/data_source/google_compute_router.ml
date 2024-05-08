(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp__advertised_ip_ranges = {
  description : string prop;
  range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp__advertised_ip_ranges) -> ()

let yojson_of_bgp__advertised_ip_ranges =
  (function
   | { description = v_description; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range in
         ("range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : bgp__advertised_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp__advertised_ip_ranges

[@@@deriving.end]

type bgp = {
  advertise_mode : string prop;
  advertised_groups : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  advertised_ip_ranges : bgp__advertised_ip_ranges list;
      [@default []] [@yojson_drop_default ( = )]
  asn : float prop;
  keepalive_interval : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bgp) -> ()

let yojson_of_bgp =
  (function
   | {
       advertise_mode = v_advertise_mode;
       advertised_groups = v_advertised_groups;
       advertised_ip_ranges = v_advertised_ip_ranges;
       asn = v_asn;
       keepalive_interval = v_keepalive_interval;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_keepalive_interval
         in
         ("keepalive_interval", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_asn in
         ("asn", arg) :: bnds
       in
       let bnds =
         if [] = v_advertised_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bgp__advertised_ip_ranges)
               v_advertised_ip_ranges
           in
           let bnd = "advertised_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_advertised_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_advertised_groups
           in
           let bnd = "advertised_groups", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_advertise_mode
         in
         ("advertise_mode", arg) :: bnds
       in
       `Assoc bnds
    : bgp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bgp

[@@@deriving.end]

type google_compute_router = {
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router) -> ()

let yojson_of_google_compute_router =
  (function
   | {
       id = v_id;
       name = v_name;
       network = v_network;
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
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : google_compute_router -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router

[@@@deriving.end]

let google_compute_router ?id ?project ?region ~name ~network () :
    google_compute_router =
  { id; name; network; project; region }

type t = {
  tf_name : string;
  bgp : bgp list prop;
  creation_timestamp : string prop;
  description : string prop;
  encrypted_interconnect_router : bool prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
}

let make ?id ?project ?region ~name ~network __id =
  let __type = "google_compute_router" in
  let __attrs =
    ({
       tf_name = __id;
       bgp = Prop.computed __type __id "bgp";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       encrypted_interconnect_router =
         Prop.computed __type __id "encrypted_interconnect_router";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
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
      yojson_of_google_compute_router
        (google_compute_router ?id ?project ?region ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name ~network __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
