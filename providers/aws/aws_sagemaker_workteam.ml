(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type member_definition__cognito_member_definition = {
  client_id : string prop;
  user_group : string prop;
  user_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : member_definition__cognito_member_definition) -> ()

let yojson_of_member_definition__cognito_member_definition =
  (function
   | {
       client_id = v_client_id;
       user_group = v_user_group;
       user_pool = v_user_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_pool in
         ("user_pool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_group in
         ("user_group", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       `Assoc bnds
    : member_definition__cognito_member_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_member_definition__cognito_member_definition

[@@@deriving.end]

type member_definition__oidc_member_definition = {
  groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : member_definition__oidc_member_definition) -> ()

let yojson_of_member_definition__oidc_member_definition =
  (function
   | { groups = v_groups } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_groups then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_groups
           in
           let bnd = "groups", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : member_definition__oidc_member_definition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_member_definition__oidc_member_definition

[@@@deriving.end]

type member_definition = {
  cognito_member_definition :
    member_definition__cognito_member_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  oidc_member_definition :
    member_definition__oidc_member_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : member_definition) -> ()

let yojson_of_member_definition =
  (function
   | {
       cognito_member_definition = v_cognito_member_definition;
       oidc_member_definition = v_oidc_member_definition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oidc_member_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_member_definition__oidc_member_definition)
               v_oidc_member_definition
           in
           let bnd = "oidc_member_definition", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cognito_member_definition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_member_definition__cognito_member_definition)
               v_cognito_member_definition
           in
           let bnd = "cognito_member_definition", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : member_definition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_member_definition

[@@@deriving.end]

type notification_configuration = {
  notification_topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification_configuration) -> ()

let yojson_of_notification_configuration =
  (function
   | { notification_topic_arn = v_notification_topic_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_notification_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_topic_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : notification_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification_configuration

[@@@deriving.end]

type aws_sagemaker_workteam = {
  description : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  workforce_name : string prop;
  workteam_name : string prop;
  member_definition : member_definition list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_configuration : notification_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_workteam) -> ()

let yojson_of_aws_sagemaker_workteam =
  (function
   | {
       description = v_description;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       workforce_name = v_workforce_name;
       workteam_name = v_workteam_name;
       member_definition = v_member_definition;
       notification_configuration = v_notification_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification_configuration)
               v_notification_configuration
           in
           let bnd = "notification_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_member_definition then bnds
         else
           let arg =
             (yojson_of_list yojson_of_member_definition)
               v_member_definition
           in
           let bnd = "member_definition", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workteam_name in
         ("workteam_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workforce_name
         in
         ("workforce_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_workteam -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_workteam

[@@@deriving.end]

let member_definition__cognito_member_definition ~client_id
    ~user_group ~user_pool () :
    member_definition__cognito_member_definition =
  { client_id; user_group; user_pool }

let member_definition__oidc_member_definition ~groups () :
    member_definition__oidc_member_definition =
  { groups }

let member_definition ?(cognito_member_definition = [])
    ?(oidc_member_definition = []) () : member_definition =
  { cognito_member_definition; oidc_member_definition }

let notification_configuration ?notification_topic_arn () :
    notification_configuration =
  { notification_topic_arn }

let aws_sagemaker_workteam ?id ?tags ?tags_all
    ?(notification_configuration = []) ~description ~workforce_name
    ~workteam_name ~member_definition () : aws_sagemaker_workteam =
  {
    description;
    id;
    tags;
    tags_all;
    workforce_name;
    workteam_name;
    member_definition;
    notification_configuration;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  subdomain : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workforce_name : string prop;
  workteam_name : string prop;
}

let make ?id ?tags ?tags_all ?(notification_configuration = [])
    ~description ~workforce_name ~workteam_name ~member_definition
    __id =
  let __type = "aws_sagemaker_workteam" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       subdomain = Prop.computed __type __id "subdomain";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       workforce_name = Prop.computed __type __id "workforce_name";
       workteam_name = Prop.computed __type __id "workteam_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_workteam
        (aws_sagemaker_workteam ?id ?tags ?tags_all
           ~notification_configuration ~description ~workforce_name
           ~workteam_name ~member_definition ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(notification_configuration = []) ~description ~workforce_name
    ~workteam_name ~member_definition __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~notification_configuration ~description
      ~workforce_name ~workteam_name ~member_definition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
