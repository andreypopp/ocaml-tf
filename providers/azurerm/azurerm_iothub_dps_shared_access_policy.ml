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

type azurerm_iothub_dps_shared_access_policy = {
  enrollment_read : bool prop option; [@option]
      (** enrollment_read *)
  enrollment_write : bool prop option; [@option]
      (** enrollment_write *)
  id : string prop option; [@option]  (** id *)
  iothub_dps_name : string prop;  (** iothub_dps_name *)
  name : string prop;  (** name *)
  registration_read : bool prop option; [@option]
      (** registration_read *)
  registration_write : bool prop option; [@option]
      (** registration_write *)
  resource_group_name : string prop;  (** resource_group_name *)
  service_config : bool prop option; [@option]  (** service_config *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_dps_shared_access_policy *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_dps_shared_access_policy ?enrollment_read
    ?enrollment_write ?id ?registration_read ?registration_write
    ?service_config ?timeouts ~iothub_dps_name ~name
    ~resource_group_name () : azurerm_iothub_dps_shared_access_policy
    =
  {
    enrollment_read;
    enrollment_write;
    id;
    iothub_dps_name;
    name;
    registration_read;
    registration_write;
    resource_group_name;
    service_config;
    timeouts;
  }

type t = {
  enrollment_read : bool prop;
  enrollment_write : bool prop;
  id : string prop;
  iothub_dps_name : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  registration_read : bool prop;
  registration_write : bool prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  service_config : bool prop;
}

let make ?enrollment_read ?enrollment_write ?id ?registration_read
    ?registration_write ?service_config ?timeouts ~iothub_dps_name
    ~name ~resource_group_name __id =
  let __type = "azurerm_iothub_dps_shared_access_policy" in
  let __attrs =
    ({
       enrollment_read = Prop.computed __type __id "enrollment_read";
       enrollment_write =
         Prop.computed __type __id "enrollment_write";
       id = Prop.computed __type __id "id";
       iothub_dps_name = Prop.computed __type __id "iothub_dps_name";
       name = Prop.computed __type __id "name";
       primary_connection_string =
         Prop.computed __type __id "primary_connection_string";
       primary_key = Prop.computed __type __id "primary_key";
       registration_read =
         Prop.computed __type __id "registration_read";
       registration_write =
         Prop.computed __type __id "registration_write";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_connection_string =
         Prop.computed __type __id "secondary_connection_string";
       secondary_key = Prop.computed __type __id "secondary_key";
       service_config = Prop.computed __type __id "service_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iothub_dps_shared_access_policy
        (azurerm_iothub_dps_shared_access_policy ?enrollment_read
           ?enrollment_write ?id ?registration_read
           ?registration_write ?service_config ?timeouts
           ~iothub_dps_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enrollment_read ?enrollment_write ?id
    ?registration_read ?registration_write ?service_config ?timeouts
    ~iothub_dps_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?enrollment_read ?enrollment_write ?id ?registration_read
      ?registration_write ?service_config ?timeouts ~iothub_dps_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
