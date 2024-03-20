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

type shared_private_link_resource_types = {
  description : string prop;
  subresource_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : shared_private_link_resource_types) -> ()

let yojson_of_shared_private_link_resource_types =
  (function
   | {
       description = v_description;
       subresource_name = v_subresource_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_subresource_name
         in
         ("subresource_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : shared_private_link_resource_types ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_shared_private_link_resource_types

[@@@deriving.end]

type azurerm_web_pubsub_private_link_resource = {
  id : string prop option; [@option]
  web_pubsub_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_web_pubsub_private_link_resource) -> ()

let yojson_of_azurerm_web_pubsub_private_link_resource =
  (function
   | {
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_web_pubsub_private_link_resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_web_pubsub_private_link_resource

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_web_pubsub_private_link_resource ?id ?timeouts
    ~web_pubsub_id () : azurerm_web_pubsub_private_link_resource =
  { id; web_pubsub_id; timeouts }

type t = {
  id : string prop;
  shared_private_link_resource_types :
    shared_private_link_resource_types list prop;
  web_pubsub_id : string prop;
}

let make ?id ?timeouts ~web_pubsub_id __id =
  let __type = "azurerm_web_pubsub_private_link_resource" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       shared_private_link_resource_types =
         Prop.computed __type __id
           "shared_private_link_resource_types";
       web_pubsub_id = Prop.computed __type __id "web_pubsub_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_web_pubsub_private_link_resource
        (azurerm_web_pubsub_private_link_resource ?id ?timeouts
           ~web_pubsub_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~web_pubsub_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~web_pubsub_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
