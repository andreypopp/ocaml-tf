(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_amplify_branch = {
  app_id : string prop;  (** app_id *)
  backend_environment_arn : string prop option; [@option]
      (** backend_environment_arn *)
  basic_auth_credentials : string prop option; [@option]
      (** basic_auth_credentials *)
  branch_name : string prop;  (** branch_name *)
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enable_auto_build : bool prop option; [@option]
      (** enable_auto_build *)
  enable_basic_auth : bool prop option; [@option]
      (** enable_basic_auth *)
  enable_notification : bool prop option; [@option]
      (** enable_notification *)
  enable_performance_mode : bool prop option; [@option]
      (** enable_performance_mode *)
  enable_pull_request_preview : bool prop option; [@option]
      (** enable_pull_request_preview *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  framework : string prop option; [@option]  (** framework *)
  id : string prop option; [@option]  (** id *)
  pull_request_environment_name : string prop option; [@option]
      (** pull_request_environment_name *)
  stage : string prop option; [@option]  (** stage *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ttl : string prop option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** aws_amplify_branch *)

let aws_amplify_branch ?backend_environment_arn
    ?basic_auth_credentials ?description ?display_name
    ?enable_auto_build ?enable_basic_auth ?enable_notification
    ?enable_performance_mode ?enable_pull_request_preview
    ?environment_variables ?framework ?id
    ?pull_request_environment_name ?stage ?tags ?tags_all ?ttl
    ~app_id ~branch_name () : aws_amplify_branch =
  {
    app_id;
    backend_environment_arn;
    basic_auth_credentials;
    branch_name;
    description;
    display_name;
    enable_auto_build;
    enable_basic_auth;
    enable_notification;
    enable_performance_mode;
    enable_pull_request_preview;
    environment_variables;
    framework;
    id;
    pull_request_environment_name;
    stage;
    tags;
    tags_all;
    ttl;
  }

type t = {
  app_id : string prop;
  arn : string prop;
  associated_resources : string list prop;
  backend_environment_arn : string prop;
  basic_auth_credentials : string prop;
  branch_name : string prop;
  custom_domains : string list prop;
  description : string prop;
  destination_branch : string prop;
  display_name : string prop;
  enable_auto_build : bool prop;
  enable_basic_auth : bool prop;
  enable_notification : bool prop;
  enable_performance_mode : bool prop;
  enable_pull_request_preview : bool prop;
  environment_variables : (string * string) list prop;
  framework : string prop;
  id : string prop;
  pull_request_environment_name : string prop;
  source_branch : string prop;
  stage : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  ttl : string prop;
}

let make ?backend_environment_arn ?basic_auth_credentials
    ?description ?display_name ?enable_auto_build ?enable_basic_auth
    ?enable_notification ?enable_performance_mode
    ?enable_pull_request_preview ?environment_variables ?framework
    ?id ?pull_request_environment_name ?stage ?tags ?tags_all ?ttl
    ~app_id ~branch_name __id =
  let __type = "aws_amplify_branch" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       associated_resources =
         Prop.computed __type __id "associated_resources";
       backend_environment_arn =
         Prop.computed __type __id "backend_environment_arn";
       basic_auth_credentials =
         Prop.computed __type __id "basic_auth_credentials";
       branch_name = Prop.computed __type __id "branch_name";
       custom_domains = Prop.computed __type __id "custom_domains";
       description = Prop.computed __type __id "description";
       destination_branch =
         Prop.computed __type __id "destination_branch";
       display_name = Prop.computed __type __id "display_name";
       enable_auto_build =
         Prop.computed __type __id "enable_auto_build";
       enable_basic_auth =
         Prop.computed __type __id "enable_basic_auth";
       enable_notification =
         Prop.computed __type __id "enable_notification";
       enable_performance_mode =
         Prop.computed __type __id "enable_performance_mode";
       enable_pull_request_preview =
         Prop.computed __type __id "enable_pull_request_preview";
       environment_variables =
         Prop.computed __type __id "environment_variables";
       framework = Prop.computed __type __id "framework";
       id = Prop.computed __type __id "id";
       pull_request_environment_name =
         Prop.computed __type __id "pull_request_environment_name";
       source_branch = Prop.computed __type __id "source_branch";
       stage = Prop.computed __type __id "stage";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       ttl = Prop.computed __type __id "ttl";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_branch
        (aws_amplify_branch ?backend_environment_arn
           ?basic_auth_credentials ?description ?display_name
           ?enable_auto_build ?enable_basic_auth ?enable_notification
           ?enable_performance_mode ?enable_pull_request_preview
           ?environment_variables ?framework ?id
           ?pull_request_environment_name ?stage ?tags ?tags_all ?ttl
           ~app_id ~branch_name ());
    attrs = __attrs;
  }

let register ?tf_module ?backend_environment_arn
    ?basic_auth_credentials ?description ?display_name
    ?enable_auto_build ?enable_basic_auth ?enable_notification
    ?enable_performance_mode ?enable_pull_request_preview
    ?environment_variables ?framework ?id
    ?pull_request_environment_name ?stage ?tags ?tags_all ?ttl
    ~app_id ~branch_name __id =
  let (r : _ Tf_core.resource) =
    make ?backend_environment_arn ?basic_auth_credentials
      ?description ?display_name ?enable_auto_build
      ?enable_basic_auth ?enable_notification
      ?enable_performance_mode ?enable_pull_request_preview
      ?environment_variables ?framework ?id
      ?pull_request_environment_name ?stage ?tags ?tags_all ?ttl
      ~app_id ~branch_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
