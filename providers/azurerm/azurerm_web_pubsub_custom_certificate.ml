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

type azurerm_web_pubsub_custom_certificate = {
  custom_certificate_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  web_pubsub_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_web_pubsub_custom_certificate) -> ()

let yojson_of_azurerm_web_pubsub_custom_certificate =
  (function
   | {
       custom_certificate_id = v_custom_certificate_id;
       id = v_id;
       name = v_name;
       web_pubsub_id = v_web_pubsub_id;
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
         let arg = yojson_of_prop yojson_of_string v_web_pubsub_id in
         ("web_pubsub_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_custom_certificate_id
         in
         ("custom_certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_web_pubsub_custom_certificate ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_web_pubsub_custom_certificate

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_web_pubsub_custom_certificate ?id ?timeouts
    ~custom_certificate_id ~name ~web_pubsub_id () :
    azurerm_web_pubsub_custom_certificate =
  { custom_certificate_id; id; name; web_pubsub_id; timeouts }

type t = {
  certificate_version : string prop;
  custom_certificate_id : string prop;
  id : string prop;
  name : string prop;
  web_pubsub_id : string prop;
}

let make ?id ?timeouts ~custom_certificate_id ~name ~web_pubsub_id
    __id =
  let __type = "azurerm_web_pubsub_custom_certificate" in
  let __attrs =
    ({
       certificate_version =
         Prop.computed __type __id "certificate_version";
       custom_certificate_id =
         Prop.computed __type __id "custom_certificate_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       web_pubsub_id = Prop.computed __type __id "web_pubsub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_web_pubsub_custom_certificate
        (azurerm_web_pubsub_custom_certificate ?id ?timeouts
           ~custom_certificate_id ~name ~web_pubsub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~custom_certificate_id ~name
    ~web_pubsub_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~custom_certificate_id ~name ~web_pubsub_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
