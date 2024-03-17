(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate__timeouts *)

type azurerm_app_service_certificate = {
  app_service_plan_id : string option; [@option]
      (** app_service_plan_id *)
  id : string option; [@option]  (** id *)
  key_vault_id : string option; [@option]  (** key_vault_id *)
  key_vault_secret_id : string option; [@option]
      (** key_vault_secret_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  pfx_blob : string option; [@option]  (** pfx_blob *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_app_service_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_certificate *)

let azurerm_app_service_certificate ?app_service_plan_id ?id
    ?key_vault_id ?key_vault_secret_id ?password ?pfx_blob ?tags
    ?timeouts ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_app_service_certificate" in
  let __resource =
    {
      app_service_plan_id;
      id;
      key_vault_id;
      key_vault_secret_id;
      location;
      name;
      password;
      pfx_blob;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_certificate __resource);
  ()
