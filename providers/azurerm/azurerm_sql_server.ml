(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type threat_detection_policy = {
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
(** threat_detection_policy *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  identity : identity list;
  threat_detection_policy : threat_detection_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sql_server *)

let identity ~type_ () : identity = { type_ }

let threat_detection_policy ?disabled_alerts ?email_account_admins
    ?email_addresses ?retention_days ?state
    ?storage_account_access_key ?storage_endpoint () :
    threat_detection_policy =
  {
    disabled_alerts;
    email_account_admins;
    email_addresses;
    retention_days;
    state;
    storage_account_access_key;
    storage_endpoint;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sql_server ?connection_policy ?id ?tags ?timeouts
    ~administrator_login ~administrator_login_password ~location
    ~name ~resource_group_name ~version ~identity
    ~threat_detection_policy () : azurerm_sql_server =
  {
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

let make ?connection_policy ?id ?tags ?timeouts ~administrator_login
    ~administrator_login_password ~location ~name
    ~resource_group_name ~version ~identity ~threat_detection_policy
    __id =
  let __type = "azurerm_sql_server" in
  let __attrs =
    ({
       administrator_login =
         Prop.computed __type __id "administrator_login";
       administrator_login_password =
         Prop.computed __type __id "administrator_login_password";
       connection_policy =
         Prop.computed __type __id "connection_policy";
       fully_qualified_domain_name =
         Prop.computed __type __id "fully_qualified_domain_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sql_server
        (azurerm_sql_server ?connection_policy ?id ?tags ?timeouts
           ~administrator_login ~administrator_login_password
           ~location ~name ~resource_group_name ~version ~identity
           ~threat_detection_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?connection_policy ?id ?tags ?timeouts
    ~administrator_login ~administrator_login_password ~location
    ~name ~resource_group_name ~version ~identity
    ~threat_detection_policy __id =
  let (r : _ Tf_core.resource) =
    make ?connection_policy ?id ?tags ?timeouts ~administrator_login
      ~administrator_login_password ~location ~name
      ~resource_group_name ~version ~identity
      ~threat_detection_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
