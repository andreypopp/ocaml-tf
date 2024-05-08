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

type azurerm_cdn_frontdoor_route_disable_link_to_default_domain = {
  cdn_frontdoor_custom_domain_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  cdn_frontdoor_route_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_cdn_frontdoor_route_disable_link_to_default_domain) ->
  ()

let yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain
    =
  (function
   | {
       cdn_frontdoor_custom_domain_ids =
         v_cdn_frontdoor_custom_domain_ids;
       cdn_frontdoor_route_id = v_cdn_frontdoor_route_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_route_id
         in
         ("cdn_frontdoor_route_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cdn_frontdoor_custom_domain_ids then
           bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cdn_frontdoor_custom_domain_ids
           in
           let bnd = "cdn_frontdoor_custom_domain_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_route_disable_link_to_default_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_route_disable_link_to_default_domain ?id
    ?timeouts ~cdn_frontdoor_custom_domain_ids
    ~cdn_frontdoor_route_id () :
    azurerm_cdn_frontdoor_route_disable_link_to_default_domain =
  {
    cdn_frontdoor_custom_domain_ids;
    cdn_frontdoor_route_id;
    id;
    timeouts;
  }

type t = {
  tf_name : string;
  cdn_frontdoor_custom_domain_ids : string list prop;
  cdn_frontdoor_route_id : string prop;
  id : string prop;
}

let make ?id ?timeouts ~cdn_frontdoor_custom_domain_ids
    ~cdn_frontdoor_route_id __id =
  let __type =
    "azurerm_cdn_frontdoor_route_disable_link_to_default_domain"
  in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_custom_domain_ids =
         Prop.computed __type __id "cdn_frontdoor_custom_domain_ids";
       cdn_frontdoor_route_id =
         Prop.computed __type __id "cdn_frontdoor_route_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_route_disable_link_to_default_domain
        (azurerm_cdn_frontdoor_route_disable_link_to_default_domain
           ?id ?timeouts ~cdn_frontdoor_custom_domain_ids
           ~cdn_frontdoor_route_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~cdn_frontdoor_custom_domain_ids ~cdn_frontdoor_route_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~cdn_frontdoor_custom_domain_ids
      ~cdn_frontdoor_route_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
