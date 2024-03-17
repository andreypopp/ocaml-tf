(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nginx_configuration__config_file = {
  content : string;  (** content *)
  virtual_path : string;  (** virtual_path *)
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration__config_file *)

type azurerm_nginx_configuration__protected_file = {
  content : string;  (** content *)
  virtual_path : string;  (** virtual_path *)
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration__protected_file *)

type azurerm_nginx_configuration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration__timeouts *)

type azurerm_nginx_configuration = {
  nginx_deployment_id : string;  (** nginx_deployment_id *)
  package_data : string option; [@option]  (** package_data *)
  root_file : string;  (** root_file *)
  config_file : azurerm_nginx_configuration__config_file list;
  protected_file : azurerm_nginx_configuration__protected_file list;
  timeouts : azurerm_nginx_configuration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_configuration *)

let azurerm_nginx_configuration ?package_data ?timeouts
    ~nginx_deployment_id ~root_file ~config_file ~protected_file
    __resource_id =
  let __resource_type = "azurerm_nginx_configuration" in
  let __resource =
    {
      nginx_deployment_id;
      package_data;
      root_file;
      config_file;
      protected_file;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nginx_configuration __resource);
  ()
