(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type author = {
  email : string prop option; [@option]
  link : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : author) -> ()

let yojson_of_author =
  (function
   | { email = v_email; link = v_link; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : author -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_author

[@@@deriving.end]

type category = {
  domains : string prop list option; [@option]
  verticals : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : category) -> ()

let yojson_of_category =
  (function
   | { domains = v_domains; verticals = v_verticals } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_verticals with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "verticals", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : category -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_category

[@@@deriving.end]

type source = {
  id : string prop option; [@option]
  kind : string prop;
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | { id = v_id; kind = v_kind; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
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
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type support = {
  email : string prop option; [@option]
  link : string prop option; [@option]
  name : string prop option; [@option]
  tier : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : support) -> ()

let yojson_of_support =
  (function
   | { email = v_email; link = v_link; name = v_name; tier = v_tier }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tier in
         ("tier", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_link with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "link", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : support -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_support

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

type azurerm_sentinel_metadata = {
  content_id : string prop;
  content_schema_version : string prop option; [@option]
  custom_version : string prop option; [@option]
  dependency : string prop option; [@option]
  first_publish_date : string prop option; [@option]
  icon_id : string prop option; [@option]
  id : string prop option; [@option]
  kind : string prop;
  last_publish_date : string prop option; [@option]
  name : string prop;
  parent_id : string prop;
  preview_images : string prop list option; [@option]
  preview_images_dark : string prop list option; [@option]
  providers : string prop list option; [@option]
  threat_analysis_tactics : string prop list option; [@option]
  threat_analysis_techniques : string prop list option; [@option]
  version : string prop option; [@option]
  workspace_id : string prop;
  author : author list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  category : category list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  support : support list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_sentinel_metadata) -> ()

let yojson_of_azurerm_sentinel_metadata =
  (function
   | {
       content_id = v_content_id;
       content_schema_version = v_content_schema_version;
       custom_version = v_custom_version;
       dependency = v_dependency;
       first_publish_date = v_first_publish_date;
       icon_id = v_icon_id;
       id = v_id;
       kind = v_kind;
       last_publish_date = v_last_publish_date;
       name = v_name;
       parent_id = v_parent_id;
       preview_images = v_preview_images;
       preview_images_dark = v_preview_images_dark;
       providers = v_providers;
       threat_analysis_tactics = v_threat_analysis_tactics;
       threat_analysis_techniques = v_threat_analysis_techniques;
       version = v_version;
       workspace_id = v_workspace_id;
       author = v_author;
       category = v_category;
       source = v_source;
       support = v_support;
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
         if Stdlib.( = ) [] v_support then bnds
         else
           let arg = (yojson_of_list yojson_of_support) v_support in
           let bnd = "support", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_category then bnds
         else
           let arg =
             (yojson_of_list yojson_of_category) v_category
           in
           let bnd = "category", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_author then bnds
         else
           let arg = (yojson_of_list yojson_of_author) v_author in
           let bnd = "author", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
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
         match v_threat_analysis_techniques with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "threat_analysis_techniques", arg in
             bnd :: bnds
       in
       let bnds =
         match v_threat_analysis_tactics with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "threat_analysis_tactics", arg in
             bnd :: bnds
       in
       let bnds =
         match v_providers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "providers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preview_images_dark with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preview_images_dark", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preview_images with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "preview_images", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent_id in
         ("parent_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_last_publish_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_publish_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
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
         match v_icon_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "icon_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_publish_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_publish_date", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dependency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dependency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_schema_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_schema_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_id in
         ("content_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_sentinel_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_sentinel_metadata

[@@@deriving.end]

let author ?email ?link ?name () : author = { email; link; name }

let category ?domains ?verticals () : category =
  { domains; verticals }

let source ?id ?name ~kind () : source = { id; kind; name }

let support ?email ?link ?name ~tier () : support =
  { email; link; name; tier }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_sentinel_metadata ?content_schema_version ?custom_version
    ?dependency ?first_publish_date ?icon_id ?id ?last_publish_date
    ?preview_images ?preview_images_dark ?providers
    ?threat_analysis_tactics ?threat_analysis_techniques ?version
    ?(author = []) ?(category = []) ?(source = []) ?(support = [])
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id () :
    azurerm_sentinel_metadata =
  {
    content_id;
    content_schema_version;
    custom_version;
    dependency;
    first_publish_date;
    icon_id;
    id;
    kind;
    last_publish_date;
    name;
    parent_id;
    preview_images;
    preview_images_dark;
    providers;
    threat_analysis_tactics;
    threat_analysis_techniques;
    version;
    workspace_id;
    author;
    category;
    source;
    support;
    timeouts;
  }

type t = {
  tf_name : string;
  content_id : string prop;
  content_schema_version : string prop;
  custom_version : string prop;
  dependency : string prop;
  first_publish_date : string prop;
  icon_id : string prop;
  id : string prop;
  kind : string prop;
  last_publish_date : string prop;
  name : string prop;
  parent_id : string prop;
  preview_images : string list prop;
  preview_images_dark : string list prop;
  providers : string list prop;
  threat_analysis_tactics : string list prop;
  threat_analysis_techniques : string list prop;
  version : string prop;
  workspace_id : string prop;
}

let make ?content_schema_version ?custom_version ?dependency
    ?first_publish_date ?icon_id ?id ?last_publish_date
    ?preview_images ?preview_images_dark ?providers
    ?threat_analysis_tactics ?threat_analysis_techniques ?version
    ?(author = []) ?(category = []) ?(source = []) ?(support = [])
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id __id =
  let __type = "azurerm_sentinel_metadata" in
  let __attrs =
    ({
       tf_name = __id;
       content_id = Prop.computed __type __id "content_id";
       content_schema_version =
         Prop.computed __type __id "content_schema_version";
       custom_version = Prop.computed __type __id "custom_version";
       dependency = Prop.computed __type __id "dependency";
       first_publish_date =
         Prop.computed __type __id "first_publish_date";
       icon_id = Prop.computed __type __id "icon_id";
       id = Prop.computed __type __id "id";
       kind = Prop.computed __type __id "kind";
       last_publish_date =
         Prop.computed __type __id "last_publish_date";
       name = Prop.computed __type __id "name";
       parent_id = Prop.computed __type __id "parent_id";
       preview_images = Prop.computed __type __id "preview_images";
       preview_images_dark =
         Prop.computed __type __id "preview_images_dark";
       providers = Prop.computed __type __id "providers";
       threat_analysis_tactics =
         Prop.computed __type __id "threat_analysis_tactics";
       threat_analysis_techniques =
         Prop.computed __type __id "threat_analysis_techniques";
       version = Prop.computed __type __id "version";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_sentinel_metadata
        (azurerm_sentinel_metadata ?content_schema_version
           ?custom_version ?dependency ?first_publish_date ?icon_id
           ?id ?last_publish_date ?preview_images
           ?preview_images_dark ?providers ?threat_analysis_tactics
           ?threat_analysis_techniques ?version ~author ~category
           ~source ~support ?timeouts ~content_id ~kind ~name
           ~parent_id ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?content_schema_version ?custom_version
    ?dependency ?first_publish_date ?icon_id ?id ?last_publish_date
    ?preview_images ?preview_images_dark ?providers
    ?threat_analysis_tactics ?threat_analysis_techniques ?version
    ?(author = []) ?(category = []) ?(source = []) ?(support = [])
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?content_schema_version ?custom_version ?dependency
      ?first_publish_date ?icon_id ?id ?last_publish_date
      ?preview_images ?preview_images_dark ?providers
      ?threat_analysis_tactics ?threat_analysis_techniques ?version
      ~author ~category ~source ~support ?timeouts ~content_id ~kind
      ~name ~parent_id ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
