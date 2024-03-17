(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_cognitive_deployment__model = {
  format : string;  (** format *)
  name : string;  (** name *)
  version : string option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_deployment__model *)

type azurerm_cognitive_deployment__scale = {
  capacity : float option; [@option]  (** capacity *)
  family : string option; [@option]  (** family *)
  size : string option; [@option]  (** size *)
  tier : string option; [@option]  (** tier *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_deployment__scale *)

type azurerm_cognitive_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cognitive_deployment__timeouts *)

type azurerm_cognitive_deployment = {
  cognitive_account_id : string;  (** cognitive_account_id *)
  name : string;  (** name *)
  rai_policy_name : string option; [@option]  (** rai_policy_name *)
  version_upgrade_option : string option; [@option]
      (** version_upgrade_option *)
  model : azurerm_cognitive_deployment__model list;
  scale : azurerm_cognitive_deployment__scale list;
  timeouts : azurerm_cognitive_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_deployment *)

let azurerm_cognitive_deployment ?rai_policy_name
    ?version_upgrade_option ?timeouts ~cognitive_account_id ~name
    ~model ~scale __resource_id =
  let __resource_type = "azurerm_cognitive_deployment" in
  let __resource =
    {
      cognitive_account_id;
      name;
      rai_policy_name;
      version_upgrade_option;
      model;
      scale;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cognitive_deployment __resource);
  ()
