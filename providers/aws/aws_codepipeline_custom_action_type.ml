(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration_property = {
  description : string prop option; [@option]
  key : bool prop;
  name : string prop;
  queryable : bool prop option; [@option]
  required : bool prop;
  secret : bool prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration_property) -> ()

let yojson_of_configuration_property =
  (function
   | {
       description = v_description;
       key = v_key;
       name = v_name;
       queryable = v_queryable;
       required = v_required;
       secret = v_secret;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_secret in
         ("secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_required in
         ("required", arg) :: bnds
       in
       let bnds =
         match v_queryable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "queryable", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration_property -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration_property

[@@@deriving.end]

type input_artifact_details = {
  maximum_count : float prop;
  minimum_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_artifact_details) -> ()

let yojson_of_input_artifact_details =
  (function
   | {
       maximum_count = v_maximum_count;
       minimum_count = v_minimum_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minimum_count in
         ("minimum_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum_count in
         ("maximum_count", arg) :: bnds
       in
       `Assoc bnds
    : input_artifact_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_artifact_details

[@@@deriving.end]

type output_artifact_details = {
  maximum_count : float prop;
  minimum_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_artifact_details) -> ()

let yojson_of_output_artifact_details =
  (function
   | {
       maximum_count = v_maximum_count;
       minimum_count = v_minimum_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_minimum_count in
         ("minimum_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_maximum_count in
         ("maximum_count", arg) :: bnds
       in
       `Assoc bnds
    : output_artifact_details -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_artifact_details

[@@@deriving.end]

type settings = {
  entity_url_template : string prop option; [@option]
  execution_url_template : string prop option; [@option]
  revision_url_template : string prop option; [@option]
  third_party_configuration_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | {
       entity_url_template = v_entity_url_template;
       execution_url_template = v_execution_url_template;
       revision_url_template = v_revision_url_template;
       third_party_configuration_url =
         v_third_party_configuration_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_third_party_configuration_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "third_party_configuration_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_revision_url_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "revision_url_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_url_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_url_template", arg in
             bnd :: bnds
       in
       let bnds =
         match v_entity_url_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "entity_url_template", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type aws_codepipeline_custom_action_type = {
  category : string prop;
  id : string prop option; [@option]
  provider_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  version : string prop;
  configuration_property : configuration_property list;
  input_artifact_details : input_artifact_details list;
  output_artifact_details : output_artifact_details list;
  settings : settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codepipeline_custom_action_type) -> ()

let yojson_of_aws_codepipeline_custom_action_type =
  (function
   | {
       category = v_category;
       id = v_id;
       provider_name = v_provider_name;
       tags = v_tags;
       tags_all = v_tags_all;
       version = v_version;
       configuration_property = v_configuration_property;
       input_artifact_details = v_input_artifact_details;
       output_artifact_details = v_output_artifact_details;
       settings = v_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_artifact_details
             v_output_artifact_details
         in
         ("output_artifact_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_artifact_details
             v_input_artifact_details
         in
         ("input_artifact_details", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration_property
             v_configuration_property
         in
         ("configuration_property", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_name in
         ("provider_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_category in
         ("category", arg) :: bnds
       in
       `Assoc bnds
    : aws_codepipeline_custom_action_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codepipeline_custom_action_type

[@@@deriving.end]

let configuration_property ?description ?queryable ?type_ ~key ~name
    ~required ~secret () : configuration_property =
  { description; key; name; queryable; required; secret; type_ }

let input_artifact_details ~maximum_count ~minimum_count () :
    input_artifact_details =
  { maximum_count; minimum_count }

let output_artifact_details ~maximum_count ~minimum_count () :
    output_artifact_details =
  { maximum_count; minimum_count }

let settings ?entity_url_template ?execution_url_template
    ?revision_url_template ?third_party_configuration_url () :
    settings =
  {
    entity_url_template;
    execution_url_template;
    revision_url_template;
    third_party_configuration_url;
  }

let aws_codepipeline_custom_action_type ?id ?tags ?tags_all
    ?(configuration_property = []) ?(settings = []) ~category
    ~provider_name ~version ~input_artifact_details
    ~output_artifact_details () : aws_codepipeline_custom_action_type
    =
  {
    category;
    id;
    provider_name;
    tags;
    tags_all;
    version;
    configuration_property;
    input_artifact_details;
    output_artifact_details;
    settings;
  }

type t = {
  arn : string prop;
  category : string prop;
  id : string prop;
  owner : string prop;
  provider_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ?tags_all ?(configuration_property = [])
    ?(settings = []) ~category ~provider_name ~version
    ~input_artifact_details ~output_artifact_details __id =
  let __type = "aws_codepipeline_custom_action_type" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       category = Prop.computed __type __id "category";
       id = Prop.computed __type __id "id";
       owner = Prop.computed __type __id "owner";
       provider_name = Prop.computed __type __id "provider_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codepipeline_custom_action_type
        (aws_codepipeline_custom_action_type ?id ?tags ?tags_all
           ~configuration_property ~settings ~category ~provider_name
           ~version ~input_artifact_details ~output_artifact_details
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(configuration_property = []) ?(settings = []) ~category
    ~provider_name ~version ~input_artifact_details
    ~output_artifact_details __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~configuration_property ~settings
      ~category ~provider_name ~version ~input_artifact_details
      ~output_artifact_details __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
