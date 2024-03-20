(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type security_policies__firewall__association__domain = {
  cdn_frontdoor_domain_id : string prop;
      (** cdn_frontdoor_domain_id *)
}
[@@deriving yojson_of]
(** security_policies__firewall__association__domain *)

type security_policies__firewall__association = {
  patterns_to_match : string prop list;  (** patterns_to_match *)
  domain : security_policies__firewall__association__domain list;
}
[@@deriving yojson_of]
(** security_policies__firewall__association *)

type security_policies__firewall = {
  cdn_frontdoor_firewall_policy_id : string prop;
      (** cdn_frontdoor_firewall_policy_id *)
  association : security_policies__firewall__association list;
}
[@@deriving yojson_of]
(** security_policies__firewall *)

type security_policies = {
  firewall : security_policies__firewall list;
}
[@@deriving yojson_of]
(** security_policies *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_security_policy = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  security_policies : security_policies list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_security_policy *)

let security_policies__firewall__association__domain
    ~cdn_frontdoor_domain_id () :
    security_policies__firewall__association__domain =
  { cdn_frontdoor_domain_id }

let security_policies__firewall__association ~patterns_to_match
    ~domain () : security_policies__firewall__association =
  { patterns_to_match; domain }

let security_policies__firewall ~cdn_frontdoor_firewall_policy_id
    ~association () : security_policies__firewall =
  { cdn_frontdoor_firewall_policy_id; association }

let security_policies ~firewall () : security_policies = { firewall }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_cdn_frontdoor_security_policy ?id ?timeouts
    ~cdn_frontdoor_profile_id ~name ~security_policies () :
    azurerm_cdn_frontdoor_security_policy =
  { cdn_frontdoor_profile_id; id; name; security_policies; timeouts }

type t = {
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    ~security_policies __id =
  let __type = "azurerm_cdn_frontdoor_security_policy" in
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
      yojson_of_azurerm_cdn_frontdoor_security_policy
        (azurerm_cdn_frontdoor_security_policy ?id ?timeouts
           ~cdn_frontdoor_profile_id ~name ~security_policies ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    ~security_policies __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_profile_id ~name
      ~security_policies __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
