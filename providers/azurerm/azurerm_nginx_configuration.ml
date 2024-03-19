(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type config_file = {
  content : string prop;  (** content *)
  virtual_path : string prop;  (** virtual_path *)
}
[@@deriving yojson_of]
(** config_file *)

type protected_file = {
  content : string prop;  (** content *)
  virtual_path : string prop;  (** virtual_path *)
}
[@@deriving yojson_of]
(** protected_file *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_nginx_configuration = {
  id : string prop option; [@option]  (** id *)
  nginx_deployment_id : string prop;  (** nginx_deployment_id *)
  package_data : string prop option; [@option]  (** package_data *)
  root_file : string prop;  (** root_file *)
  config_file : config_file list;
  protected_file : protected_file list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration *)

let config_file ~content ~virtual_path () : config_file =
  { content; virtual_path }

let protected_file ~content ~virtual_path () : protected_file =
  { content; virtual_path }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nginx_configuration ?id ?package_data ?timeouts
    ~nginx_deployment_id ~root_file ~config_file ~protected_file () :
    azurerm_nginx_configuration =
  {
    id;
    nginx_deployment_id;
    package_data;
    root_file;
    config_file;
    protected_file;
    timeouts;
  }

type t = {
  id : string prop;
  nginx_deployment_id : string prop;
  package_data : string prop;
  root_file : string prop;
}

let register ?tf_module ?id ?package_data ?timeouts
    ~nginx_deployment_id ~root_file ~config_file ~protected_file
    __resource_id =
  let __resource_type = "azurerm_nginx_configuration" in
  let __resource =
    azurerm_nginx_configuration ?id ?package_data ?timeouts
      ~nginx_deployment_id ~root_file ~config_file ~protected_file ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
