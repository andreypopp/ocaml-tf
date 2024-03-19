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

type azurerm_iothub_endpoint_cosmosdb_account = {
  authentication_type : string prop option; [@option]
      (** authentication_type *)
  container_name : string prop;  (** container_name *)
  database_name : string prop;  (** database_name *)
  endpoint_uri : string prop;  (** endpoint_uri *)
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  iothub_id : string prop;  (** iothub_id *)
  name : string prop;  (** name *)
  partition_key_name : string prop option; [@option]
      (** partition_key_name *)
  partition_key_template : string prop option; [@option]
      (** partition_key_template *)
  primary_key : string prop option; [@option]  (** primary_key *)
  resource_group_name : string prop;  (** resource_group_name *)
  secondary_key : string prop option; [@option]  (** secondary_key *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iothub_endpoint_cosmosdb_account *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iothub_endpoint_cosmosdb_account ?authentication_type ?id
    ?identity_id ?partition_key_name ?partition_key_template
    ?primary_key ?secondary_key ?timeouts ~container_name
    ~database_name ~endpoint_uri ~iothub_id ~name
    ~resource_group_name () :
    azurerm_iothub_endpoint_cosmosdb_account =
  {
    authentication_type;
    container_name;
    database_name;
    endpoint_uri;
    id;
    identity_id;
    iothub_id;
    name;
    partition_key_name;
    partition_key_template;
    primary_key;
    resource_group_name;
    secondary_key;
    timeouts;
  }

type t = {
  authentication_type : string prop;
  container_name : string prop;
  database_name : string prop;
  endpoint_uri : string prop;
  id : string prop;
  identity_id : string prop;
  iothub_id : string prop;
  name : string prop;
  partition_key_name : string prop;
  partition_key_template : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
}

let register ?tf_module ?authentication_type ?id ?identity_id
    ?partition_key_name ?partition_key_template ?primary_key
    ?secondary_key ?timeouts ~container_name ~database_name
    ~endpoint_uri ~iothub_id ~name ~resource_group_name __resource_id
    =
  let __resource_type = "azurerm_iothub_endpoint_cosmosdb_account" in
  let __resource =
    azurerm_iothub_endpoint_cosmosdb_account ?authentication_type ?id
      ?identity_id ?partition_key_name ?partition_key_template
      ?primary_key ?secondary_key ?timeouts ~container_name
      ~database_name ~endpoint_uri ~iothub_id ~name
      ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iothub_endpoint_cosmosdb_account __resource);
  let __resource_attributes =
    ({
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       container_name =
         Prop.computed __resource_type __resource_id "container_name";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       endpoint_uri =
         Prop.computed __resource_type __resource_id "endpoint_uri";
       id = Prop.computed __resource_type __resource_id "id";
       identity_id =
         Prop.computed __resource_type __resource_id "identity_id";
       iothub_id =
         Prop.computed __resource_type __resource_id "iothub_id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_key_name =
         Prop.computed __resource_type __resource_id
           "partition_key_name";
       partition_key_template =
         Prop.computed __resource_type __resource_id
           "partition_key_template";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
     }
      : t)
  in
  __resource_attributes
