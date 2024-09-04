(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_amplify_branch = {
  app_id : string prop;
  backend_environment_arn : string prop option; [@option]
  basic_auth_credentials : string prop option; [@option]
  branch_name : string prop;
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enable_auto_build : bool prop option; [@option]
  enable_basic_auth : bool prop option; [@option]
  enable_notification : bool prop option; [@option]
  enable_performance_mode : bool prop option; [@option]
  enable_pull_request_preview : bool prop option; [@option]
  environment_variables : string prop Tf_core.assoc option; [@option]
  framework : string prop option; [@option]
  id : string prop option; [@option]
  pull_request_environment_name : string prop option; [@option]
  stage : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  ttl : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_amplify_branch) -> ()

let yojson_of_aws_amplify_branch =
  (function
   | {
       app_id = v_app_id;
       backend_environment_arn = v_backend_environment_arn;
       basic_auth_credentials = v_basic_auth_credentials;
       branch_name = v_branch_name;
       description = v_description;
       display_name = v_display_name;
       enable_auto_build = v_enable_auto_build;
       enable_basic_auth = v_enable_basic_auth;
       enable_notification = v_enable_notification;
       enable_performance_mode = v_enable_performance_mode;
       enable_pull_request_preview = v_enable_pull_request_preview;
       environment_variables = v_environment_variables;
       framework = v_framework;
       id = v_id;
       pull_request_environment_name =
         v_pull_request_environment_name;
       stage = v_stage;
       tags = v_tags;
       tags_all = v_tags_all;
       ttl = v_ttl;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_stage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stage", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pull_request_environment_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pull_request_environment_name", arg in
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
       let bnds =
         match v_framework with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "framework", arg in
             bnd :: bnds
       in
       let bnds =
         match v_environment_variables with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "environment_variables", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_pull_request_preview with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_pull_request_preview", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_performance_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_performance_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_notification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_notification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_basic_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_basic_auth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_auto_build with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_auto_build", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_branch_name in
         ("branch_name", arg) :: bnds
       in
       let bnds =
         match v_basic_auth_credentials with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "basic_auth_credentials", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_environment_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "backend_environment_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_amplify_branch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_amplify_branch

[@@@deriving.end]

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
  tf_name : string;
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
  environment_variables : string Tf_core.assoc prop;
  framework : string prop;
  id : string prop;
  pull_request_environment_name : string prop;
  source_branch : string prop;
  stage : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
       tf_name = __id;
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
