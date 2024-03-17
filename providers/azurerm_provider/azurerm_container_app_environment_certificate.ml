(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_container_app_environment_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_certificate__timeouts *)

type azurerm_container_app_environment_certificate = {
  certificate_blob_base64 : string prop;
      (** The Certificate Private Key as a base64 encoded PFX or PEM. *)
  certificate_password : string prop;
      (** The password for the Certificate. *)
  container_app_environment_id : string prop;
      (** The Container App Managed Environment ID to configure this Certificate on. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The name of the Container Apps Environment Certificate. *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts :
    azurerm_container_app_environment_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_certificate *)

let azurerm_container_app_environment_certificate ?id ?tags ?timeouts
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
      id;
      name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app_environment_certificate
       __resource);
  ()
