(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nginx_deployment__frontend_private = {
  allocation_method : string;  (** allocation_method *)
  ip_address : string;  (** ip_address *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__frontend_private *)

type azurerm_nginx_deployment__frontend_public = {
  ip_address : string list option; [@option]  (** ip_address *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__frontend_public *)

type azurerm_nginx_deployment__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__identity *)

type azurerm_nginx_deployment__logging_storage_account = {
  container_name : string option; [@option]  (** container_name *)
  name : string option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__logging_storage_account *)

type azurerm_nginx_deployment__network_interface = {
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__network_interface *)

type azurerm_nginx_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__timeouts *)

type azurerm_nginx_deployment = {
  automatic_upgrade_channel : string option; [@option]
      (** automatic_upgrade_channel *)
  capacity : float option; [@option]  (** capacity *)
  diagnose_support_enabled : bool option; [@option]
      (** diagnose_support_enabled *)
  email : string option; [@option]  (** email *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  frontend_private : azurerm_nginx_deployment__frontend_private list;
  frontend_public : azurerm_nginx_deployment__frontend_public list;
  identity : azurerm_nginx_deployment__identity list;
  logging_storage_account :
    azurerm_nginx_deployment__logging_storage_account list;
  network_interface :
    azurerm_nginx_deployment__network_interface list;
  timeouts : azurerm_nginx_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment *)

let azurerm_nginx_deployment ?automatic_upgrade_channel ?capacity
    ?diagnose_support_enabled ?email ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~frontend_private ~frontend_public
    ~identity ~logging_storage_account ~network_interface
    __resource_id =
  let __resource_type = "azurerm_nginx_deployment" in
  let __resource =
    {
      automatic_upgrade_channel;
      capacity;
      diagnose_support_enabled;
      email;
      location;
      name;
      resource_group_name;
      sku;
      tags;
      frontend_private;
      frontend_public;
      identity;
      logging_storage_account;
      network_interface;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nginx_deployment __resource);
  ()
