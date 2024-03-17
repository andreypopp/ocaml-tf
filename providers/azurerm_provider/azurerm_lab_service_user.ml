(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lab_service_user__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_user__timeouts *)

type azurerm_lab_service_user = {
  additional_usage_quota : string option; [@option]
      (** additional_usage_quota *)
  email : string;  (** email *)
  lab_id : string;  (** lab_id *)
  name : string;  (** name *)
  timeouts : azurerm_lab_service_user__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_user *)

let azurerm_lab_service_user ?additional_usage_quota ?timeouts ~email
    ~lab_id ~name __resource_id =
  let __resource_type = "azurerm_lab_service_user" in
  let __resource =
    { additional_usage_quota; email; lab_id; name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_user __resource);
  ()
