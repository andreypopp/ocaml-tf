(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action = {
  endpoint : string prop;  (** endpoint *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** action *)

type resource_type = {
  endpoint : string prop;  (** endpoint *)
  name : string prop;  (** name *)
  routing_type : string prop option; [@option]  (** routing_type *)
}
[@@deriving yojson_of]
(** resource_type *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type validation = {
  specification : string prop;  (** specification *)
}
[@@deriving yojson_of]
(** validation *)

type azurerm_custom_provider = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  action : action list;
  resource_type : resource_type list;
  timeouts : timeouts option;
  validation : validation list;
}
[@@deriving yojson_of]
(** azurerm_custom_provider *)

let action ~endpoint ~name () : action = { endpoint; name }

let resource_type ?routing_type ~endpoint ~name () : resource_type =
  { endpoint; name; routing_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let validation ~specification () : validation = { specification }

let azurerm_custom_provider ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~action ~resource_type ~validation () :
    azurerm_custom_provider =
  {
    id;
    location;
    name;
    resource_group_name;
    tags;
    action;
    resource_type;
    timeouts;
    validation;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~action ~resource_type ~validation __id =
  let __type = "azurerm_custom_provider" in
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
      yojson_of_azurerm_custom_provider
        (azurerm_custom_provider ?id ?tags ?timeouts ~location ~name
           ~resource_group_name ~action ~resource_type ~validation ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~action ~resource_type ~validation __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~resource_group_name
      ~action ~resource_type ~validation __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
