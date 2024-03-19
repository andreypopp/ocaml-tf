(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type module_ = {
  args : string prop option; [@option]  (** args *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** module *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_redis_enterprise_database = {
  client_protocol : string prop option; [@option]
      (** client_protocol *)
  cluster_id : string prop;  (** cluster_id *)
  clustering_policy : string prop option; [@option]
      (** clustering_policy *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  id : string prop option; [@option]  (** id *)
  linked_database_group_nickname : string prop option; [@option]
      (** linked_database_group_nickname *)
  linked_database_id : string prop list option; [@option]
      (** linked_database_id *)
  name : string prop option; [@option]  (** name *)
  port : float prop option; [@option]  (** port *)
  resource_group_name : string prop option; [@option]
      (** resource_group_name *)
  module_ : module_ list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_database *)

let module_ ?args ~name () : module_ = { args; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_redis_enterprise_database ?client_protocol
    ?clustering_policy ?eviction_policy ?id
    ?linked_database_group_nickname ?linked_database_id ?name ?port
    ?resource_group_name ?timeouts ~cluster_id ~module_ () :
    azurerm_redis_enterprise_database =
  {
    client_protocol;
    cluster_id;
    clustering_policy;
    eviction_policy;
    id;
    linked_database_group_nickname;
    linked_database_id;
    name;
    port;
    resource_group_name;
    module_;
    timeouts;
  }

type t = {
  client_protocol : string prop;
  cluster_id : string prop;
  clustering_policy : string prop;
  eviction_policy : string prop;
  id : string prop;
  linked_database_group_nickname : string prop;
  linked_database_id : string list prop;
  name : string prop;
  port : float prop;
  primary_access_key : string prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
}

let register ?tf_module ?client_protocol ?clustering_policy
    ?eviction_policy ?id ?linked_database_group_nickname
    ?linked_database_id ?name ?port ?resource_group_name ?timeouts
    ~cluster_id ~module_ __resource_id =
  let __resource_type = "azurerm_redis_enterprise_database" in
  let __resource =
    azurerm_redis_enterprise_database ?client_protocol
      ?clustering_policy ?eviction_policy ?id
      ?linked_database_group_nickname ?linked_database_id ?name ?port
      ?resource_group_name ?timeouts ~cluster_id ~module_ ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_enterprise_database __resource);
  let __resource_attributes =
    ({
       client_protocol =
         Prop.computed __resource_type __resource_id
           "client_protocol";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       clustering_policy =
         Prop.computed __resource_type __resource_id
           "clustering_policy";
       eviction_policy =
         Prop.computed __resource_type __resource_id
           "eviction_policy";
       id = Prop.computed __resource_type __resource_id "id";
       linked_database_group_nickname =
         Prop.computed __resource_type __resource_id
           "linked_database_group_nickname";
       linked_database_id =
         Prop.computed __resource_type __resource_id
           "linked_database_id";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       primary_access_key =
         Prop.computed __resource_type __resource_id
           "primary_access_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_access_key =
         Prop.computed __resource_type __resource_id
           "secondary_access_key";
     }
      : t)
  in
  __resource_attributes
