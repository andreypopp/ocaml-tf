(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type author = {
  email : string prop option; [@option]  (** email *)
  link : string prop option; [@option]  (** link *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** author *)

type category = {
  domains : string prop list option; [@option]  (** domains *)
  verticals : string prop list option; [@option]  (** verticals *)
}
[@@deriving yojson_of]
(** category *)

type source = {
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  name : string prop option; [@option]  (** name *)
}
[@@deriving yojson_of]
(** source *)

type support = {
  email : string prop option; [@option]  (** email *)
  link : string prop option; [@option]  (** link *)
  name : string prop option; [@option]  (** name *)
  tier : string prop;  (** tier *)
}
[@@deriving yojson_of]
(** support *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_sentinel_metadata = {
  content_id : string prop;  (** content_id *)
  content_schema_version : string prop option; [@option]
      (** content_schema_version *)
  custom_version : string prop option; [@option]
      (** custom_version *)
  dependency : string prop option; [@option]  (** dependency *)
  first_publish_date : string prop option; [@option]
      (** first_publish_date *)
  icon_id : string prop option; [@option]  (** icon_id *)
  id : string prop option; [@option]  (** id *)
  kind : string prop;  (** kind *)
  last_publish_date : string prop option; [@option]
      (** last_publish_date *)
  name : string prop;  (** name *)
  parent_id : string prop;  (** parent_id *)
  preview_images : string prop list option; [@option]
      (** preview_images *)
  preview_images_dark : string prop list option; [@option]
      (** preview_images_dark *)
  providers : string prop list option; [@option]  (** providers *)
  threat_analysis_tactics : string prop list option; [@option]
      (** threat_analysis_tactics *)
  threat_analysis_techniques : string prop list option; [@option]
      (** threat_analysis_techniques *)
  version : string prop option; [@option]  (** version *)
  workspace_id : string prop;  (** workspace_id *)
  author : author list;
  category : category list;
  source : source list;
  support : support list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_sentinel_metadata *)

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
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id
    ~author ~category ~source ~support () : azurerm_sentinel_metadata
    =
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
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id
    ~author ~category ~source ~support __id =
  let __type = "azurerm_sentinel_metadata" in
  let __attrs =
    ({
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
           ?threat_analysis_techniques ?version ?timeouts ~content_id
           ~kind ~name ~parent_id ~workspace_id ~author ~category
           ~source ~support ());
    attrs = __attrs;
  }

let register ?tf_module ?content_schema_version ?custom_version
    ?dependency ?first_publish_date ?icon_id ?id ?last_publish_date
    ?preview_images ?preview_images_dark ?providers
    ?threat_analysis_tactics ?threat_analysis_techniques ?version
    ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id
    ~author ~category ~source ~support __id =
  let (r : _ Tf_core.resource) =
    make ?content_schema_version ?custom_version ?dependency
      ?first_publish_date ?icon_id ?id ?last_publish_date
      ?preview_images ?preview_images_dark ?providers
      ?threat_analysis_tactics ?threat_analysis_techniques ?version
      ?timeouts ~content_id ~kind ~name ~parent_id ~workspace_id
      ~author ~category ~source ~support __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
