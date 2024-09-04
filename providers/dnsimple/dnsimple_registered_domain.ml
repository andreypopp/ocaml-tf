(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dnsimple_registered_domain = {
  auto_renew_enabled : bool prop option; [@option]
  contact_id : float prop;
  dnssec_enabled : bool prop option; [@option]
  extended_attributes : string prop Tf_core.assoc option; [@option]
  name : string prop;
  premium_price : string prop option; [@option]
  timeouts : json prop option; [@option]
  transfer_lock_enabled : bool prop option; [@option]
  whois_privacy_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dnsimple_registered_domain) -> ()

let yojson_of_dnsimple_registered_domain =
  (function
   | {
       auto_renew_enabled = v_auto_renew_enabled;
       contact_id = v_contact_id;
       dnssec_enabled = v_dnssec_enabled;
       extended_attributes = v_extended_attributes;
       name = v_name;
       premium_price = v_premium_price;
       timeouts = v_timeouts;
       transfer_lock_enabled = v_transfer_lock_enabled;
       whois_privacy_enabled = v_whois_privacy_enabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_whois_privacy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "whois_privacy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transfer_lock_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "transfer_lock_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeouts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_json v in
             let bnd = "timeouts", arg in
             bnd :: bnds
       in
       let bnds =
         match v_premium_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "premium_price", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_extended_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "extended_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dnssec_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "dnssec_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_contact_id in
         ("contact_id", arg) :: bnds
       in
       let bnds =
         match v_auto_renew_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_renew_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : dnsimple_registered_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dnsimple_registered_domain

[@@@deriving.end]

let dnsimple_registered_domain ?auto_renew_enabled ?dnssec_enabled
    ?extended_attributes ?premium_price ?timeouts
    ?transfer_lock_enabled ?whois_privacy_enabled ~contact_id ~name
    () : dnsimple_registered_domain =
  {
    auto_renew_enabled;
    contact_id;
    dnssec_enabled;
    extended_attributes;
    name;
    premium_price;
    timeouts;
    transfer_lock_enabled;
    whois_privacy_enabled;
  }

type t = {
  tf_name : string;
  account_id : float prop;
  auto_renew_enabled : bool prop;
  contact_id : float prop;
  dnssec_enabled : bool prop;
  domain_registration : json prop;
  expires_at : string prop;
  extended_attributes : string Tf_core.assoc prop;
  id : float prop;
  name : string prop;
  premium_price : string prop;
  registrant_change : json prop;
  state : string prop;
  timeouts : json prop;
  transfer_lock_enabled : bool prop;
  unicode_name : string prop;
  whois_privacy_enabled : bool prop;
}

let make ?auto_renew_enabled ?dnssec_enabled ?extended_attributes
    ?premium_price ?timeouts ?transfer_lock_enabled
    ?whois_privacy_enabled ~contact_id ~name __id =
  let __type = "dnsimple_registered_domain" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       auto_renew_enabled =
         Prop.computed __type __id "auto_renew_enabled";
       contact_id = Prop.computed __type __id "contact_id";
       dnssec_enabled = Prop.computed __type __id "dnssec_enabled";
       domain_registration =
         Prop.computed __type __id "domain_registration";
       expires_at = Prop.computed __type __id "expires_at";
       extended_attributes =
         Prop.computed __type __id "extended_attributes";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       premium_price = Prop.computed __type __id "premium_price";
       registrant_change =
         Prop.computed __type __id "registrant_change";
       state = Prop.computed __type __id "state";
       timeouts = Prop.computed __type __id "timeouts";
       transfer_lock_enabled =
         Prop.computed __type __id "transfer_lock_enabled";
       unicode_name = Prop.computed __type __id "unicode_name";
       whois_privacy_enabled =
         Prop.computed __type __id "whois_privacy_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_dnsimple_registered_domain
        (dnsimple_registered_domain ?auto_renew_enabled
           ?dnssec_enabled ?extended_attributes ?premium_price
           ?timeouts ?transfer_lock_enabled ?whois_privacy_enabled
           ~contact_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_renew_enabled ?dnssec_enabled
    ?extended_attributes ?premium_price ?timeouts
    ?transfer_lock_enabled ?whois_privacy_enabled ~contact_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?auto_renew_enabled ?dnssec_enabled ?extended_attributes
      ?premium_price ?timeouts ?transfer_lock_enabled
      ?whois_privacy_enabled ~contact_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
