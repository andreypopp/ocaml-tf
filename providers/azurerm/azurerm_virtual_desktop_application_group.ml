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

type azurerm_virtual_desktop_application_group = {
  default_desktop_display_name : string prop option; [@option]
      (** default_desktop_display_name *)
  description : string prop option; [@option]  (** description *)
  friendly_name : string prop option; [@option]  (** friendly_name *)
  host_pool_id : string prop;  (** host_pool_id *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_desktop_application_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_application_group
    ?default_desktop_display_name ?description ?friendly_name ?id
    ?tags ?timeouts ~host_pool_id ~location ~name
    ~resource_group_name ~type_ () :
    azurerm_virtual_desktop_application_group =
  {
    default_desktop_display_name;
    description;
    friendly_name;
    host_pool_id;
    id;
    location;
    name;
    resource_group_name;
    tags;
    type_;
    timeouts;
  }

type t = {
  default_desktop_display_name : string prop;
  description : string prop;
  friendly_name : string prop;
  host_pool_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

let make ?default_desktop_display_name ?description ?friendly_name
    ?id ?tags ?timeouts ~host_pool_id ~location ~name
    ~resource_group_name ~type_ __id =
  let __type = "azurerm_virtual_desktop_application_group" in
  let __attrs =
    ({
       default_desktop_display_name =
         Prop.computed __type __id "default_desktop_display_name";
       description = Prop.computed __type __id "description";
       friendly_name = Prop.computed __type __id "friendly_name";
       host_pool_id = Prop.computed __type __id "host_pool_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_application_group
        (azurerm_virtual_desktop_application_group
           ?default_desktop_display_name ?description ?friendly_name
           ?id ?tags ?timeouts ~host_pool_id ~location ~name
           ~resource_group_name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?default_desktop_display_name ?description
    ?friendly_name ?id ?tags ?timeouts ~host_pool_id ~location ~name
    ~resource_group_name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?default_desktop_display_name ?description ?friendly_name
      ?id ?tags ?timeouts ~host_pool_id ~location ~name
      ~resource_group_name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
