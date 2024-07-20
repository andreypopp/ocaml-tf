(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type encryption = {
  current_versioned_key_expiration_timestamp : string prop;
  current_versioned_key_id : string prop;
  key_vault_key_id : string prop;
  last_key_rotation_timestamp : string prop;
  user_assigned_identity_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption) -> ()

let yojson_of_encryption =
  (function
   | {
       current_versioned_key_expiration_timestamp =
         v_current_versioned_key_expiration_timestamp;
       current_versioned_key_id = v_current_versioned_key_id;
       key_vault_key_id = v_key_vault_key_id;
       last_key_rotation_timestamp = v_last_key_rotation_timestamp;
       user_assigned_identity_id = v_user_assigned_identity_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_user_assigned_identity_id
         in
         ("user_assigned_identity_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_last_key_rotation_timestamp
         in
         ("last_key_rotation_timestamp", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_key_vault_key_id
         in
         ("key_vault_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_current_versioned_key_id
         in
         ("current_versioned_key_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_current_versioned_key_expiration_timestamp
         in
         ("current_versioned_key_expiration_timestamp", arg) :: bnds
       in
       `Assoc bnds
    : encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type network_rule = { action : string prop; subnet_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : network_rule) -> ()

let yojson_of_network_rule =
  (function
   | { action = v_action; subnet_id = v_subnet_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : network_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_rule

[@@@deriving.end]

type azurerm_elastic_san_volume_group = {
  elastic_san_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_elastic_san_volume_group) -> ()

let yojson_of_azurerm_elastic_san_volume_group =
  (function
   | {
       elastic_san_id = v_elastic_san_id;
       id = v_id;
       name = v_name;
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
           yojson_of_prop yojson_of_string v_elastic_san_id
         in
         ("elastic_san_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_elastic_san_volume_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_elastic_san_volume_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_elastic_san_volume_group ?id ?timeouts ~elastic_san_id
    ~name () : azurerm_elastic_san_volume_group =
  { elastic_san_id; id; name; timeouts }

type t = {
  tf_name : string;
  elastic_san_id : string prop;
  encryption : encryption list prop;
  encryption_type : string prop;
  id : string prop;
  identity : identity list prop;
  name : string prop;
  network_rule : network_rule list prop;
  protocol_type : string prop;
}

let make ?id ?timeouts ~elastic_san_id ~name __id =
  let __type = "azurerm_elastic_san_volume_group" in
  let __attrs =
    ({
       tf_name = __id;
       elastic_san_id = Prop.computed __type __id "elastic_san_id";
       encryption = Prop.computed __type __id "encryption";
       encryption_type = Prop.computed __type __id "encryption_type";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       name = Prop.computed __type __id "name";
       network_rule = Prop.computed __type __id "network_rule";
       protocol_type = Prop.computed __type __id "protocol_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_san_volume_group
        (azurerm_elastic_san_volume_group ?id ?timeouts
           ~elastic_san_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~elastic_san_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~elastic_san_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
