(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_rule_set = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_rule_set *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cdn_frontdoor_rule_set ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name () :
    azurerm_cdn_frontdoor_rule_set =
  { cdn_frontdoor_profile_id; id; name; timeouts }

type t = {
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_profile_id ~name __id =
  let __type = "azurerm_cdn_frontdoor_rule_set" in
  let __attrs =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_rule_set
        (azurerm_cdn_frontdoor_rule_set ?id ?timeouts
           ~cdn_frontdoor_profile_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_profile_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
