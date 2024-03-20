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

type azurerm_storage_sync = {
  id : string prop option; [@option]  (** id *)
  incoming_traffic_policy : string prop option; [@option]
      (** incoming_traffic_policy *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_sync ?id ?incoming_traffic_policy ?tags ?timeouts
    ~location ~name ~resource_group_name () : azurerm_storage_sync =
  {
    id;
    incoming_traffic_policy;
    location;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  id : string prop;
  incoming_traffic_policy : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?incoming_traffic_policy ?tags ?timeouts ~location ~name
    ~resource_group_name __id =
  let __type = "azurerm_storage_sync" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       incoming_traffic_policy =
         Prop.computed __type __id "incoming_traffic_policy";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_sync
        (azurerm_storage_sync ?id ?incoming_traffic_policy ?tags
           ?timeouts ~location ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?incoming_traffic_policy ?tags ?timeouts
    ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?incoming_traffic_policy ?tags ?timeouts ~location ~name
      ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
