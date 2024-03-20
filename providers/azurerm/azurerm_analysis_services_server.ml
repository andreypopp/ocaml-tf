(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?admin_users ?backup_blob_container_uri
    ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~ipv4_firewall_rule __id =
  let __type = "azurerm_analysis_services_server" in
  let __attrs =
    ({
       admin_users = Prop.computed __type __id "admin_users";
       backup_blob_container_uri =
         Prop.computed __type __id "backup_blob_container_uri";
       enable_power_bi_service =
         Prop.computed __type __id "enable_power_bi_service";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       querypool_connection_mode =
         Prop.computed __type __id "querypool_connection_mode";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server_full_name =
         Prop.computed __type __id "server_full_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_analysis_services_server
        (azurerm_analysis_services_server ?admin_users
           ?backup_blob_container_uri ?enable_power_bi_service ?id
           ?querypool_connection_mode ?tags ?timeouts ~location ~name
           ~resource_group_name ~sku ~ipv4_firewall_rule ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_users ?backup_blob_container_uri
    ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
    ?timeouts ~location ~name ~resource_group_name ~sku
    ~ipv4_firewall_rule __id =
  let (r : _ Tf_core.resource) =
    make ?admin_users ?backup_blob_container_uri
      ?enable_power_bi_service ?id ?querypool_connection_mode ?tags
      ?timeouts ~location ~name ~resource_group_name ~sku
      ~ipv4_firewall_rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
