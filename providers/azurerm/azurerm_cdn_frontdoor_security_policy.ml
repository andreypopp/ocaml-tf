(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type security_policies__firewall__association__domain = {
  cdn_frontdoor_domain_id : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : security_policies__firewall__association__domain) -> ()

let yojson_of_security_policies__firewall__association__domain =
  (function
   | { cdn_frontdoor_domain_id = v_cdn_frontdoor_domain_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_domain_id
         in
         ("cdn_frontdoor_domain_id", arg) :: bnds
       in
       `Assoc bnds
    : security_policies__firewall__association__domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_policies__firewall__association__domain

[@@@deriving.end]

type security_policies__firewall__association = {
  patterns_to_match : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain : security_policies__firewall__association__domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_policies__firewall__association) -> ()

let yojson_of_security_policies__firewall__association =
  (function
   | { patterns_to_match = v_patterns_to_match; domain = v_domain }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_domain then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_policies__firewall__association__domain)
               v_domain
           in
           let bnd = "domain", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_patterns_to_match then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_patterns_to_match
           in
           let bnd = "patterns_to_match", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_policies__firewall__association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_policies__firewall__association

[@@@deriving.end]

type security_policies__firewall = {
  cdn_frontdoor_firewall_policy_id : string prop;
  association : security_policies__firewall__association list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_policies__firewall) -> ()

let yojson_of_security_policies__firewall =
  (function
   | {
       cdn_frontdoor_firewall_policy_id =
         v_cdn_frontdoor_firewall_policy_id;
       association = v_association;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_association then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_security_policies__firewall__association)
               v_association
           in
           let bnd = "association", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cdn_frontdoor_firewall_policy_id
         in
         ("cdn_frontdoor_firewall_policy_id", arg) :: bnds
       in
       `Assoc bnds
    : security_policies__firewall ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_policies__firewall

[@@@deriving.end]

type security_policies = {
  firewall : security_policies__firewall list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : security_policies) -> ()

let yojson_of_security_policies =
  (function
   | { firewall = v_firewall } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_firewall then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_policies__firewall)
               v_firewall
           in
           let bnd = "firewall", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : security_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_security_policies

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_cdn_frontdoor_security_policy = {
  cdn_frontdoor_profile_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  security_policies : security_policies list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_security_policy) -> ()

let yojson_of_azurerm_cdn_frontdoor_security_policy =
  (function
   | {
       cdn_frontdoor_profile_id = v_cdn_frontdoor_profile_id;
       id = v_id;
       name = v_name;
       security_policies = v_security_policies;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_policies then bnds
         else
           let arg =
             (yojson_of_list yojson_of_security_policies)
               v_security_policies
           in
           let bnd = "security_policies", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_profile_id
         in
         ("cdn_frontdoor_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_security_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_security_policy

[@@@deriving.end]

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
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_profile_id ~name
    ~security_policies __id =
  let __type = "azurerm_cdn_frontdoor_security_policy" in
  let __attrs =
    ({
       tf_name = __id;
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
