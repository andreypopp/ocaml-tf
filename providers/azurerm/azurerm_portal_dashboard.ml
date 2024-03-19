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

type azurerm_portal_dashboard = {
  dashboard_properties : string prop;  (** dashboard_properties *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_portal_dashboard *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_portal_dashboard ?id ?tags ?timeouts
    ~dashboard_properties ~location ~name ~resource_group_name () :
    azurerm_portal_dashboard =
  {
    dashboard_properties;
    id;
    location;
    name;
    resource_group_name;
    tags;
    timeouts;
  }

type t = {
  dashboard_properties : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?timeouts ~dashboard_properties
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_portal_dashboard" in
  let __resource =
    azurerm_portal_dashboard ?id ?tags ?timeouts
      ~dashboard_properties ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_portal_dashboard __resource);
  let __resource_attributes =
    ({
       dashboard_properties =
         Prop.computed __resource_type __resource_id
           "dashboard_properties";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
