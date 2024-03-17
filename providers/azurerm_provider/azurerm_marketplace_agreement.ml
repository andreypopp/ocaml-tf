(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_marketplace_agreement__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_marketplace_agreement__timeouts *)

type azurerm_marketplace_agreement = {
  offer : string;  (** offer *)
  plan : string;  (** plan *)
  publisher : string;  (** publisher *)
  timeouts : azurerm_marketplace_agreement__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_marketplace_agreement *)

let azurerm_marketplace_agreement ?timeouts ~offer ~plan ~publisher
    __resource_id =
  let __resource_type = "azurerm_marketplace_agreement" in
  let __resource = { offer; plan; publisher; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_marketplace_agreement __resource);
  ()
