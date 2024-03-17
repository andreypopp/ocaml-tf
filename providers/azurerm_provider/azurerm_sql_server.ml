(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_sql_server__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_sql_server__identity *)

type azurerm_sql_server__threat_detection_policy = {
  disabled_alerts : string prop list option; [@option]
      (** disabled_alerts *)
  email_account_admins : bool prop option; [@option]
      (** email_account_admins *)
  email_addresses : string prop list option; [@option]
      (** email_addresses *)
  retention_days : float prop option; [@option]
      (** retention_days *)
  state : string prop option; [@option]  (** state *)
  storage_account_access_key : string prop option; [@option]
      (** storage_account_access_key *)
  storage_endpoint : string prop option; [@option]
      (** storage_endpoint *)
}
[@@deriving yojson_of]
(** azurerm_sql_server__threat_detection_policy *)

type azurerm_sql_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_sql_server__timeouts *)

type azurerm_sql_server = {
  administrator_login : string prop;  (** administrator_login *)
  administrator_login_password : string prop;
      (** administrator_login_password *)
  connection_policy : string prop option; [@option]
      (** connection_policy *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  version : string prop;  (** version *)
  identity : azurerm_sql_server__identity list;
  threat_detection_policy :
    azurerm_sql_server__threat_detection_policy list;
  timeouts : azurerm_sql_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_server *)

type t = {
  administrator_login : string prop;
  administrator_login_password : string prop;
  connection_policy : string prop;
  fully_qualified_domain_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let azurerm_sql_server ?connection_policy ?id ?tags ?timeouts
    ~administrator_login ~administrator_login_password ~location
    ~name ~resource_group_name ~version ~identity
    ~threat_detection_policy __resource_id =
  let __resource_type = "azurerm_sql_server" in
  let __resource =
    ({
       administrator_login;
       administrator_login_password;
       connection_policy;
       id;
       location;
       name;
       resource_group_name;
       tags;
       version;
       identity;
       threat_detection_policy;
       timeouts;
     }
      : azurerm_sql_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_sql_server __resource);
  let __resource_attributes =
    ({
       administrator_login =
         Prop.computed __resource_type __resource_id
           "administrator_login";
       administrator_login_password =
         Prop.computed __resource_type __resource_id
           "administrator_login_password";
       connection_policy =
         Prop.computed __resource_type __resource_id
           "connection_policy";
       fully_qualified_domain_name =
         Prop.computed __resource_type __resource_id
           "fully_qualified_domain_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
