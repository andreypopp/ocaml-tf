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

type azurerm_palo_alto_local_rulestack_certificate = {
  audit_comment : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  key_vault_certificate_id : string prop option; [@option]
  name : string prop;
  rulestack_id : string prop;
  self_signed : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_palo_alto_local_rulestack_certificate) -> ()

let yojson_of_azurerm_palo_alto_local_rulestack_certificate =
  (function
   | {
       audit_comment = v_audit_comment;
       description = v_description;
       id = v_id;
       key_vault_certificate_id = v_key_vault_certificate_id;
       name = v_name;
       rulestack_id = v_rulestack_id;
       self_signed = v_self_signed;
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
         match v_self_signed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "self_signed", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rulestack_id in
         ("rulestack_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_vault_certificate_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_vault_certificate_id", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_comment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_palo_alto_local_rulestack_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_palo_alto_local_rulestack_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_palo_alto_local_rulestack_certificate ?audit_comment
    ?description ?id ?key_vault_certificate_id ?self_signed ?timeouts
    ~name ~rulestack_id () :
    azurerm_palo_alto_local_rulestack_certificate =
  {
    audit_comment;
    description;
    id;
    key_vault_certificate_id;
    name;
    rulestack_id;
    self_signed;
    timeouts;
  }

type t = {
  tf_name : string;
  audit_comment : string prop;
  description : string prop;
  id : string prop;
  key_vault_certificate_id : string prop;
  name : string prop;
  rulestack_id : string prop;
  self_signed : bool prop;
}

let make ?audit_comment ?description ?id ?key_vault_certificate_id
    ?self_signed ?timeouts ~name ~rulestack_id __id =
  let __type = "azurerm_palo_alto_local_rulestack_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       audit_comment = Prop.computed __type __id "audit_comment";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       key_vault_certificate_id =
         Prop.computed __type __id "key_vault_certificate_id";
       name = Prop.computed __type __id "name";
       rulestack_id = Prop.computed __type __id "rulestack_id";
       self_signed = Prop.computed __type __id "self_signed";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_palo_alto_local_rulestack_certificate
        (azurerm_palo_alto_local_rulestack_certificate ?audit_comment
           ?description ?id ?key_vault_certificate_id ?self_signed
           ?timeouts ~name ~rulestack_id ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_comment ?description ?id
    ?key_vault_certificate_id ?self_signed ?timeouts ~name
    ~rulestack_id __id =
  let (r : _ Tf_core.resource) =
    make ?audit_comment ?description ?id ?key_vault_certificate_id
      ?self_signed ?timeouts ~name ~rulestack_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
