(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~definition __resource_id =
  let __resource_type =
    "azurerm_subnet_service_endpoint_storage_policy"
  in
  let __resource =
    azurerm_subnet_service_endpoint_storage_policy ?id ?tags
      ?timeouts ~location ~name ~resource_group_name ~definition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subnet_service_endpoint_storage_policy
       __resource);
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
