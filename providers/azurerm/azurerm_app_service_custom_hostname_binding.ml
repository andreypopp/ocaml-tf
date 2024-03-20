(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_custom_hostname_binding = {
  app_service_name : string prop;  (** app_service_name *)
  hostname : string prop;  (** hostname *)
  id : string prop option; [@option]  (** id *)
  resource_group_name : string prop;  (** resource_group_name *)
  ssl_state : string prop option; [@option]  (** ssl_state *)
  thumbprint : string prop option; [@option]  (** thumbprint *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_custom_hostname_binding *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_custom_hostname_binding ?id ?ssl_state
    ?thumbprint ?timeouts ~app_service_name ~hostname
    ~resource_group_name () :
    azurerm_app_service_custom_hostname_binding =
  {
    app_service_name;
    hostname;
    id;
    resource_group_name;
    ssl_state;
    thumbprint;
    timeouts;
  }

type t = {
  app_service_name : string prop;
  hostname : string prop;
  id : string prop;
  resource_group_name : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
  virtual_ip : string prop;
}

let make ?id ?ssl_state ?thumbprint ?timeouts ~app_service_name
    ~hostname ~resource_group_name __id =
  let __type = "azurerm_app_service_custom_hostname_binding" in
  let __attrs =
    ({
       app_service_name =
         Prop.computed __type __id "app_service_name";
       hostname = Prop.computed __type __id "hostname";
       id = Prop.computed __type __id "id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       ssl_state = Prop.computed __type __id "ssl_state";
       thumbprint = Prop.computed __type __id "thumbprint";
       virtual_ip = Prop.computed __type __id "virtual_ip";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_custom_hostname_binding
        (azurerm_app_service_custom_hostname_binding ?id ?ssl_state
           ?thumbprint ?timeouts ~app_service_name ~hostname
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ssl_state ?thumbprint ?timeouts
    ~app_service_name ~hostname ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ssl_state ?thumbprint ?timeouts ~app_service_name
      ~hostname ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
