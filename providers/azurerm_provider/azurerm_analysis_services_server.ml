(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_analysis_services_server__ipv4_firewall_rule = {
  name : string;  (** name *)
  range_end : string;  (** range_end *)
  range_start : string;  (** range_start *)
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server__ipv4_firewall_rule *)

type azurerm_analysis_services_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server__timeouts *)

type azurerm_analysis_services_server = {
  admin_users : string list option; [@option]  (** admin_users *)
  backup_blob_container_uri : string option; [@option]
      (** backup_blob_container_uri *)
  enable_power_bi_service : bool option; [@option]
      (** enable_power_bi_service *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  tags : (string * string) list option; [@option]  (** tags *)
  ipv4_firewall_rule :
    azurerm_analysis_services_server__ipv4_firewall_rule list;
  timeouts : azurerm_analysis_services_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server *)

let azurerm_analysis_services_server ?admin_users
    ?backup_blob_container_uri ?enable_power_bi_service ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~ipv4_firewall_rule __resource_id =
  let __resource_type = "azurerm_analysis_services_server" in
  let __resource =
    {
      admin_users;
      backup_blob_container_uri;
      enable_power_bi_service;
      location;
      name;
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
