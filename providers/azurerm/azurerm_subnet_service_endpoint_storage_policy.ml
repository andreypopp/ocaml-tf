(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type definition = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  service : string prop option; [@option]  (** service *)
  service_resources : string prop list;  (** service_resources *)
}
[@@deriving yojson_of]
(** definition *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_subnet_service_endpoint_storage_policy = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  definition : definition list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subnet_service_endpoint_storage_policy *)

let definition ?description ?service ~name ~service_resources () :
    definition =
  { description; name; service; service_resources }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subnet_service_endpoint_storage_policy ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~definition () :
    azurerm_subnet_service_endpoint_storage_policy =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    definition;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~definition __id =
  let __type = "azurerm_subnet_service_endpoint_storage_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
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
      yojson_of_azurerm_subnet_service_endpoint_storage_policy
        (azurerm_subnet_service_endpoint_storage_policy ?id ?tags
           ?timeouts ~location ~name ~resource_group_name ~definition
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~definition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
