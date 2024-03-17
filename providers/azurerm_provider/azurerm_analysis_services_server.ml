(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_analysis_services_server__ipv4_firewall_rule = {
  name : string prop;  (** name *)
  range_end : string prop;  (** range_end *)
  range_start : string prop;  (** range_start *)
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server__ipv4_firewall_rule *)

type azurerm_analysis_services_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server__timeouts *)

type azurerm_analysis_services_server = {
  admin_users : string prop list option; [@option]
      (** admin_users *)
  backup_blob_container_uri : string prop option; [@option]
      (** backup_blob_container_uri *)
  enable_power_bi_service : bool prop option; [@option]
      (** enable_power_bi_service *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  querypool_connection_mode : string prop option; [@option]
      (** querypool_connection_mode *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ipv4_firewall_rule :
    azurerm_analysis_services_server__ipv4_firewall_rule list;
  timeouts : azurerm_analysis_services_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server *)

let azurerm_analysis_services_server ?admin_users
    ?backup_blob_container_uri ?enable_power_bi_service ?id
    ?querypool_connection_mode ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~ipv4_firewall_rule __resource_id =
  let __resource_type = "azurerm_analysis_services_server" in
  let __resource =
    {
      admin_users;
      backup_blob_container_uri;
      enable_power_bi_service;
      id;
      location;
      name;
      querypool_connection_mode;
      resource_group_name;
      sku;
      tags;
      ipv4_firewall_rule;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_analysis_services_server __resource);
  ()
