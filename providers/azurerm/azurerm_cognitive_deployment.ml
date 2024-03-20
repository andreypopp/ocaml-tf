(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?rai_policy_name ?version_upgrade_option ?timeouts
    ~cognitive_account_id ~name ~model ~scale __id =
  let __type = "azurerm_cognitive_deployment" in
  let __attrs =
    ({
       cognitive_account_id =
         Prop.computed __type __id "cognitive_account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rai_policy_name = Prop.computed __type __id "rai_policy_name";
       version_upgrade_option =
         Prop.computed __type __id "version_upgrade_option";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cognitive_deployment
        (azurerm_cognitive_deployment ?id ?rai_policy_name
           ?version_upgrade_option ?timeouts ~cognitive_account_id
           ~name ~model ~scale ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?rai_policy_name ?version_upgrade_option
    ?timeouts ~cognitive_account_id ~name ~model ~scale __id =
  let (r : _ Tf_core.resource) =
    make ?id ?rai_policy_name ?version_upgrade_option ?timeouts
      ~cognitive_account_id ~name ~model ~scale __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
