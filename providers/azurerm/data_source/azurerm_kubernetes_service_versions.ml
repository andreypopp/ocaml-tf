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

type azurerm_kubernetes_service_versions = {
  id : string prop option; [@option]
  include_preview : bool prop option; [@option]
  location : string prop;
  version_prefix : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_service_versions) -> ()

let yojson_of_azurerm_kubernetes_service_versions =
  (function
   | {
       id = v_id;
       include_preview = v_include_preview;
       location = v_location;
       version_prefix = v_version_prefix;
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
         match v_version_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_include_preview with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_preview", arg in
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
    : azurerm_kubernetes_service_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_service_versions

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_kubernetes_service_versions ?id ?include_preview
    ?version_prefix ?timeouts ~location () :
    azurerm_kubernetes_service_versions =
  { id; include_preview; location; version_prefix; timeouts }

type t = {
  tf_name : string;
  default_version : string prop;
  id : string prop;
  include_preview : bool prop;
  latest_version : string prop;
  location : string prop;
  version_prefix : string prop;
  versions : string list prop;
}

let make ?id ?include_preview ?version_prefix ?timeouts ~location
    __id =
  let __type = "azurerm_kubernetes_service_versions" in
  let __attrs =
    ({
       tf_name = __id;
       default_version = Prop.computed __type __id "default_version";
       id = Prop.computed __type __id "id";
       include_preview = Prop.computed __type __id "include_preview";
       latest_version = Prop.computed __type __id "latest_version";
       location = Prop.computed __type __id "location";
       version_prefix = Prop.computed __type __id "version_prefix";
       versions = Prop.computed __type __id "versions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_service_versions
        (azurerm_kubernetes_service_versions ?id ?include_preview
           ?version_prefix ?timeouts ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_preview ?version_prefix
    ?timeouts ~location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_preview ?version_prefix ?timeouts ~location
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
