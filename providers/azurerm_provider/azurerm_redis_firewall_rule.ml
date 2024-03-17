(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_firewall_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_firewall_rule__timeouts *)

type azurerm_redis_firewall_rule = {
  end_ip : string;  (** end_ip *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  redis_cache_name : string;  (** redis_cache_name *)
  resource_group_name : string;  (** resource_group_name *)
  start_ip : string;  (** start_ip *)
  timeouts : azurerm_redis_firewall_rule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_firewall_rule *)

let azurerm_redis_firewall_rule ?id ?timeouts ~end_ip ~name
    ~redis_cache_name ~resource_group_name ~start_ip __resource_id =
  let __resource_type = "azurerm_redis_firewall_rule" in
  let __resource =
    {
      end_ip;
      id;
      name;
      redis_cache_name;
      resource_group_name;
      start_ip;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_firewall_rule __resource);
  ()
