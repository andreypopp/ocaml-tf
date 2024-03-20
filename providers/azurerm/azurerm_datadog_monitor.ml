(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type datadog_organization = {
  api_key : string prop;  (** api_key *)
  application_key : string prop;  (** application_key *)
  enterprise_app_id : string prop option; [@option]
      (** enterprise_app_id *)
  linking_auth_code : string prop option; [@option]
      (** linking_auth_code *)
  linking_client_id : string prop option; [@option]
      (** linking_client_id *)
  redirect_uri : string prop option; [@option]  (** redirect_uri *)
}
[@@deriving yojson_of]
(** datadog_organization *)

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type user = {
  email : string prop;  (** email *)
  name : string prop;  (** name *)
  phone_number : string prop option; [@option]  (** phone_number *)
}
[@@deriving yojson_of]
(** user *)

type azurerm_datadog_monitor = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  monitoring_enabled : bool prop option; [@option]
      (** monitoring_enabled *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  datadog_organization : datadog_organization list;
  identity : identity list;
  timeouts : timeouts option;
  user : user list;
}
[@@deriving yojson_of]
(** azurerm_datadog_monitor *)

let datadog_organization ?enterprise_app_id ?linking_auth_code
    ?linking_client_id ?redirect_uri ~api_key ~application_key () :
    datadog_organization =
  {
    api_key;
    application_key;
    enterprise_app_id;
    linking_auth_code;
    linking_client_id;
    redirect_uri;
  }

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let user ?phone_number ~email ~name () : user =
  { email; name; phone_number }

let azurerm_datadog_monitor ?id ?monitoring_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~datadog_organization ~identity ~user () :
    azurerm_datadog_monitor =
  {
    id;
    location;
    monitoring_enabled;
    name;
    resource_group_name;
    sku_name;
    tags;
    datadog_organization;
    identity;
    timeouts;
    user;
  }

type t = {
  id : string prop;
  location : string prop;
  marketplace_subscription_status : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?monitoring_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~datadog_organization ~identity
    ~user __id =
  let __type = "azurerm_datadog_monitor" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       marketplace_subscription_status =
         Prop.computed __type __id "marketplace_subscription_status";
       monitoring_enabled =
         Prop.computed __type __id "monitoring_enabled";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_datadog_monitor
        (azurerm_datadog_monitor ?id ?monitoring_enabled ?tags
           ?timeouts ~location ~name ~resource_group_name ~sku_name
           ~datadog_organization ~identity ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?monitoring_enabled ?tags ?timeouts
    ~location ~name ~resource_group_name ~sku_name
    ~datadog_organization ~identity ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ?monitoring_enabled ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku_name ~datadog_organization ~identity
      ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
