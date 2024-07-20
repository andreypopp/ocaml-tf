(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type verification_records__spf = {
  name : string prop;
  ttl : float prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_records__spf) -> ()

let yojson_of_verification_records__spf =
  (function
   | { name = v_name; ttl = v_ttl; type_ = v_type_; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : verification_records__spf -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_records__spf

[@@@deriving.end]

type verification_records__domain = {
  name : string prop;
  ttl : float prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_records__domain) -> ()

let yojson_of_verification_records__domain =
  (function
   | { name = v_name; ttl = v_ttl; type_ = v_type_; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : verification_records__domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_records__domain

[@@@deriving.end]

type verification_records__dmarc = {
  name : string prop;
  ttl : float prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_records__dmarc) -> ()

let yojson_of_verification_records__dmarc =
  (function
   | { name = v_name; ttl = v_ttl; type_ = v_type_; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : verification_records__dmarc ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_records__dmarc

[@@@deriving.end]

type verification_records__dkim2 = {
  name : string prop;
  ttl : float prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_records__dkim2) -> ()

let yojson_of_verification_records__dkim2 =
  (function
   | { name = v_name; ttl = v_ttl; type_ = v_type_; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : verification_records__dkim2 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_records__dkim2

[@@@deriving.end]

type verification_records__dkim = {
  name : string prop;
  ttl : float prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_records__dkim) -> ()

let yojson_of_verification_records__dkim =
  (function
   | { name = v_name; ttl = v_ttl; type_ = v_type_; value = v_value }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : verification_records__dkim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_records__dkim

[@@@deriving.end]

type verification_records = {
  dkim : verification_records__dkim list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dkim2 : verification_records__dkim2 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dmarc : verification_records__dmarc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  domain : verification_records__domain list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  spf : verification_records__spf list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : verification_records) -> ()

let yojson_of_verification_records =
  (function
   | {
       dkim = v_dkim;
       dkim2 = v_dkim2;
       dmarc = v_dmarc;
       domain = v_domain;
       spf = v_spf;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_spf then bnds
         else
           let arg =
             (yojson_of_list yojson_of_verification_records__spf)
               v_spf
           in
           let bnd = "spf", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_domain then bnds
         else
           let arg =
             (yojson_of_list yojson_of_verification_records__domain)
               v_domain
           in
           let bnd = "domain", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dmarc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_verification_records__dmarc)
               v_dmarc
           in
           let bnd = "dmarc", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dkim2 then bnds
         else
           let arg =
             (yojson_of_list yojson_of_verification_records__dkim2)
               v_dkim2
           in
           let bnd = "dkim2", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dkim then bnds
         else
           let arg =
             (yojson_of_list yojson_of_verification_records__dkim)
               v_dkim
           in
           let bnd = "dkim", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : verification_records -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_verification_records

[@@@deriving.end]

type azurerm_email_communication_service_domain = {
  domain_management : string prop;
  email_service_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  user_engagement_tracking_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_email_communication_service_domain) -> ()

let yojson_of_azurerm_email_communication_service_domain =
  (function
   | {
       domain_management = v_domain_management;
       email_service_id = v_email_service_id;
       id = v_id;
       name = v_name;
       tags = v_tags;
       user_engagement_tracking_enabled =
         v_user_engagement_tracking_enabled;
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
         match v_user_engagement_tracking_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "user_engagement_tracking_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
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
           yojson_of_prop yojson_of_string v_email_service_id
         in
         ("email_service_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_domain_management
         in
         ("domain_management", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_email_communication_service_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_email_communication_service_domain

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_email_communication_service_domain ?id ?tags
    ?user_engagement_tracking_enabled ?timeouts ~domain_management
    ~email_service_id ~name () :
    azurerm_email_communication_service_domain =
  {
    domain_management;
    email_service_id;
    id;
    name;
    tags;
    user_engagement_tracking_enabled;
    timeouts;
  }

type t = {
  tf_name : string;
  domain_management : string prop;
  email_service_id : string prop;
  from_sender_domain : string prop;
  id : string prop;
  mail_from_sender_domain : string prop;
  name : string prop;
  tags : (string * string) list prop;
  user_engagement_tracking_enabled : bool prop;
  verification_records : verification_records list prop;
}

let make ?id ?tags ?user_engagement_tracking_enabled ?timeouts
    ~domain_management ~email_service_id ~name __id =
  let __type = "azurerm_email_communication_service_domain" in
  let __attrs =
    ({
       tf_name = __id;
       domain_management =
         Prop.computed __type __id "domain_management";
       email_service_id =
         Prop.computed __type __id "email_service_id";
       from_sender_domain =
         Prop.computed __type __id "from_sender_domain";
       id = Prop.computed __type __id "id";
       mail_from_sender_domain =
         Prop.computed __type __id "mail_from_sender_domain";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       user_engagement_tracking_enabled =
         Prop.computed __type __id "user_engagement_tracking_enabled";
       verification_records =
         Prop.computed __type __id "verification_records";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_email_communication_service_domain
        (azurerm_email_communication_service_domain ?id ?tags
           ?user_engagement_tracking_enabled ?timeouts
           ~domain_management ~email_service_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?user_engagement_tracking_enabled
    ?timeouts ~domain_management ~email_service_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?user_engagement_tracking_enabled ?timeouts
      ~domain_management ~email_service_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
