(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nginx_deployment__frontend_private = {
  allocation_method : string prop;  (** allocation_method *)
  ip_address : string prop;  (** ip_address *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__frontend_private *)

type azurerm_nginx_deployment__frontend_public = {
  ip_address : string prop list option; [@option]  (** ip_address *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__frontend_public *)

type azurerm_nginx_deployment__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__identity *)

type azurerm_nginx_deployment__logging_storage_account = {
  container_name : string prop option; [@option]
      (** container_name *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__logging_storage_account *)

type azurerm_nginx_deployment__network_interface = {
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__network_interface *)

type azurerm_nginx_deployment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nginx_deployment__timeouts *)

type azurerm_nginx_deployment = {
  automatic_upgrade_channel : string prop option; [@option]
      (** automatic_upgrade_channel *)
  capacity : float prop option; [@option]  (** capacity *)
  diagnose_support_enabled : bool prop option; [@option]
      (** diagnose_support_enabled *)
  email : string prop option; [@option]  (** email *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  managed_resource_group : string prop option; [@option]
      (** managed_resource_group *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
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
    ?diagnose_support_enabled ?email ?id ?managed_resource_group
    ?tags ?timeouts ~location ~name ~resource_group_name ~sku
    ~frontend_private ~frontend_public ~identity
    ~logging_storage_account ~network_interface __resource_id =
  let __resource_type = "azurerm_nginx_deployment" in
  let __resource =
    {
      automatic_upgrade_channel;
      capacity;
      diagnose_support_enabled;
      email;
      id;
      location;
      managed_resource_group;
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
