(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_provider_registration__feature = {
  name : string;  (** name *)
  registered : bool;  (** registered *)
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration__feature *)

type azurerm_resource_provider_registration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration__timeouts *)

type azurerm_resource_provider_registration = {
  name : string;  (** name *)
  feature : azurerm_resource_provider_registration__feature list;
  timeouts : azurerm_resource_provider_registration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration *)

let azurerm_resource_provider_registration ?timeouts ~name ~feature
    __resource_id =
  let __resource_type = "azurerm_resource_provider_registration" in
  let __resource = { name; feature; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_provider_registration __resource);
  ()
