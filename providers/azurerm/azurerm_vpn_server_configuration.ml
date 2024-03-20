(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type azure_active_directory_authentication = {
  audience : string prop;  (** audience *)
  issuer : string prop;  (** issuer *)
  tenant : string prop;  (** tenant *)
}
[@@deriving yojson_of]
(** azure_active_directory_authentication *)

type client_revoked_certificate = {
  name : string prop;  (** name *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** client_revoked_certificate *)

type client_root_certificate = {
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** client_root_certificate *)

type ipsec_policy = {
  dh_group : string prop;  (** dh_group *)
  ike_encryption : string prop;  (** ike_encryption *)
  ike_integrity : string prop;  (** ike_integrity *)
  ipsec_encryption : string prop;  (** ipsec_encryption *)
  ipsec_integrity : string prop;  (** ipsec_integrity *)
  pfs_group : string prop;  (** pfs_group *)
  sa_data_size_kilobytes : float prop;  (** sa_data_size_kilobytes *)
  sa_lifetime_seconds : float prop;  (** sa_lifetime_seconds *)
}
[@@deriving yojson_of]
(** ipsec_policy *)

type radius__client_root_certificate = {
  name : string prop;  (** name *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** radius__client_root_certificate *)

type radius__server = {
  address : string prop;  (** address *)
  score : float prop;  (** score *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]
(** radius__server *)

type radius__server_root_certificate = {
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** radius__server_root_certificate *)

type radius = {
  client_root_certificate : radius__client_root_certificate list;
  server : radius__server list;
  server_root_certificate : radius__server_root_certificate list;
}
[@@deriving yojson_of]
(** radius *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_vpn_server_configuration = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  vpn_authentication_types : string prop list;
      (** vpn_authentication_types *)
  vpn_protocols : string prop list option; [@option]
      (** vpn_protocols *)
  azure_active_directory_authentication :
    azure_active_directory_authentication list;
  client_revoked_certificate : client_revoked_certificate list;
  client_root_certificate : client_root_certificate list;
  ipsec_policy : ipsec_policy list;
  radius : radius list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration *)

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

let radius ~client_root_certificate ~server ~server_root_certificate
    () : radius =
  { client_root_certificate; server; server_root_certificate }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_vpn_server_configuration ?id ?tags ?vpn_protocols
    ?timeouts ~location ~name ~resource_group_name
    ~vpn_authentication_types ~azure_active_directory_authentication
    ~client_revoked_certificate ~client_root_certificate
    ~ipsec_policy ~radius () : azurerm_vpn_server_configuration =
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
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vpn_authentication_types : string list prop;
  vpn_protocols : string list prop;
}

let make ?id ?tags ?vpn_protocols ?timeouts ~location ~name
    ~resource_group_name ~vpn_authentication_types
    ~azure_active_directory_authentication
    ~client_revoked_certificate ~client_root_certificate
    ~ipsec_policy ~radius __id =
  let __type = "azurerm_vpn_server_configuration" in
  let __attrs =
    ({
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
           ?timeouts ~location ~name ~resource_group_name
           ~vpn_authentication_types
           ~azure_active_directory_authentication
           ~client_revoked_certificate ~client_root_certificate
           ~ipsec_policy ~radius ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?vpn_protocols ?timeouts ~location
    ~name ~resource_group_name ~vpn_authentication_types
    ~azure_active_directory_authentication
    ~client_revoked_certificate ~client_root_certificate
    ~ipsec_policy ~radius __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?vpn_protocols ?timeouts ~location ~name
      ~resource_group_name ~vpn_authentication_types
      ~azure_active_directory_authentication
      ~client_revoked_certificate ~client_root_certificate
      ~ipsec_policy ~radius __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
