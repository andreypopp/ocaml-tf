(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
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

type azurerm_healthcare_medtech_service = {
  device_mapping_json : string prop;  (** device_mapping_json *)
  eventhub_consumer_group_name : string prop;
      (** eventhub_consumer_group_name *)
  eventhub_name : string prop;  (** eventhub_name *)
  eventhub_namespace_name : string prop;
      (** eventhub_namespace_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workspace_id : string prop;  (** workspace_id *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_medtech_service *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_healthcare_medtech_service ?id ?tags ?timeouts
    ~device_mapping_json ~eventhub_consumer_group_name ~eventhub_name
    ~eventhub_namespace_name ~location ~name ~workspace_id ~identity
    () : azurerm_healthcare_medtech_service =
  {
    device_mapping_json;
    eventhub_consumer_group_name;
    eventhub_name;
    eventhub_namespace_name;
    id;
    location;
    name;
    tags;
    workspace_id;
    identity;
    timeouts;
  }

type t = {
  device_mapping_json : string prop;
  eventhub_consumer_group_name : string prop;
  eventhub_name : string prop;
  eventhub_namespace_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  workspace_id : string prop;
}

let make ?id ?tags ?timeouts ~device_mapping_json
    ~eventhub_consumer_group_name ~eventhub_name
    ~eventhub_namespace_name ~location ~name ~workspace_id ~identity
    __id =
  let __type = "azurerm_healthcare_medtech_service" in
  let __attrs =
    ({
       device_mapping_json =
         Prop.computed __type __id "device_mapping_json";
       eventhub_consumer_group_name =
         Prop.computed __type __id "eventhub_consumer_group_name";
       eventhub_name = Prop.computed __type __id "eventhub_name";
       eventhub_namespace_name =
         Prop.computed __type __id "eventhub_namespace_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_healthcare_medtech_service
        (azurerm_healthcare_medtech_service ?id ?tags ?timeouts
           ~device_mapping_json ~eventhub_consumer_group_name
           ~eventhub_name ~eventhub_namespace_name ~location ~name
           ~workspace_id ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~device_mapping_json
    ~eventhub_consumer_group_name ~eventhub_name
    ~eventhub_namespace_name ~location ~name ~workspace_id ~identity
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~device_mapping_json
      ~eventhub_consumer_group_name ~eventhub_name
      ~eventhub_namespace_name ~location ~name ~workspace_id
      ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
