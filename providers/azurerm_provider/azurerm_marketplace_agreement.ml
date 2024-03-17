(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_marketplace_agreement__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_marketplace_agreement__timeouts *)

type azurerm_marketplace_agreement = {
  id : string prop option; [@option]  (** id *)
  offer : string prop;  (** offer *)
  plan : string prop;  (** plan *)
  publisher : string prop;  (** publisher *)
  timeouts : azurerm_marketplace_agreement__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_marketplace_agreement *)

let azurerm_marketplace_agreement ?id ?timeouts ~offer ~plan
    ~publisher __resource_id =
  let __resource_type = "azurerm_marketplace_agreement" in
  let __resource = { id; offer; plan; publisher; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_marketplace_agreement __resource);
  ()
