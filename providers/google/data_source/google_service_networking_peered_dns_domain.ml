(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_networking_peered_dns_domain = {
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  project : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_networking_peered_dns_domain) -> ()

let yojson_of_google_service_networking_peered_dns_domain =
  (function
   | {
       id = v_id;
       name = v_name;
       network = v_network;
       project = v_project;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
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
    : google_service_networking_peered_dns_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_networking_peered_dns_domain

[@@@deriving.end]

let google_service_networking_peered_dns_domain ?id ~name ~network
    ~project ~service () :
    google_service_networking_peered_dns_domain =
  { id; name; network; project; service }

type t = {
  tf_name : string;
  dns_suffix : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  parent : string prop;
  project : string prop;
  service : string prop;
}

let make ?id ~name ~network ~project ~service __id =
  let __type = "google_service_networking_peered_dns_domain" in
  let __attrs =
    ({
       tf_name = __id;
       dns_suffix = Prop.computed __type __id "dns_suffix";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       parent = Prop.computed __type __id "parent";
       project = Prop.computed __type __id "project";
       service = Prop.computed __type __id "service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_networking_peered_dns_domain
        (google_service_networking_peered_dns_domain ?id ~name
           ~network ~project ~service ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~network ~project ~service __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~network ~project ~service __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
