(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_nginx_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nginx_certificate__timeouts *)

type azurerm_nginx_certificate = {
  certificate_virtual_path : string;  (** certificate_virtual_path *)
  key_vault_secret_id : string;  (** key_vault_secret_id *)
  key_virtual_path : string;  (** key_virtual_path *)
  name : string;  (** name *)
  nginx_deployment_id : string;  (** nginx_deployment_id *)
  timeouts : azurerm_nginx_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_certificate *)

let azurerm_nginx_certificate ?timeouts ~certificate_virtual_path
    ~key_vault_secret_id ~key_virtual_path ~name ~nginx_deployment_id
    __resource_id =
  let __resource_type = "azurerm_nginx_certificate" in
  let __resource =
    {
      certificate_virtual_path;
      key_vault_secret_id;
      key_virtual_path;
      name;
      nginx_deployment_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nginx_certificate __resource);
  ()
