(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_active_directory_authentication = {
  audience : string prop;
  issuer : string prop;
  tenant : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azure_active_directory_authentication) -> ()

let yojson_of_azure_active_directory_authentication =
  (function
   | { audience = v_audience; issuer = v_issuer; tenant = v_tenant }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant in
         ("tenant", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_audience in
         ("audience", arg) :: bnds
       in
       `Assoc bnds
    : azure_active_directory_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azure_active_directory_authentication

[@@@deriving.end]

type client_revoked_certificate = {
  name : string prop;
  thumbprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_revoked_certificate) -> ()

let yojson_of_client_revoked_certificate =
  (function
   | { name = v_name; thumbprint = v_thumbprint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : client_revoked_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_revoked_certificate

[@@@deriving.end]

type client_root_certificate = {
  name : string prop;
  public_cert_data : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_root_certificate) -> ()

let yojson_of_client_root_certificate =
  (function
   | { name = v_name; public_cert_data = v_public_cert_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_cert_data
         in
         ("public_cert_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : client_root_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_root_certificate

[@@@deriving.end]

type ipsec_policy = {
  dh_group : string prop;
  ike_encryption : string prop;
  ike_integrity : string prop;
  ipsec_encryption : string prop;
  ipsec_integrity : string prop;
  pfs_group : string prop;
  sa_data_size_kilobytes : float prop;
  sa_lifetime_seconds : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ipsec_policy) -> ()

let yojson_of_ipsec_policy =
  (function
   | {
       dh_group = v_dh_group;
       ike_encryption = v_ike_encryption;
       ike_integrity = v_ike_integrity;
       ipsec_encryption = v_ipsec_encryption;
       ipsec_integrity = v_ipsec_integrity;
       pfs_group = v_pfs_group;
       sa_data_size_kilobytes = v_sa_data_size_kilobytes;
       sa_lifetime_seconds = v_sa_lifetime_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sa_lifetime_seconds
         in
         ("sa_lifetime_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_sa_data_size_kilobytes
         in
         ("sa_data_size_kilobytes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pfs_group in
         ("pfs_group", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipsec_integrity
         in
         ("ipsec_integrity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ipsec_encryption
         in
         ("ipsec_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ike_integrity in
         ("ike_integrity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ike_encryption
         in
         ("ike_encryption", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dh_group in
         ("dh_group", arg) :: bnds
       in
       `Assoc bnds
    : ipsec_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ipsec_policy

[@@@deriving.end]

type radius__client_root_certificate = {
  name : string prop;
  thumbprint : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : radius__client_root_certificate) -> ()

let yojson_of_radius__client_root_certificate =
  (function
   | { name = v_name; thumbprint = v_thumbprint } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thumbprint in
         ("thumbprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : radius__client_root_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_radius__client_root_certificate

[@@@deriving.end]

type radius__server = {
  address : string prop;
  score : float prop;
  secret : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : radius__server) -> ()

let yojson_of_radius__server =
  (function
   | { address = v_address; score = v_score; secret = v_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_score in
         ("score", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : radius__server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_radius__server

[@@@deriving.end]

type radius__server_root_certificate = {
  name : string prop;
  public_cert_data : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : radius__server_root_certificate) -> ()

let yojson_of_radius__server_root_certificate =
  (function
   | { name = v_name; public_cert_data = v_public_cert_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_public_cert_data
         in
         ("public_cert_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : radius__server_root_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_radius__server_root_certificate

[@@@deriving.end]

type radius = {
  client_root_certificate : radius__client_root_certificate list;
      [@default []] [@yojson_drop_default ( = )]
  server : radius__server list;
      [@default []] [@yojson_drop_default ( = )]
  server_root_certificate : radius__server_root_certificate list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : radius) -> ()

let yojson_of_radius =
  (function
   | {
       client_root_certificate = v_client_root_certificate;
       server = v_server;
       server_root_certificate = v_server_root_certificate;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_server_root_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_radius__server_root_certificate)
               v_server_root_certificate
           in
           let bnd = "server_root_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_server then bnds
         else
           let arg =
             (yojson_of_list yojson_of_radius__server) v_server
           in
           let bnd = "server", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_root_certificate then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_radius__client_root_certificate)
               v_client_root_certificate
           in
           let bnd = "client_root_certificate", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : radius -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_radius

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

type azurerm_vpn_server_configuration = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  vpn_authentication_types : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  vpn_protocols : string prop list option; [@option]
  azure_active_directory_authentication :
    azure_active_directory_authentication list;
      [@default []] [@yojson_drop_default ( = )]
  client_revoked_certificate : client_revoked_certificate list;
      [@default []] [@yojson_drop_default ( = )]
  client_root_certificate : client_root_certificate list;
      [@default []] [@yojson_drop_default ( = )]
  ipsec_policy : ipsec_policy list;
      [@default []] [@yojson_drop_default ( = )]
  radius : radius list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_vpn_server_configuration) -> ()

let yojson_of_azurerm_vpn_server_configuration =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       vpn_authentication_types = v_vpn_authentication_types;
       vpn_protocols = v_vpn_protocols;
       azure_active_directory_authentication =
         v_azure_active_directory_authentication;
       client_revoked_certificate = v_client_revoked_certificate;
       client_root_certificate = v_client_root_certificate;
       ipsec_policy = v_ipsec_policy;
       radius = v_radius;
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
         if [] = v_radius then bnds
         else
           let arg = (yojson_of_list yojson_of_radius) v_radius in
           let bnd = "radius", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ipsec_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ipsec_policy) v_ipsec_policy
           in
           let bnd = "ipsec_policy", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_root_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_root_certificate)
               v_client_root_certificate
           in
           let bnd = "client_root_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_client_revoked_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_client_revoked_certificate)
               v_client_revoked_certificate
           in
           let bnd = "client_revoked_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_azure_active_directory_authentication then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_azure_active_directory_authentication)
               v_azure_active_directory_authentication
           in
           let bnd = "azure_active_directory_authentication", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpn_protocols with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpn_protocols", arg in
             bnd :: bnds
       in
       let bnds =
         if [] = v_vpn_authentication_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_vpn_authentication_types
           in
           let bnd = "vpn_authentication_types", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_vpn_server_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_vpn_server_configuration

[@@@deriving.end]

let azure_active_directory_authentication ~audience ~issuer ~tenant
    () : azure_active_directory_authentication =
  { audience; issuer; tenant }

let client_revoked_certificate ~name ~thumbprint () :
    client_revoked_certificate =
  { name; thumbprint }

let client_root_certificate ~name ~public_cert_data () :
    client_root_certificate =
  { name; public_cert_data }

let ipsec_policy ~dh_group ~ike_encryption ~ike_integrity
    ~ipsec_encryption ~ipsec_integrity ~pfs_group
    ~sa_data_size_kilobytes ~sa_lifetime_seconds () : ipsec_policy =
  {
    dh_group;
    ike_encryption;
    ike_integrity;
    ipsec_encryption;
    ipsec_integrity;
    pfs_group;
    sa_data_size_kilobytes;
    sa_lifetime_seconds;
  }

let radius__client_root_certificate ~name ~thumbprint () :
    radius__client_root_certificate =
  { name; thumbprint }

let radius__server ~address ~score ~secret () : radius__server =
  { address; score; secret }

let radius__server_root_certificate ~name ~public_cert_data () :
    radius__server_root_certificate =
  { name; public_cert_data }

let radius ?(server = []) ~client_root_certificate
    ~server_root_certificate () : radius =
  { client_root_certificate; server; server_root_certificate }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_server_configuration ?id ?tags ?vpn_protocols
    ?(azure_active_directory_authentication = [])
    ?(ipsec_policy = []) ?(radius = []) ?timeouts ~location ~name
    ~resource_group_name ~vpn_authentication_types
    ~client_revoked_certificate ~client_root_certificate () :
    azurerm_vpn_server_configuration =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    vpn_authentication_types;
    vpn_protocols;
    azure_active_directory_authentication;
    client_revoked_certificate;
    client_root_certificate;
    ipsec_policy;
    radius;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vpn_authentication_types : string list prop;
  vpn_protocols : string list prop;
}

let make ?id ?tags ?vpn_protocols
    ?(azure_active_directory_authentication = [])
    ?(ipsec_policy = []) ?(radius = []) ?timeouts ~location ~name
    ~resource_group_name ~vpn_authentication_types
    ~client_revoked_certificate ~client_root_certificate __id =
  let __type = "azurerm_vpn_server_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       vpn_authentication_types =
         Prop.computed __type __id "vpn_authentication_types";
       vpn_protocols = Prop.computed __type __id "vpn_protocols";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_vpn_server_configuration
        (azurerm_vpn_server_configuration ?id ?tags ?vpn_protocols
           ~azure_active_directory_authentication ~ipsec_policy
           ~radius ?timeouts ~location ~name ~resource_group_name
           ~vpn_authentication_types ~client_revoked_certificate
           ~client_root_certificate ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?vpn_protocols
    ?(azure_active_directory_authentication = [])
    ?(ipsec_policy = []) ?(radius = []) ?timeouts ~location ~name
    ~resource_group_name ~vpn_authentication_types
    ~client_revoked_certificate ~client_root_certificate __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?vpn_protocols
      ~azure_active_directory_authentication ~ipsec_policy ~radius
      ?timeouts ~location ~name ~resource_group_name
      ~vpn_authentication_types ~client_revoked_certificate
      ~client_root_certificate __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
