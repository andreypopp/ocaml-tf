(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type extension = {
  additional_extension_properties :
    (string * string prop) list option;
      [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : extension) -> ()

let yojson_of_extension =
  (function
   | {
       additional_extension_properties =
         v_additional_extension_properties;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_additional_extension_properties with
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
             let bnd = "additional_extension_properties", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : extension -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extension

[@@@deriving.end]

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

type azurerm_security_center_subscription_pricing = {
  id : string prop option; [@option]
  resource_type : string prop option; [@option]
  subplan : string prop option; [@option]
  tier : string prop;
  extension : extension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_security_center_subscription_pricing) -> ()

let yojson_of_azurerm_security_center_subscription_pricing =
  (function
   | {
       id = v_id;
       resource_type = v_resource_type;
       subplan = v_subplan;
       tier = v_tier;
       extension = v_extension;
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
         if Stdlib.( = ) [] v_extension then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extension) v_extension
           in
           let bnd = "extension", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         match v_subplan with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subplan", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_type", arg in
             bnd :: bnds
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
    : azurerm_security_center_subscription_pricing ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_security_center_subscription_pricing

[@@@deriving.end]

let extension ?additional_extension_properties ~name () : extension =
  { additional_extension_properties; name }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_security_center_subscription_pricing ?id ?resource_type
    ?subplan ?timeouts ~tier ~extension () :
    azurerm_security_center_subscription_pricing =
  { id; resource_type; subplan; tier; extension; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  resource_type : string prop;
  subplan : string prop;
  tier : string prop;
}

let make ?id ?resource_type ?subplan ?timeouts ~tier ~extension __id
    =
  let __type = "azurerm_security_center_subscription_pricing" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       resource_type = Prop.computed __type __id "resource_type";
       subplan = Prop.computed __type __id "subplan";
       tier = Prop.computed __type __id "tier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_security_center_subscription_pricing
        (azurerm_security_center_subscription_pricing ?id
           ?resource_type ?subplan ?timeouts ~tier ~extension ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_type ?subplan ?timeouts ~tier
    ~extension __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_type ?subplan ?timeouts ~tier ~extension __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
