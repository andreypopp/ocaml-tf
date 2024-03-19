(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type ipv4_firewall_rule = {
  name : string prop;  (** name *)
  range_end : string prop;  (** range_end *)
  range_start : string prop;  (** range_start *)
}
[@@deriving yojson_of]
(** ipv4_firewall_rule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  ipv4_firewall_rule : ipv4_firewall_rule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_analysis_services_server *)

let ipv4_firewall_rule ~name ~range_end ~range_start () :
    ipv4_firewall_rule =
  { name; range_end; range_start }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_analysis_services_server ?admin_users
    ?backup_blob_container_uri ?enable_power_bi_service ?id
    ?querypool_connection_mode ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku ~ipv4_firewall_rule () :
    azurerm_analysis_services_server =
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

type t = {
  admin_users : string list prop;
  backup_blob_container_uri : string prop;
  enable_power_bi_service : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  querypool_connection_mode : string prop;
  resource_group_name : string prop;
  server_full_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?admin_users ?backup_blob_container_uri
    ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~ipv4_firewall_rule __resource_id =
  let __resource_type = "azurerm_analysis_services_server" in
  let __resource =
    azurerm_analysis_services_server ?admin_users
      ?backup_blob_container_uri ?enable_power_bi_service ?id
      ?querypool_connection_mode ?tags ?timeouts ~location ~name
      ~resource_group_name ~sku ~ipv4_firewall_rule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_analysis_services_server __resource);
  let __resource_attributes =
    ({
       admin_users =
         Prop.computed __resource_type __resource_id "admin_users";
       backup_blob_container_uri =
         Prop.computed __resource_type __resource_id
           "backup_blob_container_uri";
       enable_power_bi_service =
         Prop.computed __resource_type __resource_id
           "enable_power_bi_service";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       querypool_connection_mode =
         Prop.computed __resource_type __resource_id
           "querypool_connection_mode";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server_full_name =
         Prop.computed __resource_type __resource_id
           "server_full_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
