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

type t = {
  id : string prop;
  license_text_link : string prop;
  offer : string prop;
  plan : string prop;
  privacy_policy_link : string prop;
  publisher : string prop;
}

let azurerm_marketplace_agreement ?id ?timeouts ~offer ~plan
    ~publisher __resource_id =
  let __resource_type = "azurerm_marketplace_agreement" in
  let __resource =
    ({ id; offer; plan; publisher; timeouts }
      : azurerm_marketplace_agreement)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_marketplace_agreement __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       license_text_link =
         Prop.computed __resource_type __resource_id
           "license_text_link";
       offer = Prop.computed __resource_type __resource_id "offer";
       plan = Prop.computed __resource_type __resource_id "plan";
       privacy_policy_link =
         Prop.computed __resource_type __resource_id
           "privacy_policy_link";
       publisher =
         Prop.computed __resource_type __resource_id "publisher";
     }
      : t)
  in
  __resource_attributes
