(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_configuration = {
  allowed_ip_range : string prop option; [@option]
  secret_token : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_configuration) -> ()

let yojson_of_authentication_configuration =
  (function
   | {
       allowed_ip_range = v_allowed_ip_range;
       secret_token = v_secret_token;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_token", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allowed_ip_range", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_configuration

[@@@deriving.end]

type filter = { json_path : string prop; match_equals : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { json_path = v_json_path; match_equals = v_match_equals } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_match_equals in
         ("match_equals", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_json_path in
         ("json_path", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type aws_codepipeline_webhook = {
  authentication : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_action : string prop;
  target_pipeline : string prop;
  authentication_configuration : authentication_configuration list;
  filter : filter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codepipeline_webhook) -> ()

let yojson_of_aws_codepipeline_webhook =
  (function
   | {
       authentication = v_authentication;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       target_action = v_target_action;
       target_pipeline = v_target_pipeline;
       authentication_configuration = v_authentication_configuration;
       filter = v_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication_configuration
             v_authentication_configuration
         in
         ("authentication_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_pipeline
         in
         ("target_pipeline", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_action in
         ("target_action", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_authentication
         in
         ("authentication", arg) :: bnds
       in
       `Assoc bnds
    : aws_codepipeline_webhook -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codepipeline_webhook

[@@@deriving.end]

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
