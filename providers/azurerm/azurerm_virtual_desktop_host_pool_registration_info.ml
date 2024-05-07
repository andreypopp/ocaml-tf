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

type azurerm_virtual_desktop_host_pool_registration_info = {
  expiration_date : string prop;
  hostpool_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_virtual_desktop_host_pool_registration_info) -> ()

let yojson_of_azurerm_virtual_desktop_host_pool_registration_info =
  (function
   | {
       expiration_date = v_expiration_date;
       hostpool_id = v_hostpool_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostpool_id in
         ("hostpool_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_expiration_date
         in
         ("expiration_date", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_virtual_desktop_host_pool_registration_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_virtual_desktop_host_pool_registration_info

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_desktop_host_pool_registration_info ?id ?timeouts
    ~expiration_date ~hostpool_id () :
    azurerm_virtual_desktop_host_pool_registration_info =
  { expiration_date; hostpool_id; id; timeouts }

type t = {
  tf_name : string;
  expiration_date : string prop;
  hostpool_id : string prop;
  id : string prop;
  token : string prop;
}

let make ?id ?timeouts ~expiration_date ~hostpool_id __id =
  let __type =
    "azurerm_virtual_desktop_host_pool_registration_info"
  in
  let __attrs =
    ({
       tf_name = __id;
       expiration_date = Prop.computed __type __id "expiration_date";
       hostpool_id = Prop.computed __type __id "hostpool_id";
       id = Prop.computed __type __id "id";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_virtual_desktop_host_pool_registration_info
        (azurerm_virtual_desktop_host_pool_registration_info ?id
           ?timeouts ~expiration_date ~hostpool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~expiration_date ~hostpool_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~expiration_date ~hostpool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
