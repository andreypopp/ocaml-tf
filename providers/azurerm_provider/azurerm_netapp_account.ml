(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_account__active_directory = {
  dns_servers : string prop list;  (** dns_servers *)
  domain : string prop;  (** domain *)
  organizational_unit : string prop option; [@option]
      (** organizational_unit *)
  password : string prop;  (** password *)
  smb_server_name : string prop;  (** smb_server_name *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account__active_directory *)

type azurerm_netapp_account__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account__identity *)

type azurerm_netapp_account__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account__timeouts *)

type azurerm_netapp_account = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  active_directory : azurerm_netapp_account__active_directory list;
  identity : azurerm_netapp_account__identity list;
  timeouts : azurerm_netapp_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_account *)

let azurerm_netapp_account ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~active_directory ~identity __resource_id =
  let __resource_type = "azurerm_netapp_account" in
  let __resource =
    {
      id;
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
