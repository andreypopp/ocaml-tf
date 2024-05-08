(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl__access_policy = {
  expiry : string prop;
  permissions : string prop;
  start : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : acl__access_policy) -> ()

let yojson_of_acl__access_policy =
  (function
   | {
       expiry = v_expiry;
       permissions = v_permissions;
       start = v_start;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_start in
         ("start", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permissions in
         ("permissions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_expiry in
         ("expiry", arg) :: bnds
       in
       `Assoc bnds
    : acl__access_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_acl__access_policy

[@@@deriving.end]

type acl = unit [@@deriving_inline yojson_of]

let _ = fun (_ : acl) -> ()

let yojson_of_acl =
  (yojson_of_unit : acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_acl

[@@@deriving.end]

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

type azurerm_storage_share = {
  id : string prop option; [@option]
  metadata : (string * string prop) list option; [@option]
  name : string prop;
  storage_account_name : string prop;
  acl : acl list; [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_share) -> ()

let yojson_of_azurerm_storage_share =
  (function
   | {
       id = v_id;
       metadata = v_metadata;
       name = v_name;
       storage_account_name = v_storage_account_name;
       acl = v_acl;
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
         if Stdlib.( = ) [] v_acl then bnds
         else
           let arg = (yojson_of_list yojson_of_acl) v_acl in
           let bnd = "acl", arg in
           bnd :: bnds
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
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
    : azurerm_storage_share -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_share

[@@@deriving.end]

let acl () = ()
let timeouts ?read () : timeouts = { read }

let azurerm_storage_share ?id ?metadata ?(acl = []) ?timeouts ~name
    ~storage_account_name () : azurerm_storage_share =
  { id; metadata; name; storage_account_name; acl; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  quota : float prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
}

let make ?id ?metadata ?(acl = []) ?timeouts ~name
    ~storage_account_name __id =
  let __type = "azurerm_storage_share" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       metadata = Prop.computed __type __id "metadata";
       name = Prop.computed __type __id "name";
       quota = Prop.computed __type __id "quota";
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
      yojson_of_azurerm_storage_share
        (azurerm_storage_share ?id ?metadata ~acl ?timeouts ~name
           ~storage_account_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?metadata ?(acl = []) ?timeouts ~name
    ~storage_account_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?metadata ~acl ?timeouts ~name ~storage_account_name
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
