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

type identifier = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identifier) -> ()

let yojson_of_identifier =
  (function
   | { offer = v_offer; publisher = v_publisher; sku = v_sku } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : identifier -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identifier

[@@@deriving.end]

type purchase_plan = {
  name : string prop;
  product : string prop;
  publisher : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : purchase_plan) -> ()

let yojson_of_purchase_plan =
  (function
   | { name = v_name; product = v_product; publisher = v_publisher }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product in
         ("product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : purchase_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_purchase_plan

[@@@deriving.end]

type azurerm_shared_image = {
  gallery_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_shared_image) -> ()

let yojson_of_azurerm_shared_image =
  (function
   | {
       gallery_name = v_gallery_name;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_gallery_name in
         ("gallery_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_shared_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_shared_image

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_shared_image ?id ?timeouts ~gallery_name ~name
    ~resource_group_name () : azurerm_shared_image =
  { gallery_name; id; name; resource_group_name; timeouts }

type t = {
  architecture : string prop;
  description : string prop;
  eula : string prop;
  gallery_name : string prop;
  hyper_v_generation : string prop;
  id : string prop;
  identifier : identifier list prop;
  location : string prop;
  name : string prop;
  os_type : string prop;
  privacy_statement_uri : string prop;
  purchase_plan : purchase_plan list prop;
  release_note_uri : string prop;
  resource_group_name : string prop;
  specialized : bool prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~gallery_name ~name ~resource_group_name __id
    =
  let __type = "azurerm_shared_image" in
  let __attrs =
    ({
       architecture = Prop.computed __type __id "architecture";
       description = Prop.computed __type __id "description";
       eula = Prop.computed __type __id "eula";
       gallery_name = Prop.computed __type __id "gallery_name";
       hyper_v_generation =
         Prop.computed __type __id "hyper_v_generation";
       id = Prop.computed __type __id "id";
       identifier = Prop.computed __type __id "identifier";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       os_type = Prop.computed __type __id "os_type";
       privacy_statement_uri =
         Prop.computed __type __id "privacy_statement_uri";
       purchase_plan = Prop.computed __type __id "purchase_plan";
       release_note_uri =
         Prop.computed __type __id "release_note_uri";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       specialized = Prop.computed __type __id "specialized";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_shared_image
        (azurerm_shared_image ?id ?timeouts ~gallery_name ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~gallery_name ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~gallery_name ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
