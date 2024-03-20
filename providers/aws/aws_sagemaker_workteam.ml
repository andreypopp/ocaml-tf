(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type member_definition__cognito_member_definition = {
  client_id : string prop;  (** client_id *)
  user_group : string prop;  (** user_group *)
  user_pool : string prop;  (** user_pool *)
}
[@@deriving yojson_of]
(** member_definition__cognito_member_definition *)

type member_definition__oidc_member_definition = {
  groups : string prop list;  (** groups *)
}
[@@deriving yojson_of]
(** member_definition__oidc_member_definition *)

type member_definition = {
  cognito_member_definition :
    member_definition__cognito_member_definition list;
  oidc_member_definition :
    member_definition__oidc_member_definition list;
}
[@@deriving yojson_of]
(** member_definition *)

type notification_configuration = {
  notification_topic_arn : string prop option; [@option]
      (** notification_topic_arn *)
}
[@@deriving yojson_of]
(** notification_configuration *)

type aws_sagemaker_workteam = {
  description : string prop;  (** description *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  workforce_name : string prop;  (** workforce_name *)
  workteam_name : string prop;  (** workteam_name *)
  member_definition : member_definition list;
  notification_configuration : notification_configuration list;
}
[@@deriving yojson_of]
(** aws_sagemaker_workteam *)

let member_definition__cognito_member_definition ~client_id
    ~user_group ~user_pool () :
    member_definition__cognito_member_definition =
  { client_id; user_group; user_pool }

let member_definition__oidc_member_definition ~groups () :
    member_definition__oidc_member_definition =
  { groups }

let member_definition ~cognito_member_definition
    ~oidc_member_definition () : member_definition =
  { cognito_member_definition; oidc_member_definition }

let notification_configuration ?notification_topic_arn () :
    notification_configuration =
  { notification_topic_arn }

let aws_sagemaker_workteam ?id ?tags ?tags_all ~description
    ~workforce_name ~workteam_name ~member_definition
    ~notification_configuration () : aws_sagemaker_workteam =
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
  arn : string prop;
  description : string prop;
  id : string prop;
  subdomain : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workforce_name : string prop;
  workteam_name : string prop;
}

let make ?id ?tags ?tags_all ~description ~workforce_name
    ~workteam_name ~member_definition ~notification_configuration
    __id =
  let __type = "aws_sagemaker_workteam" in
  let __attrs =
    ({
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
        (aws_sagemaker_workteam ?id ?tags ?tags_all ~description
           ~workforce_name ~workteam_name ~member_definition
           ~notification_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~description
    ~workforce_name ~workteam_name ~member_definition
    ~notification_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~description ~workforce_name
      ~workteam_name ~member_definition ~notification_configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
