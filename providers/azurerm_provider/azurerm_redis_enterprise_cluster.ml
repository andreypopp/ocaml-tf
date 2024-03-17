(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_redis_enterprise_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_cluster__timeouts *)

type azurerm_redis_enterprise_cluster = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  minimum_tls_version : string prop option; [@option]
      (** minimum_tls_version *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop;  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : azurerm_redis_enterprise_cluster__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_redis_enterprise_cluster *)

let azurerm_redis_enterprise_cluster ?id ?minimum_tls_version ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name ~sku_name
    __resource_id =
  let __resource_type = "azurerm_redis_enterprise_cluster" in
  let __resource =
    {
      id;
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
