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

type azurerm_notification_hub_namespace = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  namespace_type : string prop;  (** namespace_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_notification_hub_namespace *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_notification_hub_namespace ?enabled ?id ?tags ?timeouts
    ~location ~name ~namespace_type ~resource_group_name ~sku_name ()
    : azurerm_notification_hub_namespace =
  {
    enabled;
    id;
    location;
    name;
    namespace_type;
    resource_group_name;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  namespace_type : string prop;
  resource_group_name : string prop;
  servicebus_endpoint : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?enabled ?id ?tags ?timeouts ~location ~name ~namespace_type
    ~resource_group_name ~sku_name __id =
  let __type = "azurerm_notification_hub_namespace" in
  let __attrs =
    ({
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       namespace_type = Prop.computed __type __id "namespace_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       servicebus_endpoint =
         Prop.computed __type __id "servicebus_endpoint";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_notification_hub_namespace
        (azurerm_notification_hub_namespace ?enabled ?id ?tags
           ?timeouts ~location ~name ~namespace_type
           ~resource_group_name ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?timeouts ~location ~name
    ~namespace_type ~resource_group_name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?timeouts ~location ~name ~namespace_type
      ~resource_group_name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
