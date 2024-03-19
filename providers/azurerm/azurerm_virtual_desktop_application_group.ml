(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?default_desktop_display_name ?description
    ?friendly_name ?id ?tags ?timeouts ~host_pool_id ~location ~name
    ~resource_group_name ~type_ __resource_id =
  let __resource_type =
    "azurerm_virtual_desktop_application_group"
  in
  let __resource =
    azurerm_virtual_desktop_application_group
      ?default_desktop_display_name ?description ?friendly_name ?id
      ?tags ?timeouts ~host_pool_id ~location ~name
      ~resource_group_name ~type_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_desktop_application_group __resource);
  let __resource_attributes =
    ({
       default_desktop_display_name =
         Prop.computed __resource_type __resource_id
           "default_desktop_display_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       friendly_name =
         Prop.computed __resource_type __resource_id "friendly_name";
       host_pool_id =
         Prop.computed __resource_type __resource_id "host_pool_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
