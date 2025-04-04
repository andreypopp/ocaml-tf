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

type azurerm_storage_container = {
  id : string prop option; [@option]
  metadata : string prop Tf_core.assoc option; [@option]
  name : string prop;
  storage_account_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_container) -> ()

let yojson_of_azurerm_storage_container =
  (function
   | {
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       storage_account_name = v_storage_account_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_metadata with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "metadata", arg in
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
       `Assoc bnds
    : azurerm_storage_container -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_container

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_storage_container ?id ?metadata ?timeouts ~name
    ~storage_account_name () : azurerm_storage_container =
  { id; metadata; name; storage_account_name; timeouts }

type t = {
  tf_name : string;
  container_access_type : string prop;
  default_encryption_scope : string prop;
  encryption_scope_override_enabled : bool prop;
  has_immutability_policy : bool prop;
  has_legal_hold : bool prop;
  id : string prop;
  metadata : string Tf_core.assoc prop;
  name : string prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

let make ?id ?metadata ?timeouts ~name ~storage_account_name __id =
  let __type = "azurerm_storage_container" in
  let __attrs =
    ({
       tf_name = __id;
       container_access_type =
         Prop.computed __type __id "container_access_type";
       default_encryption_scope =
         Prop.computed __type __id "default_encryption_scope";
       encryption_scope_override_enabled =
         Prop.computed __type __id
           "encryption_scope_override_enabled";
       has_immutability_policy =
         Prop.computed __type __id "has_immutability_policy";
       has_legal_hold = Prop.computed __type __id "has_legal_hold";
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       resource_manager_id =
         Prop.computed __type __id "resource_manager_id";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_container
        (azurerm_storage_container ?id ?metadata ?timeouts ~name
           ~storage_account_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?timeouts ~name
    ~storage_account_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ?timeouts ~name ~storage_account_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
