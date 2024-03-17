(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_certificate__timeouts *)

type azurerm_spring_cloud_certificate = {
  certificate_content : string option; [@option]
      (** certificate_content *)
  exclude_private_key : bool option; [@option]
      (** exclude_private_key *)
  id : string option; [@option]  (** id *)
  key_vault_certificate_id : string option; [@option]
      (** key_vault_certificate_id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  service_name : string;  (** service_name *)
  timeouts : azurerm_spring_cloud_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_certificate *)

let azurerm_spring_cloud_certificate ?certificate_content
    ?exclude_private_key ?id ?key_vault_certificate_id ?timeouts
    ~name ~resource_group_name ~service_name __resource_id =
  let __resource_type = "azurerm_spring_cloud_certificate" in
  let __resource =
    {
      certificate_content;
      exclude_private_key;
      id;
      key_vault_certificate_id;
      name;
      resource_group_name;
      service_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_certificate __resource);
  ()
