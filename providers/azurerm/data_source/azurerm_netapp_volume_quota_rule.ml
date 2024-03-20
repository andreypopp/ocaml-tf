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

type azurerm_netapp_volume_quota_rule = {
  id : string prop option; [@option]
  name : string prop;
  volume_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_volume_quota_rule) -> ()

let yojson_of_azurerm_netapp_volume_quota_rule =
  (function
   | {
       id = v_id;
       name = v_name;
       volume_id = v_volume_id;
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
         let arg = yojson_of_prop yojson_of_string v_volume_id in
         ("volume_id", arg) :: bnds
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
       `Assoc bnds
    : azurerm_netapp_volume_quota_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_netapp_volume_quota_rule

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_netapp_volume_quota_rule ?id ?timeouts ~name ~volume_id
    () : azurerm_netapp_volume_quota_rule =
  { id; name; volume_id; timeouts }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  quota_size_in_kib : float prop;
  quota_target : string prop;
  quota_type : string prop;
  volume_id : string prop;
}

let make ?id ?timeouts ~name ~volume_id __id =
  let __type = "azurerm_netapp_volume_quota_rule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       quota_size_in_kib =
         Prop.computed __type __id "quota_size_in_kib";
       quota_target = Prop.computed __type __id "quota_target";
       quota_type = Prop.computed __type __id "quota_type";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_netapp_volume_quota_rule
        (azurerm_netapp_volume_quota_rule ?id ?timeouts ~name
           ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~volume_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
