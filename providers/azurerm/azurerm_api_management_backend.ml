(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type credentials__authorization = {
  parameter : string prop option; [@option]
  scheme : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : credentials__authorization) -> ()

let yojson_of_credentials__authorization =
  (function
   | { parameter = v_parameter; scheme = v_scheme } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scheme with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scheme", arg in
             bnd :: bnds
       in
       let bnds =
         match v_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parameter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : credentials__authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credentials__authorization

[@@@deriving.end]

type credentials = {
  certificate : string prop list option; [@option]
  header : (string * string prop) list option; [@option]
  query : (string * string prop) list option; [@option]
  authorization : credentials__authorization list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : credentials) -> ()

let yojson_of_credentials =
  (function
   | {
       certificate = v_certificate;
       header = v_header;
       query = v_query;
       authorization = v_authorization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_authorization then bnds
         else
           let arg =
             (yojson_of_list yojson_of_credentials__authorization)
               v_authorization
           in
           let bnd = "authorization", arg in
           bnd :: bnds
       in
       let bnds =
         match v_query with
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
             let bnd = "query", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header with
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
             let bnd = "header", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : credentials -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_credentials

[@@@deriving.end]

type proxy = {
  password : string prop option; [@option]
  url : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy) -> ()

let yojson_of_proxy =
  (function
   | { password = v_password; url = v_url; username = v_username } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy

[@@@deriving.end]

type service_fabric_cluster__server_x509_name = {
  issuer_certificate_thumbprint : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_fabric_cluster__server_x509_name) -> ()

let yojson_of_service_fabric_cluster__server_x509_name =
  (function
   | {
       issuer_certificate_thumbprint =
         v_issuer_certificate_thumbprint;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_issuer_certificate_thumbprint
         in
         ("issuer_certificate_thumbprint", arg) :: bnds
       in
       `Assoc bnds
    : service_fabric_cluster__server_x509_name ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_fabric_cluster__server_x509_name

[@@@deriving.end]

type service_fabric_cluster = {
  client_certificate_id : string prop option; [@option]
  client_certificate_thumbprint : string prop option; [@option]
  management_endpoints : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  max_partition_resolution_retries : float prop;
  server_certificate_thumbprints : string prop list option; [@option]
  server_x509_name : service_fabric_cluster__server_x509_name list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_fabric_cluster) -> ()

let yojson_of_service_fabric_cluster =
  (function
   | {
       client_certificate_id = v_client_certificate_id;
       client_certificate_thumbprint =
         v_client_certificate_thumbprint;
       management_endpoints = v_management_endpoints;
       max_partition_resolution_retries =
         v_max_partition_resolution_retries;
       server_certificate_thumbprints =
         v_server_certificate_thumbprints;
       server_x509_name = v_server_x509_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_server_x509_name then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_fabric_cluster__server_x509_name)
               v_server_x509_name
           in
           let bnd = "server_x509_name", arg in
           bnd :: bnds
       in
       let bnds =
         match v_server_certificate_thumbprints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "server_certificate_thumbprints", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_max_partition_resolution_retries
         in
         ("max_partition_resolution_retries", arg) :: bnds
       in
       let bnds =
         if [] = v_management_endpoints then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_management_endpoints
           in
           let bnd = "management_endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         match v_client_certificate_thumbprint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_thumbprint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_fabric_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_fabric_cluster

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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

type tls = {
  validate_certificate_chain : bool prop option; [@option]
  validate_certificate_name : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tls) -> ()

let yojson_of_tls =
  (function
   | {
       validate_certificate_chain = v_validate_certificate_chain;
       validate_certificate_name = v_validate_certificate_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validate_certificate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_certificate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_validate_certificate_chain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "validate_certificate_chain", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tls

[@@@deriving.end]

type azurerm_api_management_backend = {
  api_management_name : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  resource_id : string prop option; [@option]
  title : string prop option; [@option]
  url : string prop;
  credentials : credentials list;
      [@default []] [@yojson_drop_default ( = )]
  proxy : proxy list; [@default []] [@yojson_drop_default ( = )]
  service_fabric_cluster : service_fabric_cluster list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
  tls : tls list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_backend) -> ()

let yojson_of_azurerm_api_management_backend =
  (function
   | {
       api_management_name = v_api_management_name;
       description = v_description;
       id = v_id;
       name = v_name;
       protocol = v_protocol;
       resource_group_name = v_resource_group_name;
       resource_id = v_resource_id;
       title = v_title;
       url = v_url;
       credentials = v_credentials;
       proxy = v_proxy;
       service_fabric_cluster = v_service_fabric_cluster;
       timeouts = v_timeouts;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tls then bnds
         else
           let arg = (yojson_of_list yojson_of_tls) v_tls in
           let bnd = "tls", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_service_fabric_cluster then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_fabric_cluster)
               v_service_fabric_cluster
           in
           let bnd = "service_fabric_cluster", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_proxy then bnds
         else
           let arg = (yojson_of_list yojson_of_proxy) v_proxy in
           let bnd = "proxy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_credentials then bnds
         else
           let arg =
             (yojson_of_list yojson_of_credentials) v_credentials
           in
           let bnd = "credentials", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_backend ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_backend

[@@@deriving.end]

let credentials__authorization ?parameter ?scheme () :
    credentials__authorization =
  { parameter; scheme }

let credentials ?certificate ?header ?query ?(authorization = []) ()
    : credentials =
  { certificate; header; query; authorization }

let proxy ?password ~url ~username () : proxy =
  { password; url; username }

let service_fabric_cluster__server_x509_name
    ~issuer_certificate_thumbprint ~name () :
    service_fabric_cluster__server_x509_name =
  { issuer_certificate_thumbprint; name }

let service_fabric_cluster ?client_certificate_id
    ?client_certificate_thumbprint ?server_certificate_thumbprints
    ~management_endpoints ~max_partition_resolution_retries
    ~server_x509_name () : service_fabric_cluster =
  {
    client_certificate_id;
    client_certificate_thumbprint;
    management_endpoints;
    max_partition_resolution_retries;
    server_certificate_thumbprints;
    server_x509_name;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let tls ?validate_certificate_chain ?validate_certificate_name () :
    tls =
  { validate_certificate_chain; validate_certificate_name }

let azurerm_api_management_backend ?description ?id ?resource_id
    ?title ?(credentials = []) ?(proxy = [])
    ?(service_fabric_cluster = []) ?timeouts ?(tls = [])
    ~api_management_name ~name ~protocol ~resource_group_name ~url ()
    : azurerm_api_management_backend =
  {
    api_management_name;
    description;
    id;
    name;
    protocol;
    resource_group_name;
    resource_id;
    title;
    url;
    credentials;
    proxy;
    service_fabric_cluster;
    timeouts;
    tls;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  protocol : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
  title : string prop;
  url : string prop;
}

let make ?description ?id ?resource_id ?title ?(credentials = [])
    ?(proxy = []) ?(service_fabric_cluster = []) ?timeouts
    ?(tls = []) ~api_management_name ~name ~protocol
    ~resource_group_name ~url __id =
  let __type = "azurerm_api_management_backend" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protocol = Prop.computed __type __id "protocol";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_id = Prop.computed __type __id "resource_id";
       title = Prop.computed __type __id "title";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_backend
        (azurerm_api_management_backend ?description ?id ?resource_id
           ?title ~credentials ~proxy ~service_fabric_cluster
           ?timeouts ~tls ~api_management_name ~name ~protocol
           ~resource_group_name ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?resource_id ?title
    ?(credentials = []) ?(proxy = []) ?(service_fabric_cluster = [])
    ?timeouts ?(tls = []) ~api_management_name ~name ~protocol
    ~resource_group_name ~url __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?resource_id ?title ~credentials ~proxy
      ~service_fabric_cluster ?timeouts ~tls ~api_management_name
      ~name ~protocol ~resource_group_name ~url __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
