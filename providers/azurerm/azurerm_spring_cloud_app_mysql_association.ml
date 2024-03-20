(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?timeouts ~database_name ~mysql_server_id ~name
    ~password ~spring_cloud_app_id ~username __id =
  let __type = "azurerm_spring_cloud_app_mysql_association" in
  let __attrs =
    ({
       database_name = Prop.computed __type __id "database_name";
       id = Prop.computed __type __id "id";
       mysql_server_id = Prop.computed __type __id "mysql_server_id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_app_mysql_association
        (azurerm_spring_cloud_app_mysql_association ?id ?timeouts
           ~database_name ~mysql_server_id ~name ~password
           ~spring_cloud_app_id ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~database_name ~mysql_server_id
    ~name ~password ~spring_cloud_app_id ~username __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~database_name ~mysql_server_id ~name
      ~password ~spring_cloud_app_id ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
