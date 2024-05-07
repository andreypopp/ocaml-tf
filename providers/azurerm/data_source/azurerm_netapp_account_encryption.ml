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

type azurerm_netapp_account_encryption = {
  encryption_key : string prop option; [@option]
  id : string prop option; [@option]
  netapp_account_id : string prop;
  system_assigned_identity_principal_id : string prop option;
      [@option]
  user_assigned_identity_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_account_encryption) -> ()

let yojson_of_azurerm_netapp_account_encryption =
  (function
   | {
       encryption_key = v_encryption_key;
       id = v_id;
       netapp_account_id = v_netapp_account_id;
       system_assigned_identity_principal_id =
         v_system_assigned_identity_principal_id;
       user_assigned_identity_id = v_user_assigned_identity_id;
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
         match v_user_assigned_identity_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_system_assigned_identity_principal_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "system_assigned_identity_principal_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_netapp_account_id
         in
         ("netapp_account_id", arg) :: bnds
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
         match v_encryption_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_netapp_account_encryption ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_account_encryption

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_netapp_account_encryption ?encryption_key ?id
    ?system_assigned_identity_principal_id ?user_assigned_identity_id
    ?timeouts ~netapp_account_id () :
    azurerm_netapp_account_encryption =
  {
    encryption_key;
    id;
    netapp_account_id;
    system_assigned_identity_principal_id;
    user_assigned_identity_id;
    timeouts;
  }

type t = {
  tf_name : string;
  encryption_key : string prop;
  id : string prop;
  netapp_account_id : string prop;
  system_assigned_identity_principal_id : string prop;
  user_assigned_identity_id : string prop;
}

let make ?encryption_key ?id ?system_assigned_identity_principal_id
    ?user_assigned_identity_id ?timeouts ~netapp_account_id __id =
  let __type = "azurerm_netapp_account_encryption" in
  let __attrs =
    ({
       tf_name = __id;
       encryption_key = Prop.computed __type __id "encryption_key";
       id = Prop.computed __type __id "id";
       netapp_account_id =
         Prop.computed __type __id "netapp_account_id";
       system_assigned_identity_principal_id =
         Prop.computed __type __id
           "system_assigned_identity_principal_id";
       user_assigned_identity_id =
         Prop.computed __type __id "user_assigned_identity_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_account_encryption
        (azurerm_netapp_account_encryption ?encryption_key ?id
           ?system_assigned_identity_principal_id
           ?user_assigned_identity_id ?timeouts ~netapp_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_key ?id
    ?system_assigned_identity_principal_id ?user_assigned_identity_id
    ?timeouts ~netapp_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_key ?id ?system_assigned_identity_principal_id
      ?user_assigned_identity_id ?timeouts ~netapp_account_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
