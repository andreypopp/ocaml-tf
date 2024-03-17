(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_container_app_environment_certificate__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_certificate__timeouts *)

type azurerm_container_app_environment_certificate = {
  certificate_blob_base64 : string;
      (** The Certificate Private Key as a base64 encoded PFX or PEM. *)
  certificate_password : string;
      (** The password for the Certificate. *)
  container_app_environment_id : string;
      (** The Container App Managed Environment ID to configure this Certificate on. *)
  name : string;
      (** The name of the Container Apps Environment Certificate. *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts :
    azurerm_container_app_environment_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_certificate *)

let azurerm_container_app_environment_certificate ?tags ?timeouts
    ~certificate_blob_base64 ~certificate_password
    ~container_app_environment_id ~name __resource_id =
  let __resource_type =
    "azurerm_container_app_environment_certificate"
  in
  let __resource =
    {
      certificate_blob_base64;
      certificate_password;
      container_app_environment_id;
      name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app_environment_certificate
       __resource);
  ()
