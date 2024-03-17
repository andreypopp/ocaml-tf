(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_enterprise_database__module = {
  args : string option; [@option]  (** args *)
  name : string;  (** name *)
  version : string;  (** version *)
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_database__module *)

type azurerm_redis_enterprise_database__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_database__timeouts *)

type azurerm_redis_enterprise_database = {
  client_protocol : string option; [@option]  (** client_protocol *)
  cluster_id : string;  (** cluster_id *)
  clustering_policy : string option; [@option]
      (** clustering_policy *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  id : string option; [@option]  (** id *)
  linked_database_group_nickname : string option; [@option]
      (** linked_database_group_nickname *)
  linked_database_id : string list option; [@option]
      (** linked_database_id *)
  name : string option; [@option]  (** name *)
  port : float option; [@option]  (** port *)
  resource_group_name : string option; [@option]
      (** resource_group_name *)
  module_ : azurerm_redis_enterprise_database__module list;
  timeouts : azurerm_redis_enterprise_database__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_database *)

let azurerm_redis_enterprise_database ?client_protocol
    ?clustering_policy ?eviction_policy ?id
    ?linked_database_group_nickname ?linked_database_id ?name ?port
    ?resource_group_name ?timeouts ~cluster_id ~module_ __resource_id
    =
  let __resource_type = "azurerm_redis_enterprise_database" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_enterprise_database __resource);
  ()
