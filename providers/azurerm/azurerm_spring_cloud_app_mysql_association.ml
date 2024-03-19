(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_app_mysql_association = {
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  mysql_server_id : string prop;  (** mysql_server_id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_app_mysql_association *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_app_mysql_association ?id ?timeouts
    ~database_name ~mysql_server_id ~name ~password
    ~spring_cloud_app_id ~username () :
    azurerm_spring_cloud_app_mysql_association =
  {
    database_name;
    id;
    mysql_server_id;
    name;
    password;
    spring_cloud_app_id;
    username;
    timeouts;
  }

type t = {
  database_name : string prop;
  id : string prop;
  mysql_server_id : string prop;
  name : string prop;
  password : string prop;
  spring_cloud_app_id : string prop;
  username : string prop;
}

let register ?tf_module ?id ?timeouts ~database_name ~mysql_server_id
    ~name ~password ~spring_cloud_app_id ~username __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_app_mysql_association"
  in
  let __resource =
    azurerm_spring_cloud_app_mysql_association ?id ?timeouts
      ~database_name ~mysql_server_id ~name ~password
      ~spring_cloud_app_id ~username ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_app_mysql_association __resource);
  let __resource_attributes =
    ({
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       mysql_server_id =
         Prop.computed __resource_type __resource_id
           "mysql_server_id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       spring_cloud_app_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_app_id";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
