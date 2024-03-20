(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_marketplace_agreement = {
  id : string prop option; [@option]  (** id *)
  offer : string prop;  (** offer *)
  plan : string prop;  (** plan *)
  publisher : string prop;  (** publisher *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_marketplace_agreement *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_marketplace_agreement ?id ?timeouts ~offer ~plan
    ~publisher () : azurerm_marketplace_agreement =
  { id; offer; plan; publisher; timeouts }

type t = {
  id : string prop;
  license_text_link : string prop;
  offer : string prop;
  plan : string prop;
  privacy_policy_link : string prop;
  publisher : string prop;
}

let make ?id ?timeouts ~offer ~plan ~publisher __id =
  let __type = "azurerm_marketplace_agreement" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       license_text_link =
         Prop.computed __type __id "license_text_link";
       offer = Prop.computed __type __id "offer";
       plan = Prop.computed __type __id "plan";
       privacy_policy_link =
         Prop.computed __type __id "privacy_policy_link";
       publisher = Prop.computed __type __id "publisher";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_marketplace_agreement
        (azurerm_marketplace_agreement ?id ?timeouts ~offer ~plan
           ~publisher ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~offer ~plan ~publisher __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~offer ~plan ~publisher __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
