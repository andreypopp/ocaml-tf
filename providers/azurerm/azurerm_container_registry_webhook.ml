(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_registry_webhook__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_registry_webhook__timeouts *)

type azurerm_container_registry_webhook = {
  actions : string prop list;  (** actions *)
  custom_headers : (string * string prop) list option; [@option]
      (** custom_headers *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  registry_name : string prop;  (** registry_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  scope : string prop option; [@option]  (** scope *)
  service_uri : string prop;  (** service_uri *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_container_registry_webhook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_registry_webhook *)

type t = {
  actions : string list prop;
  custom_headers : (string * string) list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  registry_name : string prop;
  resource_group_name : string prop;
  scope : string prop;
  service_uri : string prop;
  status : string prop;
  tags : (string * string) list prop;
}

let azurerm_container_registry_webhook ?custom_headers ?id ?scope
    ?status ?tags ?timeouts ~actions ~location ~name ~registry_name
    ~resource_group_name ~service_uri __resource_id =
  let __resource_type = "azurerm_container_registry_webhook" in
  let __resource =
    ({
       actions;
       custom_headers;
       id;
       location;
       name;
       registry_name;
       resource_group_name;
       scope;
       service_uri;
       status;
       tags;
       timeouts;
     }
      : azurerm_container_registry_webhook)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_registry_webhook __resource);
  let __resource_attributes =
    ({
       actions =
         Prop.computed __resource_type __resource_id "actions";
       custom_headers =
         Prop.computed __resource_type __resource_id "custom_headers";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       registry_name =
         Prop.computed __resource_type __resource_id "registry_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       scope = Prop.computed __resource_type __resource_id "scope";
       service_uri =
         Prop.computed __resource_type __resource_id "service_uri";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
