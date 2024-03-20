(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration_property = {
  description : string prop option; [@option]  (** description *)
  key : bool prop;  (** key *)
  name : string prop;  (** name *)
  queryable : bool prop option; [@option]  (** queryable *)
  required : bool prop;  (** required *)
  secret : bool prop;  (** secret *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** configuration_property *)

type input_artifact_details = {
  maximum_count : float prop;  (** maximum_count *)
  minimum_count : float prop;  (** minimum_count *)
}
[@@deriving yojson_of]
(** input_artifact_details *)

type output_artifact_details = {
  maximum_count : float prop;  (** maximum_count *)
  minimum_count : float prop;  (** minimum_count *)
}
[@@deriving yojson_of]
(** output_artifact_details *)

type settings = {
  entity_url_template : string prop option; [@option]
      (** entity_url_template *)
  execution_url_template : string prop option; [@option]
      (** execution_url_template *)
  revision_url_template : string prop option; [@option]
      (** revision_url_template *)
  third_party_configuration_url : string prop option; [@option]
      (** third_party_configuration_url *)
}
[@@deriving yojson_of]
(** settings *)

type aws_codepipeline_custom_action_type = {
  category : string prop;  (** category *)
  id : string prop option; [@option]  (** id *)
  provider_name : string prop;  (** provider_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop;  (** version *)
  configuration_property : configuration_property list;
  input_artifact_details : input_artifact_details list;
  output_artifact_details : output_artifact_details list;
  settings : settings list;
}
[@@deriving yojson_of]
(** aws_codepipeline_custom_action_type *)

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

let aws_codepipeline_custom_action_type ?id ?tags ?tags_all ~category
    ~provider_name ~version ~configuration_property
    ~input_artifact_details ~output_artifact_details ~settings () :
    aws_codepipeline_custom_action_type =
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

let make ?id ?tags ?tags_all ~category ~provider_name ~version
    ~configuration_property ~input_artifact_details
    ~output_artifact_details ~settings __id =
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
           ~category ~provider_name ~version ~configuration_property
           ~input_artifact_details ~output_artifact_details ~settings
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~category ~provider_name
    ~version ~configuration_property ~input_artifact_details
    ~output_artifact_details ~settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~category ~provider_name ~version
      ~configuration_property ~input_artifact_details
      ~output_artifact_details ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
