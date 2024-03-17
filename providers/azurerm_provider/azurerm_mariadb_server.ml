(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mariadb_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mariadb_server__timeouts *)

type azurerm_mariadb_server = {
  administrator_login_password : string option; [@option]
      (** administrator_login_password *)
  auto_grow_enabled : bool option; [@option]
      (** auto_grow_enabled *)
  create_mode : string option; [@option]  (** create_mode *)
  creation_source_server_id : string option; [@option]
      (** creation_source_server_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  restore_point_in_time : string option; [@option]
      (** restore_point_in_time *)
  sku_name : string;  (** sku_name *)
  ssl_enforcement_enabled : bool;  (** ssl_enforcement_enabled *)
  ssl_minimal_tls_version_enforced : string option; [@option]
      (** ssl_minimal_tls_version_enforced *)
  tags : (string * string) list option; [@option]  (** tags *)
  version : string;  (** version *)
  timeouts : azurerm_mariadb_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mariadb_server *)

let azurerm_mariadb_server ?administrator_login_password
    ?auto_grow_enabled ?create_mode ?creation_source_server_id
    ?public_network_access_enabled ?restore_point_in_time
    ?ssl_minimal_tls_version_enforced ?tags ?timeouts ~location ~name
    ~resource_group_name ~sku_name ~ssl_enforcement_enabled ~version
    __resource_id =
  let __resource_type = "azurerm_mariadb_server" in
  let __resource =
    {
      administrator_login_password;
      auto_grow_enabled;
      create_mode;
      creation_source_server_id;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      restore_point_in_time;
      sku_name;
      ssl_enforcement_enabled;
      ssl_minimal_tls_version_enforced;
      tags;
      version;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mariadb_server __resource);
  ()
