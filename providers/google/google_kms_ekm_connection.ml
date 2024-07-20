(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_resolvers__server_certificates = {
  raw_der : string prop;
  subject_alternative_dns_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_resolvers__server_certificates) -> ()

let yojson_of_service_resolvers__server_certificates =
  (function
   | {
       raw_der = v_raw_der;
       subject_alternative_dns_names =
         v_subject_alternative_dns_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subject_alternative_dns_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subject_alternative_dns_names", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_raw_der in
         ("raw_der", arg) :: bnds
       in
       `Assoc bnds
    : service_resolvers__server_certificates ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_resolvers__server_certificates

[@@@deriving.end]

type service_resolvers = {
  endpoint_filter : string prop option; [@option]
  hostname : string prop;
  service_directory_service : string prop;
  server_certificates : service_resolvers__server_certificates list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_resolvers) -> ()

let yojson_of_service_resolvers =
  (function
   | {
       endpoint_filter = v_endpoint_filter;
       hostname = v_hostname;
       service_directory_service = v_service_directory_service;
       server_certificates = v_server_certificates;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_server_certificates then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_resolvers__server_certificates)
               v_server_certificates
           in
           let bnd = "server_certificates", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_service_directory_service
         in
         ("service_directory_service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       let bnds =
         match v_endpoint_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_resolvers -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_resolvers

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

type google_kms_ekm_connection = {
  crypto_space_path : string prop option; [@option]
  etag : string prop option; [@option]
  id : string prop option; [@option]
  key_management_mode : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  service_resolvers : service_resolvers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_ekm_connection) -> ()

let yojson_of_google_kms_ekm_connection =
  (function
   | {
       crypto_space_path = v_crypto_space_path;
       etag = v_etag;
       id = v_id;
       key_management_mode = v_key_management_mode;
       location = v_location;
       name = v_name;
       project = v_project;
       service_resolvers = v_service_resolvers;
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
         if Stdlib.( = ) [] v_service_resolvers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_resolvers)
               v_service_resolvers
           in
           let bnd = "service_resolvers", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_key_management_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_management_mode", arg in
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
         match v_etag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "etag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_crypto_space_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crypto_space_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_kms_ekm_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_ekm_connection

[@@@deriving.end]

let service_resolvers__server_certificates
    ?subject_alternative_dns_names ~raw_der () :
    service_resolvers__server_certificates =
  { raw_der; subject_alternative_dns_names }

let service_resolvers ?endpoint_filter ~hostname
    ~service_directory_service ~server_certificates () :
    service_resolvers =
  {
    endpoint_filter;
    hostname;
    service_directory_service;
    server_certificates;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_kms_ekm_connection ?crypto_space_path ?etag ?id
    ?key_management_mode ?project ?timeouts ~location ~name
    ~service_resolvers () : google_kms_ekm_connection =
  {
    crypto_space_path;
    etag;
    id;
    key_management_mode;
    location;
    name;
    project;
    service_resolvers;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  crypto_space_path : string prop;
  etag : string prop;
  id : string prop;
  key_management_mode : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

let make ?crypto_space_path ?etag ?id ?key_management_mode ?project
    ?timeouts ~location ~name ~service_resolvers __id =
  let __type = "google_kms_ekm_connection" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       crypto_space_path =
         Prop.computed __type __id "crypto_space_path";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       key_management_mode =
         Prop.computed __type __id "key_management_mode";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_ekm_connection
        (google_kms_ekm_connection ?crypto_space_path ?etag ?id
           ?key_management_mode ?project ?timeouts ~location ~name
           ~service_resolvers ());
    attrs = __attrs;
  }

let register ?tf_module ?crypto_space_path ?etag ?id
    ?key_management_mode ?project ?timeouts ~location ~name
    ~service_resolvers __id =
  let (r : _ Tf_core.resource) =
    make ?crypto_space_path ?etag ?id ?key_management_mode ?project
      ?timeouts ~location ~name ~service_resolvers __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
