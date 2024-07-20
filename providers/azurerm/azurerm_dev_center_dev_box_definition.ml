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

type azurerm_dev_center_dev_box_definition = {
  dev_center_id : string prop;
  id : string prop option; [@option]
  image_reference_id : string prop;
  location : string prop;
  name : string prop;
  sku_name : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_dev_center_dev_box_definition) -> ()

let yojson_of_azurerm_dev_center_dev_box_definition =
  (function
   | {
       dev_center_id = v_dev_center_id;
       id = v_id;
       image_reference_id = v_image_reference_id;
       location = v_location;
       name = v_name;
       sku_name = v_sku_name;
       tags = v_tags;
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
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_image_reference_id
         in
         ("image_reference_id", arg) :: bnds
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
    : azurerm_dev_center_dev_box_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_dev_center_dev_box_definition

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_dev_center_dev_box_definition ?id ?tags ?timeouts
    ~dev_center_id ~image_reference_id ~location ~name ~sku_name () :
    azurerm_dev_center_dev_box_definition =
  {
    dev_center_id;
    id;
    image_reference_id;
    location;
    name;
    sku_name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  dev_center_id : string prop;
  id : string prop;
  image_reference_id : string prop;
  location : string prop;
  name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ?timeouts ~dev_center_id ~image_reference_id
    ~location ~name ~sku_name __id =
  let __type = "azurerm_dev_center_dev_box_definition" in
  let __attrs =
    ({
       tf_name = __id;
       dev_center_id = Prop.computed __type __id "dev_center_id";
       id = Prop.computed __type __id "id";
       image_reference_id =
         Prop.computed __type __id "image_reference_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_dev_center_dev_box_definition
        (azurerm_dev_center_dev_box_definition ?id ?tags ?timeouts
           ~dev_center_id ~image_reference_id ~location ~name
           ~sku_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~dev_center_id
    ~image_reference_id ~location ~name ~sku_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~dev_center_id ~image_reference_id
      ~location ~name ~sku_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
