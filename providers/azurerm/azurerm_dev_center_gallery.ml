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

type azurerm_dev_center_gallery = {
  dev_center_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  shared_gallery_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_center_gallery) -> ()

let yojson_of_azurerm_dev_center_gallery =
  (function
   | {
       dev_center_id = v_dev_center_id;
       id = v_id;
       name = v_name;
       shared_gallery_id = v_shared_gallery_id;
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
           yojson_of_prop yojson_of_string v_shared_gallery_id
         in
         ("shared_gallery_id", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dev_center_id in
         ("dev_center_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_dev_center_gallery -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_center_gallery

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id () : azurerm_dev_center_gallery =
  { dev_center_id; id; name; shared_gallery_id; timeouts }

type t = {
  tf_name : string;
  dev_center_id : string prop;
  id : string prop;
  name : string prop;
  shared_gallery_id : string prop;
}

let make ?id ?timeouts ~dev_center_id ~name ~shared_gallery_id __id =
  let __type = "azurerm_dev_center_gallery" in
  let __attrs =
    ({
       tf_name = __id;
       dev_center_id = Prop.computed __type __id "dev_center_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       shared_gallery_id =
         Prop.computed __type __id "shared_gallery_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_center_gallery
        (azurerm_dev_center_gallery ?id ?timeouts ~dev_center_id
           ~name ~shared_gallery_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~dev_center_id ~name
    ~shared_gallery_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~dev_center_id ~name ~shared_gallery_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
