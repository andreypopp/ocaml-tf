(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_iothub_shared_access_policy = {
  device_connect : bool prop option; [@option]  (** device_connect *)
  id : string prop option; [@option]  (** id *)
  iothub_name : string prop;  (** iothub_name *)
  name : string prop;  (** name *)
  registry_read : bool prop option; [@option]  (** registry_read *)
  registry_write : bool prop option; [@option]  (** registry_write *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_connect : bool prop option; [@option]
      (** service_connect *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_shared_access_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_shared_access_policy ?device_connect ?id
    ?registry_read ?registry_write ?service_connect ?timeouts
    ~iothub_name ~name ~resource_group_name () :
    azurerm_iothub_shared_access_policy =
  {
    device_connect;
    id;
    iothub_name;
    name;
    registry_read;
    registry_write;
    resource_group_name;
    service_connect;
    timeouts;
  }

type t = {
  device_connect : bool prop;
  id : string prop;
  iothub_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  registry_read : bool prop;
  registry_write : bool prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  service_connect : bool prop;
}

let make ?device_connect ?id ?registry_read ?registry_write
    ?service_connect ?timeouts ~iothub_name ~name
    ~resource_group_name __id =
  let __type = "azurerm_iothub_shared_access_policy" in
  let __attrs =
    ({
       device_connect = Prop.computed __type __id "device_connect";
       id = Prop.computed __type __id "id";
       iothub_name = Prop.computed __type __id "iothub_name";
       name = Prop.computed __type __id "name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       registry_read = Prop.computed __type __id "registry_read";
       registry_write = Prop.computed __type __id "registry_write";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       service_connect = Prop.computed __type __id "service_connect";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_shared_access_policy
        (azurerm_iothub_shared_access_policy ?device_connect ?id
           ?registry_read ?registry_write ?service_connect ?timeouts
           ~iothub_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?device_connect ?id ?registry_read
    ?registry_write ?service_connect ?timeouts ~iothub_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?device_connect ?id ?registry_read ?registry_write
      ?service_connect ?timeouts ~iothub_name ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
