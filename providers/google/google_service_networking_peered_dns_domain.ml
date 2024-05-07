(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type google_service_networking_peered_dns_domain = {
  dns_suffix : string prop;
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  service : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_networking_peered_dns_domain) -> ()

let yojson_of_google_service_networking_peered_dns_domain =
  (function
   | {
       dns_suffix = v_dns_suffix;
       id = v_id;
       name = v_name;
       network = v_network;
       project = v_project;
       service = v_service;
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
         match v_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dns_suffix in
         ("dns_suffix", arg) :: bnds
       in
       `Assoc bnds
    : google_service_networking_peered_dns_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_networking_peered_dns_domain

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let google_service_networking_peered_dns_domain ?id ?project ?service
    ?timeouts ~dns_suffix ~name ~network () :
    google_service_networking_peered_dns_domain =
  { dns_suffix; id; name; network; project; service; timeouts }

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

let make ?id ?project ?service ?timeouts ~dns_suffix ~name ~network
    __id =
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
        (google_service_networking_peered_dns_domain ?id ?project
           ?service ?timeouts ~dns_suffix ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?service ?timeouts ~dns_suffix
    ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?service ?timeouts ~dns_suffix ~name ~network
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
