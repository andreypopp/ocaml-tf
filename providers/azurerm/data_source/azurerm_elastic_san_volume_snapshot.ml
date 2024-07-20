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

type azurerm_elastic_san_volume_snapshot = {
  id : string prop option; [@option]
  name : string prop;
  volume_group_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_elastic_san_volume_snapshot) -> ()

let yojson_of_azurerm_elastic_san_volume_snapshot =
  (function
   | {
       id = v_id;
       name = v_name;
       volume_group_id = v_volume_group_id;
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
           yojson_of_prop yojson_of_string v_volume_group_id
         in
         ("volume_group_id", arg) :: bnds
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
    : azurerm_elastic_san_volume_snapshot ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_elastic_san_volume_snapshot

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_elastic_san_volume_snapshot ?id ?timeouts ~name
    ~volume_group_id () : azurerm_elastic_san_volume_snapshot =
  { id; name; volume_group_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  source_id : string prop;
  source_volume_size_in_gib : float prop;
  volume_group_id : string prop;
  volume_name : string prop;
}

let make ?id ?timeouts ~name ~volume_group_id __id =
  let __type = "azurerm_elastic_san_volume_snapshot" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       source_id = Prop.computed __type __id "source_id";
       source_volume_size_in_gib =
         Prop.computed __type __id "source_volume_size_in_gib";
       volume_group_id = Prop.computed __type __id "volume_group_id";
       volume_name = Prop.computed __type __id "volume_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_san_volume_snapshot
        (azurerm_elastic_san_volume_snapshot ?id ?timeouts ~name
           ~volume_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~volume_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~volume_group_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
