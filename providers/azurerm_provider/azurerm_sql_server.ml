(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_sql_server__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_sql_server__identity *)

type azurerm_sql_server__threat_detection_policy = {
  disabled_alerts : string list option; [@option]
      (** disabled_alerts *)
  email_account_admins : bool option; [@option]
      (** email_account_admins *)
  email_addresses : string list option; [@option]
      (** email_addresses *)
  retention_days : float option; [@option]  (** retention_days *)
  state : string option; [@option]  (** state *)
  storage_account_access_key : string option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string option; [@option]  (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_sql_server__threat_detection_policy *)

type azurerm_sql_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_server__timeouts *)

type azurerm_sql_server = {
  administrator_login : string;  (** administrator_login *)
  administrator_login_password : string;
      (** administrator_login_password *)
  connection_policy : string option; [@option]
      (** connection_policy *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string;  (** version *)
  identity : azurerm_sql_server__identity list;
  threat_detection_policy :
    azurerm_sql_server__threat_detection_policy list;
  timeouts : azurerm_sql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_server *)

let azurerm_sql_server ?connection_policy ?tags ?timeouts
    ~administrator_login ~administrator_login_password ~location
    ~name ~resource_group_name ~version ~identity
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_sql_server" in
  let __resource =
    {
      administrator_login;
      administrator_login_password;
      connection_policy;
      location;
      name;
      resource_group_name;
      tags;
      version;
      identity;
      threat_detection_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_server __resource);
  ()
