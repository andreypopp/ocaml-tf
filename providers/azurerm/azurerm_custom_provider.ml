(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~action ~resource_type ~validation
    __resource_id =
  let __resource_type = "azurerm_custom_provider" in
  let __resource =
    azurerm_custom_provider ?id ?tags ?timeouts ~location ~name
      ~resource_group_name ~action ~resource_type ~validation ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_custom_provider __resource);
  let __resource_attributes =
    ({
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
