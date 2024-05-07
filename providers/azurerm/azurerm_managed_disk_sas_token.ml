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

type azurerm_managed_disk_sas_token = {
  access_level : string prop;
  duration_in_seconds : float prop;
  id : string prop option; [@option]
  managed_disk_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_managed_disk_sas_token) -> ()

let yojson_of_azurerm_managed_disk_sas_token =
  (function
   | {
       access_level = v_access_level;
       duration_in_seconds = v_duration_in_seconds;
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
         let arg =
           yojson_of_prop yojson_of_float v_duration_in_seconds
         in
         ("duration_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_level in
         ("access_level", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_managed_disk_sas_token ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_managed_disk_sas_token

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id () :
    azurerm_managed_disk_sas_token =
  {
    access_level;
    duration_in_seconds;
    id;
    managed_disk_id;
    timeouts;
  }

type t = {
  tf_name : string;
  access_level : string prop;
  duration_in_seconds : float prop;
  id : string prop;
  managed_disk_id : string prop;
  sas_url : string prop;
}

let make ?id ?timeouts ~access_level ~duration_in_seconds
    ~managed_disk_id __id =
  let __type = "azurerm_managed_disk_sas_token" in
  let __attrs =
    ({
       tf_name = __id;
       access_level = Prop.computed __type __id "access_level";
       duration_in_seconds =
         Prop.computed __type __id "duration_in_seconds";
       id = Prop.computed __type __id "id";
       managed_disk_id = Prop.computed __type __id "managed_disk_id";
       sas_url = Prop.computed __type __id "sas_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_managed_disk_sas_token
        (azurerm_managed_disk_sas_token ?id ?timeouts ~access_level
           ~duration_in_seconds ~managed_disk_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~access_level
    ~duration_in_seconds ~managed_disk_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~access_level ~duration_in_seconds
      ~managed_disk_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
