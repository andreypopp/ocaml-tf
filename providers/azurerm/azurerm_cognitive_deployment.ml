(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type model = {
  format : string prop;  (** format *)
  name : string prop;  (** name *)
  version : string prop option; [@option]  (** version *)
}
[@@deriving yojson_of]
(** model *)

type scale = {
  capacity : float prop option; [@option]  (** capacity *)
  family : string prop option; [@option]  (** family *)
  size : string prop option; [@option]  (** size *)
  tier : string prop option; [@option]  (** tier *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** scale *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cognitive_deployment = {
  cognitive_account_id : string prop;  (** cognitive_account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rai_policy_name : string prop option; [@option]
      (** rai_policy_name *)
  version_upgrade_option : string prop option; [@option]
      (** version_upgrade_option *)
  model : model list;
  scale : scale list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cognitive_deployment *)

let model ?version ~format ~name () : model =
  { format; name; version }

let scale ?capacity ?family ?size ?tier ~type_ () : scale =
  { capacity; family; size; tier; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cognitive_deployment ?id ?rai_policy_name
    ?version_upgrade_option ?timeouts ~cognitive_account_id ~name
    ~model ~scale () : azurerm_cognitive_deployment =
  {
    cognitive_account_id;
    id;
    name;
    rai_policy_name;
    version_upgrade_option;
    model;
    scale;
    timeouts;
  }

type t = {
  cognitive_account_id : string prop;
  id : string prop;
  name : string prop;
  rai_policy_name : string prop;
  version_upgrade_option : string prop;
}

let register ?tf_module ?id ?rai_policy_name ?version_upgrade_option
    ?timeouts ~cognitive_account_id ~name ~model ~scale __resource_id
    =
  let __resource_type = "azurerm_cognitive_deployment" in
  let __resource =
    azurerm_cognitive_deployment ?id ?rai_policy_name
      ?version_upgrade_option ?timeouts ~cognitive_account_id ~name
      ~model ~scale ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cognitive_deployment __resource);
  let __resource_attributes =
    ({
       cognitive_account_id =
         Prop.computed __resource_type __resource_id
           "cognitive_account_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rai_policy_name =
         Prop.computed __resource_type __resource_id
           "rai_policy_name";
       version_upgrade_option =
         Prop.computed __resource_type __resource_id
           "version_upgrade_option";
     }
      : t)
  in
  __resource_attributes
