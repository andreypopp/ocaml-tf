(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type application_insights = {
  instrumentation_key : string prop;  (** instrumentation_key *)
}
[@@deriving yojson_of]
(** application_insights *)

type eventhub = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  endpoint_uri : string prop option; [@option]  (** endpoint_uri *)
  name : string prop;  (** name *)
  user_assigned_identity_client_id : string prop option; [@option]
      (** user_assigned_identity_client_id *)
}
[@@deriving yojson_of]
(** eventhub *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_api_management_logger = {
  api_management_name : string prop;  (** api_management_name *)
  buffered : bool prop option; [@option]  (** buffered *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  resource_id : string prop option; [@option]  (** resource_id *)
  application_insights : application_insights list;
  eventhub : eventhub list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_api_management_logger *)

let application_insights ~instrumentation_key () :
    application_insights =
  { instrumentation_key }

let eventhub ?connection_string ?endpoint_uri
    ?user_assigned_identity_client_id ~name () : eventhub =
  {
    connection_string;
    endpoint_uri;
    name;
    user_assigned_identity_client_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_logger ?buffered ?description ?id
    ?resource_id ?timeouts ~api_management_name ~name
    ~resource_group_name ~application_insights ~eventhub () :
    azurerm_api_management_logger =
  {
    api_management_name;
    buffered;
    description;
    id;
    name;
    resource_group_name;
    resource_id;
    application_insights;
    eventhub;
    timeouts;
  }

type t = {
  api_management_name : string prop;
  buffered : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
}

let register ?tf_module ?buffered ?description ?id ?resource_id
    ?timeouts ~api_management_name ~name ~resource_group_name
    ~application_insights ~eventhub __resource_id =
  let __resource_type = "azurerm_api_management_logger" in
  let __resource =
    azurerm_api_management_logger ?buffered ?description ?id
      ?resource_id ?timeouts ~api_management_name ~name
      ~resource_group_name ~application_insights ~eventhub ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_api_management_logger __resource);
  let __resource_attributes =
    ({
       api_management_name =
         Prop.computed __resource_type __resource_id
           "api_management_name";
       buffered =
         Prop.computed __resource_type __resource_id "buffered";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
     }
      : t)
  in
  __resource_attributes
