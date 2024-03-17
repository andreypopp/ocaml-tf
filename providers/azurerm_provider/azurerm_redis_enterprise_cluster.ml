(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_enterprise_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_cluster__timeouts *)

type azurerm_redis_enterprise_cluster = {
  location : string;  (** location *)
  minimum_tls_version : string option; [@option]
      (** minimum_tls_version *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list option; [@option]  (** zones *)
  timeouts : azurerm_redis_enterprise_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_cluster *)

let azurerm_redis_enterprise_cluster ?minimum_tls_version ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_redis_enterprise_cluster" in
  let __resource =
    {
      location;
      minimum_tls_version;
      name;
      resource_group_name;
      sku_name;
      tags;
      zones;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_redis_enterprise_cluster __resource);
  ()
