(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_account__active_directory = {
  dns_servers : string list;  (** dns_servers *)
  domain : string;  (** domain *)
  organizational_unit : string option; [@option]
      (** organizational_unit *)
  password : string;  (** password *)
  smb_server_name : string;  (** smb_server_name *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account__active_directory *)

type azurerm_netapp_account__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account__identity *)

type azurerm_netapp_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account__timeouts *)

type azurerm_netapp_account = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  active_directory : azurerm_netapp_account__active_directory list;
  identity : azurerm_netapp_account__identity list;
  timeouts : azurerm_netapp_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_account *)

let azurerm_netapp_account ?tags ?timeouts ~location ~name
    ~resource_group_name ~active_directory ~identity __resource_id =
  let __resource_type = "azurerm_netapp_account" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      tags;
      active_directory;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_account __resource);
  ()
