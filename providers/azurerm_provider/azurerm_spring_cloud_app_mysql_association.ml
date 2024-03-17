(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_app_mysql_association__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_mysql_association__timeouts *)

type azurerm_spring_cloud_app_mysql_association = {
  database_name : string;  (** database_name *)
  mysql_server_id : string;  (** mysql_server_id *)
  name : string;  (** name *)
  password : string;  (** password *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  username : string;  (** username *)
  timeouts :
    azurerm_spring_cloud_app_mysql_association__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_mysql_association *)

let azurerm_spring_cloud_app_mysql_association ?timeouts
    ~database_name ~mysql_server_id ~name ~password
    ~spring_cloud_app_id ~username __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_mysql_association"
  in
  let __resource =
    {
      database_name;
      mysql_server_id;
      name;
      password;
      spring_cloud_app_id;
      username;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_mysql_association __resource);
  ()
