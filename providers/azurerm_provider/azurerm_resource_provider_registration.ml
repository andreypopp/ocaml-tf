(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_provider_registration__feature = {
  name : string prop;  (** name *)
  registered : bool prop;  (** registered *)
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration__feature *)

type azurerm_resource_provider_registration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration__timeouts *)

type azurerm_resource_provider_registration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  feature : azurerm_resource_provider_registration__feature list;
  timeouts : azurerm_resource_provider_registration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_provider_registration *)

let azurerm_resource_provider_registration ?id ?timeouts ~name
    ~feature __resource_id =
  let __resource_type = "azurerm_resource_provider_registration" in
  let __resource = { id; name; feature; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_provider_registration __resource);
  ()
