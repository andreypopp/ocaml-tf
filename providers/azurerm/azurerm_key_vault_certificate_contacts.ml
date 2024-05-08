(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type contact = {
  email : string prop;
  name : string prop option; [@option]
  phone : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : contact) -> ()

let yojson_of_contact =
  (function
   | { email = v_email; name = v_name; phone = v_phone } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_contact

[@@@deriving.end]

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

type azurerm_key_vault_certificate_contacts = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  contact : contact list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_certificate_contacts) -> ()

let yojson_of_azurerm_key_vault_certificate_contacts =
  (function
   | {
       id = v_id;
       key_vault_id = v_key_vault_id;
       contact = v_contact;
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
         if [] = v_contact then bnds
         else
           let arg = (yojson_of_list yojson_of_contact) v_contact in
           let bnd = "contact", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_key_vault_certificate_contacts ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_certificate_contacts

[@@@deriving.end]

let contact ?name ?phone ~email () : contact = { email; name; phone }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_certificate_contacts ?id ?timeouts
    ~key_vault_id ~contact () :
    azurerm_key_vault_certificate_contacts =
  { id; key_vault_id; contact; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  key_vault_id : string prop;
}

let make ?id ?timeouts ~key_vault_id ~contact __id =
  let __type = "azurerm_key_vault_certificate_contacts" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_certificate_contacts
        (azurerm_key_vault_certificate_contacts ?id ?timeouts
           ~key_vault_id ~contact ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~key_vault_id ~contact __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~key_vault_id ~contact __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
