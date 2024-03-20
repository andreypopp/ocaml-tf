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

type azurerm_netapp_volume_quota_rule = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  quota_size_in_kib : float prop;
  quota_target : string prop option; [@option]
  quota_type : string prop;
  volume_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_netapp_volume_quota_rule) -> ()

let yojson_of_azurerm_netapp_volume_quota_rule =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       quota_size_in_kib = v_quota_size_in_kib;
       quota_target = v_quota_target;
       quota_type = v_quota_type;
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
         let arg = yojson_of_prop yojson_of_string v_quota_type in
         ("quota_type", arg) :: bnds
       in
       let bnds =
         match v_quota_target with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quota_target", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_quota_size_in_kib
         in
         ("quota_size_in_kib", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_netapp_volume_quota_rule ?id ?quota_target ?timeouts
    ~location ~name ~quota_size_in_kib ~quota_type ~volume_id () :
    azurerm_netapp_volume_quota_rule =
  {
    id;
    location;
    name;
    quota_size_in_kib;
    quota_target;
    quota_type;
    volume_id;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  quota_size_in_kib : float prop;
  quota_target : string prop;
  quota_type : string prop;
  volume_id : string prop;
}

let make ?id ?quota_target ?timeouts ~location ~name
    ~quota_size_in_kib ~quota_type ~volume_id __id =
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
        (azurerm_netapp_volume_quota_rule ?id ?quota_target ?timeouts
           ~location ~name ~quota_size_in_kib ~quota_type ~volume_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?quota_target ?timeouts ~location ~name
    ~quota_size_in_kib ~quota_type ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?quota_target ?timeouts ~location ~name
      ~quota_size_in_kib ~quota_type ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
