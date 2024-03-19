(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_studio = {
  auth_mode : string prop;  (** auth_mode *)
  default_s3_location : string prop;  (** default_s3_location *)
  description : string prop option; [@option]  (** description *)
  engine_security_group_id : string prop;
      (** engine_security_group_id *)
  id : string prop option; [@option]  (** id *)
  idp_auth_url : string prop option; [@option]  (** idp_auth_url *)
  idp_relay_state_parameter_name : string prop option; [@option]
      (** idp_relay_state_parameter_name *)
  name : string prop;  (** name *)
  service_role : string prop;  (** service_role *)
  subnet_ids : string prop list;  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_role : string prop option; [@option]  (** user_role *)
  vpc_id : string prop;  (** vpc_id *)
  workspace_security_group_id : string prop;
      (** workspace_security_group_id *)
}
[@@deriving yojson_of]
(** aws_emr_studio *)

let aws_emr_studio ?description ?id ?idp_auth_url
    ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
    ~auth_mode ~default_s3_location ~engine_security_group_id ~name
    ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id ()
    : aws_emr_studio =
  {
    auth_mode;
    default_s3_location;
    description;
    engine_security_group_id;
    id;
    idp_auth_url;
    idp_relay_state_parameter_name;
    name;
    service_role;
    subnet_ids;
    tags;
    tags_all;
    user_role;
    vpc_id;
    workspace_security_group_id;
  }

type t = {
  arn : string prop;
  auth_mode : string prop;
  default_s3_location : string prop;
  description : string prop;
  engine_security_group_id : string prop;
  id : string prop;
  idp_auth_url : string prop;
  idp_relay_state_parameter_name : string prop;
  name : string prop;
  service_role : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url : string prop;
  user_role : string prop;
  vpc_id : string prop;
  workspace_security_group_id : string prop;
}

let register ?tf_module ?description ?id ?idp_auth_url
    ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
    ~auth_mode ~default_s3_location ~engine_security_group_id ~name
    ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
    __resource_id =
  let __resource_type = "aws_emr_studio" in
  let __resource =
    aws_emr_studio ?description ?id ?idp_auth_url
      ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
      ~auth_mode ~default_s3_location ~engine_security_group_id ~name
      ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_studio __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auth_mode =
         Prop.computed __resource_type __resource_id "auth_mode";
       default_s3_location =
         Prop.computed __resource_type __resource_id
           "default_s3_location";
       description =
         Prop.computed __resource_type __resource_id "description";
       engine_security_group_id =
         Prop.computed __resource_type __resource_id
           "engine_security_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       idp_auth_url =
         Prop.computed __resource_type __resource_id "idp_auth_url";
       idp_relay_state_parameter_name =
         Prop.computed __resource_type __resource_id
           "idp_relay_state_parameter_name";
       name = Prop.computed __resource_type __resource_id "name";
       service_role =
         Prop.computed __resource_type __resource_id "service_role";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       url = Prop.computed __resource_type __resource_id "url";
       user_role =
         Prop.computed __resource_type __resource_id "user_role";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
       workspace_security_group_id =
         Prop.computed __resource_type __resource_id
           "workspace_security_group_id";
     }
      : t)
  in
  __resource_attributes
