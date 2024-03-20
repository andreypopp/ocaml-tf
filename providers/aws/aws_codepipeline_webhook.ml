(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_configuration = {
  allowed_ip_range : string prop option; [@option]
      (** allowed_ip_range *)
  secret_token : string prop option; [@option]  (** secret_token *)
}
[@@deriving yojson_of]
(** authentication_configuration *)

type filter = {
  json_path : string prop;  (** json_path *)
  match_equals : string prop;  (** match_equals *)
}
[@@deriving yojson_of]
(** filter *)

type aws_codepipeline_webhook = {
  authentication : string prop;  (** authentication *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_action : string prop;  (** target_action *)
  target_pipeline : string prop;  (** target_pipeline *)
  authentication_configuration : authentication_configuration list;
  filter : filter list;
}
[@@deriving yojson_of]
(** aws_codepipeline_webhook *)

let authentication_configuration ?allowed_ip_range ?secret_token () :
    authentication_configuration =
  { allowed_ip_range; secret_token }

let filter ~json_path ~match_equals () : filter =
  { json_path; match_equals }

let aws_codepipeline_webhook ?id ?tags ?tags_all ~authentication
    ~name ~target_action ~target_pipeline
    ~authentication_configuration ~filter () :
    aws_codepipeline_webhook =
  {
    authentication;
    id;
    name;
    tags;
    tags_all;
    target_action;
    target_pipeline;
    authentication_configuration;
    filter;
  }

type t = {
  arn : string prop;
  authentication : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_action : string prop;
  target_pipeline : string prop;
  url : string prop;
}

let make ?id ?tags ?tags_all ~authentication ~name ~target_action
    ~target_pipeline ~authentication_configuration ~filter __id =
  let __type = "aws_codepipeline_webhook" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authentication = Prop.computed __type __id "authentication";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_action = Prop.computed __type __id "target_action";
       target_pipeline = Prop.computed __type __id "target_pipeline";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codepipeline_webhook
        (aws_codepipeline_webhook ?id ?tags ?tags_all ~authentication
           ~name ~target_action ~target_pipeline
           ~authentication_configuration ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~authentication ~name
    ~target_action ~target_pipeline ~authentication_configuration
    ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~authentication ~name ~target_action
      ~target_pipeline ~authentication_configuration ~filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
