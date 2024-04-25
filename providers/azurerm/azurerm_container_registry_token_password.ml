(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type password1 = { expiry : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : password1) -> ()

let yojson_of_password1 =
  (function
   | { expiry = v_expiry } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : password1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_password1

[@@@deriving.end]

type password2 = { expiry : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : password2) -> ()

let yojson_of_password2 =
  (function
   | { expiry = v_expiry } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_expiry with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiry", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : password2 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_password2

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

type azurerm_container_registry_token_password = {
  container_registry_token_id : string prop;
  id : string prop option; [@option]
  password1 : password1 list;
  password2 : password2 list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_registry_token_password) -> ()

let yojson_of_azurerm_container_registry_token_password =
  (function
   | {
       container_registry_token_id = v_container_registry_token_id;
       id = v_id;
       password1 = v_password1;
       password2 = v_password2;
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
         let arg = yojson_of_list yojson_of_password2 v_password2 in
         ("password2", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_password1 v_password1 in
         ("password1", arg) :: bnds
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
           yojson_of_prop yojson_of_string
             v_container_registry_token_id
         in
         ("container_registry_token_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_container_registry_token_password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_registry_token_password

[@@@deriving.end]

let password1 ?expiry () : password1 = { expiry }
let password2 ?expiry () : password2 = { expiry }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_container_registry_token_password ?id ?(password2 = [])
    ?timeouts ~container_registry_token_id ~password1 () :
    azurerm_container_registry_token_password =
  { container_registry_token_id; id; password1; password2; timeouts }

type t = {
  container_registry_token_id : string prop;
  id : string prop;
}

let make ?id ?(password2 = []) ?timeouts ~container_registry_token_id
    ~password1 __id =
  let __type = "azurerm_container_registry_token_password" in
  let __attrs =
    ({
       container_registry_token_id =
         Prop.computed __type __id "container_registry_token_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_registry_token_password
        (azurerm_container_registry_token_password ?id ~password2
           ?timeouts ~container_registry_token_id ~password1 ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(password2 = []) ?timeouts
    ~container_registry_token_id ~password1 __id =
  let (r : _ Tf_core.resource) =
    make ?id ~password2 ?timeouts ~container_registry_token_id
      ~password1 __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
