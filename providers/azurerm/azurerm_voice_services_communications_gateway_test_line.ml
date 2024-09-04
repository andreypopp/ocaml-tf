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

type azurerm_voice_services_communications_gateway_test_line = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  phone_number : string prop;
  purpose : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  voice_services_communications_gateway_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_voice_services_communications_gateway_test_line) ->
  ()

let yojson_of_azurerm_voice_services_communications_gateway_test_line
    =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       phone_number = v_phone_number;
       purpose = v_purpose;
       tags = v_tags;
       voice_services_communications_gateway_id =
         v_voice_services_communications_gateway_id;
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
           yojson_of_prop yojson_of_string
             v_voice_services_communications_gateway_id
         in
         ("voice_services_communications_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_purpose in
         ("purpose", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
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
    : azurerm_voice_services_communications_gateway_test_line ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_voice_services_communications_gateway_test_line

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_voice_services_communications_gateway_test_line ?id ?tags
    ?timeouts ~location ~name ~phone_number ~purpose
    ~voice_services_communications_gateway_id () :
    azurerm_voice_services_communications_gateway_test_line =
  {
    id;
    location;
    name;
    phone_number;
    purpose;
    tags;
    voice_services_communications_gateway_id;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  name : string prop;
  phone_number : string prop;
  purpose : string prop;
  tags : string Tf_core.assoc prop;
  voice_services_communications_gateway_id : string prop;
}

let make ?id ?tags ?timeouts ~location ~name ~phone_number ~purpose
    ~voice_services_communications_gateway_id __id =
  let __type =
    "azurerm_voice_services_communications_gateway_test_line"
  in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       phone_number = Prop.computed __type __id "phone_number";
       purpose = Prop.computed __type __id "purpose";
       tags = Prop.computed __type __id "tags";
       voice_services_communications_gateway_id =
         Prop.computed __type __id
           "voice_services_communications_gateway_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_voice_services_communications_gateway_test_line
        (azurerm_voice_services_communications_gateway_test_line ?id
           ?tags ?timeouts ~location ~name ~phone_number ~purpose
           ~voice_services_communications_gateway_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?timeouts ~location ~name
    ~phone_number ~purpose ~voice_services_communications_gateway_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?timeouts ~location ~name ~phone_number ~purpose
      ~voice_services_communications_gateway_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
