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

type azurerm_platform_image = {
  id : string prop option; [@option]
  location : string prop;
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_platform_image) -> ()

let yojson_of_azurerm_platform_image =
  (function
   | {
       id = v_id;
       location = v_location;
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
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
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
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
    : azurerm_platform_image -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_platform_image

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_platform_image ?id ?version ?timeouts ~location ~offer
    ~publisher ~sku () : azurerm_platform_image =
  { id; location; offer; publisher; sku; version; timeouts }

type t = {
  id : string prop;
  location : string prop;
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}

let make ?id ?version ?timeouts ~location ~offer ~publisher ~sku __id
    =
  let __type = "azurerm_platform_image" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       offer = Prop.computed __type __id "offer";
       publisher = Prop.computed __type __id "publisher";
       sku = Prop.computed __type __id "sku";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_platform_image
        (azurerm_platform_image ?id ?version ?timeouts ~location
           ~offer ~publisher ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ?timeouts ~location ~offer
    ~publisher ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?id ?version ?timeouts ~location ~offer ~publisher ~sku __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
