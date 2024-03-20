(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_disk_pool_managed_disk_attachment = {
  disk_pool_id : string prop;
  id : string prop option; [@option]
  managed_disk_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_disk_pool_managed_disk_attachment) -> ()

let yojson_of_azurerm_disk_pool_managed_disk_attachment =
  (function
   | {
       disk_pool_id = v_disk_pool_id;
       id = v_id;
       managed_disk_id = v_managed_disk_id;
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
           yojson_of_prop yojson_of_string v_managed_disk_id
         in
         ("managed_disk_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_disk_pool_id in
         ("disk_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_disk_pool_managed_disk_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_disk_pool_managed_disk_attachment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
    ~disk_pool_id ~managed_disk_id () :
    azurerm_disk_pool_managed_disk_attachment =
  { disk_pool_id; id; managed_disk_id; timeouts }

type t = {
  disk_pool_id : string prop;
  id : string prop;
  managed_disk_id : string prop;
}

let make ?id ?timeouts ~disk_pool_id ~managed_disk_id __id =
  let __type = "azurerm_disk_pool_managed_disk_attachment" in
  let __attrs =
    ({
       disk_pool_id = Prop.computed __type __id "disk_pool_id";
       id = Prop.computed __type __id "id";
       managed_disk_id = Prop.computed __type __id "managed_disk_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_disk_pool_managed_disk_attachment
        (azurerm_disk_pool_managed_disk_attachment ?id ?timeouts
           ~disk_pool_id ~managed_disk_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~disk_pool_id ~managed_disk_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~disk_pool_id ~managed_disk_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
