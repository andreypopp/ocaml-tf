(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_vpn_server_configuration__azure_active_directory_authentication = {
  audience : string;  (** audience *)
  issuer : string;  (** issuer *)
  tenant : string;  (** tenant *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__azure_active_directory_authentication *)

type azurerm_vpn_server_configuration__client_revoked_certificate = {
  name : string;  (** name *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__client_revoked_certificate *)

type azurerm_vpn_server_configuration__client_root_certificate = {
  name : string;  (** name *)
  public_cert_data : string;  (** public_cert_data *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__client_root_certificate *)

type azurerm_vpn_server_configuration__ipsec_policy = {
  dh_group : string;  (** dh_group *)
  ike_encryption : string;  (** ike_encryption *)
  ike_integrity : string;  (** ike_integrity *)
  ipsec_encryption : string;  (** ipsec_encryption *)
  ipsec_integrity : string;  (** ipsec_integrity *)
  pfs_group : string;  (** pfs_group *)
  sa_data_size_kilobytes : float;  (** sa_data_size_kilobytes *)
  sa_lifetime_seconds : float;  (** sa_lifetime_seconds *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__ipsec_policy *)

type azurerm_vpn_server_configuration__radius__client_root_certificate = {
  name : string;  (** name *)
  thumbprint : string;  (** thumbprint *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__radius__client_root_certificate *)

type azurerm_vpn_server_configuration__radius__server = {
  address : string;  (** address *)
  score : float;  (** score *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__radius__server *)

type azurerm_vpn_server_configuration__radius__server_root_certificate = {
  name : string;  (** name *)
  public_cert_data : string;  (** public_cert_data *)
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_vpn_server_configuration__timeouts *)

type azurerm_vpn_server_configuration = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpn_authentication_types : string list;
      (** vpn_authentication_types *)
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

let azurerm_vpn_server_configuration ?tags ?timeouts ~location ~name
    ~resource_group_name ~vpn_authentication_types
    ~azure_active_directory_authentication
    ~client_revoked_certificate ~client_root_certificate
    ~ipsec_policy ~radius __resource_id =
  let __resource_type = "azurerm_vpn_server_configuration" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      tags;
      vpn_authentication_types;
      azure_active_directory_authentication;
      client_revoked_certificate;
      client_root_certificate;
      ipsec_policy;
      radius;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_vpn_server_configuration __resource);
  ()
