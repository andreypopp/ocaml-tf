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

type azurerm_static_web_app_custom_domain = {
  domain_name : string prop;
  id : string prop option; [@option]
  static_web_app_id : string prop;
  validation_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_static_web_app_custom_domain) -> ()

let yojson_of_azurerm_static_web_app_custom_domain =
  (function
   | {
       domain_name = v_domain_name;
       id = v_id;
       static_web_app_id = v_static_web_app_id;
       validation_type = v_validation_type;
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
           yojson_of_prop yojson_of_string v_validation_type
         in
         ("validation_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_static_web_app_id
         in
         ("static_web_app_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_static_web_app_custom_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_static_web_app_custom_domain

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_static_web_app_custom_domain ?id ?timeouts ~domain_name
    ~static_web_app_id ~validation_type () :
    azurerm_static_web_app_custom_domain =
  { domain_name; id; static_web_app_id; validation_type; timeouts }

type t = {
  tf_name : string;
  domain_name : string prop;
  id : string prop;
  static_web_app_id : string prop;
  validation_token : string prop;
  validation_type : string prop;
}

let make ?id ?timeouts ~domain_name ~static_web_app_id
    ~validation_type __id =
  let __type = "azurerm_static_web_app_custom_domain" in
  let __attrs =
    ({
       tf_name = __id;
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       static_web_app_id =
         Prop.computed __type __id "static_web_app_id";
       validation_token =
         Prop.computed __type __id "validation_token";
       validation_type = Prop.computed __type __id "validation_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_static_web_app_custom_domain
        (azurerm_static_web_app_custom_domain ?id ?timeouts
           ~domain_name ~static_web_app_id ~validation_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~domain_name ~static_web_app_id
    ~validation_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~domain_name ~static_web_app_id
      ~validation_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
