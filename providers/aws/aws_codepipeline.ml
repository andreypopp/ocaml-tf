(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type artifact_store__encryption_key = {
  id : string prop;  (** id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** artifact_store__encryption_key *)

type artifact_store = {
  location : string prop;  (** location *)
  region : string prop option; [@option]  (** region *)
  type_ : string prop; [@key "type"]  (** type *)
  encryption_key : artifact_store__encryption_key list;
}
[@@deriving yojson_of]
(** artifact_store *)

type stage__action = {
  category : string prop;  (** category *)
  configuration : (string * string prop) list option; [@option]
      (** configuration *)
  input_artifacts : string prop list option; [@option]
      (** input_artifacts *)
  name : string prop;  (** name *)
  namespace : string prop option; [@option]  (** namespace *)
  output_artifacts : string prop list option; [@option]
      (** output_artifacts *)
  owner : string prop;  (** owner *)
  provider : string prop;  (** provider *)
  region : string prop option; [@option]  (** region *)
  role_arn : string prop option; [@option]  (** role_arn *)
  run_order : float prop option; [@option]  (** run_order *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** stage__action *)

type stage = {
  name : string prop;  (** name *)
  action : stage__action list;
}
[@@deriving yojson_of]
(** stage *)

type trigger__git_configuration__pull_request__branches = {
  excludes : string prop list option; [@option]  (** excludes *)
  includes : string prop list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** trigger__git_configuration__pull_request__branches *)

type trigger__git_configuration__pull_request__file_paths = {
  excludes : string prop list option; [@option]  (** excludes *)
  includes : string prop list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** trigger__git_configuration__pull_request__file_paths *)

type trigger__git_configuration__pull_request = {
  events : string prop list option; [@option]  (** events *)
  branches : trigger__git_configuration__pull_request__branches list;
  file_paths :
    trigger__git_configuration__pull_request__file_paths list;
}
[@@deriving yojson_of]
(** trigger__git_configuration__pull_request *)

type trigger__git_configuration__push__branches = {
  excludes : string prop list option; [@option]  (** excludes *)
  includes : string prop list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** trigger__git_configuration__push__branches *)

type trigger__git_configuration__push__file_paths = {
  excludes : string prop list option; [@option]  (** excludes *)
  includes : string prop list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** trigger__git_configuration__push__file_paths *)

type trigger__git_configuration__push__tags = {
  excludes : string prop list option; [@option]  (** excludes *)
  includes : string prop list option; [@option]  (** includes *)
}
[@@deriving yojson_of]
(** trigger__git_configuration__push__tags *)

type trigger__git_configuration__push = {
  branches : trigger__git_configuration__push__branches list;
  file_paths : trigger__git_configuration__push__file_paths list;
  tags : trigger__git_configuration__push__tags list;
}
[@@deriving yojson_of]
(** trigger__git_configuration__push *)

type trigger__git_configuration = {
  source_action_name : string prop;  (** source_action_name *)
  pull_request : trigger__git_configuration__pull_request list;
  push : trigger__git_configuration__push list;
}
[@@deriving yojson_of]
(** trigger__git_configuration *)

type trigger = {
  provider_type : string prop;  (** provider_type *)
  git_configuration : trigger__git_configuration list;
}
[@@deriving yojson_of]
(** trigger *)

type variable = {
  default_value : string prop option; [@option]  (** default_value *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** variable *)

type aws_codepipeline = {
  execution_mode : string prop option; [@option]
      (** execution_mode *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  pipeline_type : string prop option; [@option]  (** pipeline_type *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  artifact_store : artifact_store list;
  stage : stage list;
  trigger : trigger list;
  variable : variable list;
}
[@@deriving yojson_of]
(** aws_codepipeline *)

let artifact_store__encryption_key ~id ~type_ () :
    artifact_store__encryption_key =
  { id; type_ }

let artifact_store ?region ~location ~type_ ~encryption_key () :
    artifact_store =
  { location; region; type_; encryption_key }

let stage__action ?configuration ?input_artifacts ?namespace
    ?output_artifacts ?region ?role_arn ?run_order ~category ~name
    ~owner ~provider ~version () : stage__action =
  {
    category;
    configuration;
    input_artifacts;
    name;
    namespace;
    output_artifacts;
    owner;
    provider;
    region;
    role_arn;
    run_order;
    version;
  }

let stage ~name ~action () : stage = { name; action }

let trigger__git_configuration__pull_request__branches ?excludes
    ?includes () : trigger__git_configuration__pull_request__branches
    =
  { excludes; includes }

let trigger__git_configuration__pull_request__file_paths ?excludes
    ?includes () :
    trigger__git_configuration__pull_request__file_paths =
  { excludes; includes }

let trigger__git_configuration__pull_request ?events ~branches
    ~file_paths () : trigger__git_configuration__pull_request =
  { events; branches; file_paths }

let trigger__git_configuration__push__branches ?excludes ?includes ()
    : trigger__git_configuration__push__branches =
  { excludes; includes }

let trigger__git_configuration__push__file_paths ?excludes ?includes
    () : trigger__git_configuration__push__file_paths =
  { excludes; includes }

let trigger__git_configuration__push__tags ?excludes ?includes () :
    trigger__git_configuration__push__tags =
  { excludes; includes }

let trigger__git_configuration__push ~branches ~file_paths ~tags () :
    trigger__git_configuration__push =
  { branches; file_paths; tags }

let trigger__git_configuration ~source_action_name ~pull_request
    ~push () : trigger__git_configuration =
  { source_action_name; pull_request; push }

let trigger ~provider_type ~git_configuration () : trigger =
  { provider_type; git_configuration }

let variable ?default_value ?description ~name () : variable =
  { default_value; description; name }

let aws_codepipeline ?execution_mode ?id ?pipeline_type ?tags
    ?tags_all ~name ~role_arn ~artifact_store ~stage ~trigger
    ~variable () : aws_codepipeline =
  {
    execution_mode;
    id;
    name;
    pipeline_type;
    role_arn;
    tags;
    tags_all;
    artifact_store;
    stage;
    trigger;
    variable;
  }

type t = {
  arn : string prop;
  execution_mode : string prop;
  id : string prop;
  name : string prop;
  pipeline_type : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?execution_mode ?id ?pipeline_type ?tags ?tags_all ~name
    ~role_arn ~artifact_store ~stage ~trigger ~variable __id =
  let __type = "aws_codepipeline" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       execution_mode = Prop.computed __type __id "execution_mode";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       pipeline_type = Prop.computed __type __id "pipeline_type";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codepipeline
        (aws_codepipeline ?execution_mode ?id ?pipeline_type ?tags
           ?tags_all ~name ~role_arn ~artifact_store ~stage ~trigger
           ~variable ());
    attrs = __attrs;
  }

let register ?tf_module ?execution_mode ?id ?pipeline_type ?tags
    ?tags_all ~name ~role_arn ~artifact_store ~stage ~trigger
    ~variable __id =
  let (r : _ Tf_core.resource) =
    make ?execution_mode ?id ?pipeline_type ?tags ?tags_all ~name
      ~role_arn ~artifact_store ~stage ~trigger ~variable __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
