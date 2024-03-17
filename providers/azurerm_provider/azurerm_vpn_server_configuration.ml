(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_vpn_server_configuration__azure_active_directory_authentication = {
  audience : string prop;  (** audience *)
  issuer : string prop;  (** issuer *)
  tenant : string prop;  (** tenant *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__azure_active_directory_authentication *)

type azurerm_vpn_server_configuration__client_revoked_certificate = {
  name : string prop;  (** name *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__client_revoked_certificate *)

type azurerm_vpn_server_configuration__client_root_certificate = {
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__client_root_certificate *)

type azurerm_vpn_server_configuration__ipsec_policy = {
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
(** azurerm_vpn_server_configuration__ipsec_policy *)

type azurerm_vpn_server_configuration__radius__client_root_certificate = {
  name : string prop;  (** name *)
  thumbprint : string prop;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__radius__client_root_certificate *)

type azurerm_vpn_server_configuration__radius__server = {
  address : string prop;  (** address *)
  score : float prop;  (** score *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__radius__server *)

type azurerm_vpn_server_configuration__radius__server_root_certificate = {
  name : string prop;  (** name *)
  public_cert_data : string prop;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__radius__server_root_certificate *)

type azurerm_vpn_server_configuration__radius = {
  client_root_certificate :
    azurerm_vpn_server_configuration__radius__client_root_certificate
    list;
  server : azurerm_vpn_server_configuration__radius__server list;
  server_root_certificate :
    azurerm_vpn_server_configuration__radius__server_root_certificate
    list;
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__radius *)

type azurerm_vpn_server_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__timeouts *)

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
    azurerm_vpn_server_configuration__azure_active_directory_authentication
    list;
  client_revoked_certificate :
    azurerm_vpn_server_configuration__client_revoked_certificate list;
  client_root_certificate :
    azurerm_vpn_server_configuration__client_root_certificate list;
  ipsec_policy : azurerm_vpn_server_configuration__ipsec_policy list;
  radius : azurerm_vpn_server_configuration__radius list;
  timeouts : azurerm_vpn_server_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  vpn_authentication_types : string list prop;
  vpn_protocols : string list prop;
}

let azurerm_vpn_server_configuration ?id ?tags ?vpn_protocols
    ?timeouts ~location ~name ~resource_group_name
    ~vpn_authentication_types ~azure_active_directory_authentication
    ~client_revoked_certificate ~client_root_certificate
    ~ipsec_policy ~radius __resource_id =
  let __resource_type = "azurerm_vpn_server_configuration" in
  let __resource =
    ({
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
      : azurerm_vpn_server_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_server_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       vpn_authentication_types =
         Prop.computed __resource_type __resource_id
           "vpn_authentication_types";
       vpn_protocols =
         Prop.computed __resource_type __resource_id "vpn_protocols";
     }
      : t)
  in
  __resource_attributes
