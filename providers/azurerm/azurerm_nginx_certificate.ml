(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_nginx_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_nginx_certificate__timeouts *)

type azurerm_nginx_certificate = {
  certificate_virtual_path : string prop;
      (** certificate_virtual_path *)
  id : string prop option; [@option]  (** id *)
  key_vault_secret_id : string prop;  (** key_vault_secret_id *)
  key_virtual_path : string prop;  (** key_virtual_path *)
  name : string prop;  (** name *)
  nginx_deployment_id : string prop;  (** nginx_deployment_id *)
  timeouts : azurerm_nginx_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nginx_certificate *)

type t = {
  certificate_virtual_path : string prop;
  id : string prop;
  key_vault_secret_id : string prop;
  key_virtual_path : string prop;
  name : string prop;
  nginx_deployment_id : string prop;
}

let azurerm_nginx_certificate ?id ?timeouts ~certificate_virtual_path
    ~key_vault_secret_id ~key_virtual_path ~name ~nginx_deployment_id
    __resource_id =
  let __resource_type = "azurerm_nginx_certificate" in
  let __resource =
    ({
       certificate_virtual_path;
       id;
       key_vault_secret_id;
       key_virtual_path;
       name;
       nginx_deployment_id;
       timeouts;
     }
      : azurerm_nginx_certificate)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nginx_certificate __resource);
  let __resource_attributes =
    ({
       certificate_virtual_path =
         Prop.computed __resource_type __resource_id
           "certificate_virtual_path";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_secret_id =
         Prop.computed __resource_type __resource_id
           "key_vault_secret_id";
       key_virtual_path =
         Prop.computed __resource_type __resource_id
           "key_virtual_path";
       name = Prop.computed __resource_type __resource_id "name";
       nginx_deployment_id =
         Prop.computed __resource_type __resource_id
           "nginx_deployment_id";
     }
      : t)
  in
  __resource_attributes
