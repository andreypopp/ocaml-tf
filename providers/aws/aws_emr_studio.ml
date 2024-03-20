(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?idp_auth_url
    ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
    ~auth_mode ~default_s3_location ~engine_security_group_id ~name
    ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
    __id =
  let __type = "aws_emr_studio" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auth_mode = Prop.computed __type __id "auth_mode";
       default_s3_location =
         Prop.computed __type __id "default_s3_location";
       description = Prop.computed __type __id "description";
       engine_security_group_id =
         Prop.computed __type __id "engine_security_group_id";
       id = Prop.computed __type __id "id";
       idp_auth_url = Prop.computed __type __id "idp_auth_url";
       idp_relay_state_parameter_name =
         Prop.computed __type __id "idp_relay_state_parameter_name";
       name = Prop.computed __type __id "name";
       service_role = Prop.computed __type __id "service_role";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url = Prop.computed __type __id "url";
       user_role = Prop.computed __type __id "user_role";
       vpc_id = Prop.computed __type __id "vpc_id";
       workspace_security_group_id =
         Prop.computed __type __id "workspace_security_group_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_studio
        (aws_emr_studio ?description ?id ?idp_auth_url
           ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
           ~auth_mode ~default_s3_location ~engine_security_group_id
           ~name ~service_role ~subnet_ids ~vpc_id
           ~workspace_security_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?idp_auth_url
    ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
    ~auth_mode ~default_s3_location ~engine_security_group_id ~name
    ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?idp_auth_url
      ?idp_relay_state_parameter_name ?tags ?tags_all ?user_role
      ~auth_mode ~default_s3_location ~engine_security_group_id ~name
      ~service_role ~subnet_ids ~vpc_id ~workspace_security_group_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
