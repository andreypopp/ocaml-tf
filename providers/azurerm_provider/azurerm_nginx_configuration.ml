(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nginx_configuration__config_file = {
  content : string prop;  (** content *)
  virtual_path : string prop;  (** virtual_path *)
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration__config_file *)

type azurerm_nginx_configuration__protected_file = {
  content : string prop;  (** content *)
  virtual_path : string prop;  (** virtual_path *)
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration__protected_file *)

type azurerm_nginx_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration__timeouts *)

type azurerm_nginx_configuration = {
  id : string prop option; [@option]  (** id *)
  nginx_deployment_id : string prop;  (** nginx_deployment_id *)
  package_data : string prop option; [@option]  (** package_data *)
  root_file : string prop;  (** root_file *)
  config_file : azurerm_nginx_configuration__config_file list;
  protected_file : azurerm_nginx_configuration__protected_file list;
  timeouts : azurerm_nginx_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration *)

type t = {
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  root_file : string prop;
}

let azurerm_nginx_configuration ?id ?package_data ?timeouts
    ~nginx_deployment_id ~root_file ~config_file ~protected_file
    __resource_id =
  let __resource_type = "azurerm_nginx_configuration" in
  let __resource =
    ({
       id;
       nginx_deployment_id;
       package_data;
       root_file;
       config_file;
       protected_file;
       timeouts;
     }
      : azurerm_nginx_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nginx_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       nginx_deployment_id =
         Prop.computed __resource_type __resource_id
           "nginx_deployment_id";
       package_data =
         Prop.computed __resource_type __resource_id "package_data";
       root_file =
         Prop.computed __resource_type __resource_id "root_file";
     }
      : t)
  in
  __resource_attributes
