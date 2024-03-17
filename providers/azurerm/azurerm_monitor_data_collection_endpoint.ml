(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_monitor_data_collection_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_endpoint__timeouts *)

type azurerm_monitor_data_collection_endpoint = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_monitor_data_collection_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_monitor_data_collection_endpoint *)

type t = {
  configuration_access_endpoint : string prop;
  description : string prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  logs_ingestion_endpoint : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_monitor_data_collection_endpoint ?description ?id ?kind
    ?public_network_access_enabled ?tags ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_monitor_data_collection_endpoint" in
  let __resource =
    ({
       description;
       id;
       kind;
       location;
       name;
       public_network_access_enabled;
       resource_group_name;
       tags;
       timeouts;
     }
      : azurerm_monitor_data_collection_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_monitor_data_collection_endpoint __resource);
  let __resource_attributes =
    ({
       configuration_access_endpoint =
         Prop.computed __resource_type __resource_id
           "configuration_access_endpoint";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       location =
         Prop.computed __resource_type __resource_id "location";
       logs_ingestion_endpoint =
         Prop.computed __resource_type __resource_id
           "logs_ingestion_endpoint";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
