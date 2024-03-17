(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_firewall_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_firewall_rule__timeouts *)

type azurerm_redis_firewall_rule = {
  end_ip : string prop;  (** end_ip *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  redis_cache_name : string prop;  (** redis_cache_name *)
  resource_group_name : string prop;  (** resource_group_name *)
  start_ip : string prop;  (** start_ip *)
  timeouts : azurerm_redis_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_firewall_rule *)

type t = {
  end_ip : string prop;
  id : string prop;
  name : string prop;
  redis_cache_name : string prop;
  resource_group_name : string prop;
  start_ip : string prop;
}

let azurerm_redis_firewall_rule ?id ?timeouts ~end_ip ~name
    ~redis_cache_name ~resource_group_name ~start_ip __resource_id =
  let __resource_type = "azurerm_redis_firewall_rule" in
  let __resource =
    ({
       end_ip;
       id;
       name;
       redis_cache_name;
       resource_group_name;
       start_ip;
       timeouts;
     }
      : azurerm_redis_firewall_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_firewall_rule __resource);
  let __resource_attributes =
    ({
       end_ip = Prop.computed __resource_type __resource_id "end_ip";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       redis_cache_name =
         Prop.computed __resource_type __resource_id
           "redis_cache_name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       start_ip =
         Prop.computed __resource_type __resource_id "start_ip";
     }
      : t)
  in
  __resource_attributes
