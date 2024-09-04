(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_emr_studio = {
  auth_mode : string prop;
  default_s3_location : string prop;
  description : string prop option; [@option]
  engine_security_group_id : string prop;
  id : string prop option; [@option]
  idp_auth_url : string prop option; [@option]
  idp_relay_state_parameter_name : string prop option; [@option]
  name : string prop;
  service_role : string prop;
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  user_role : string prop option; [@option]
  vpc_id : string prop;
  workspace_security_group_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_studio) -> ()

let yojson_of_aws_emr_studio =
  (function
   | {
       auth_mode = v_auth_mode;
       default_s3_location = v_default_s3_location;
       description = v_description;
       engine_security_group_id = v_engine_security_group_id;
       id = v_id;
       idp_auth_url = v_idp_auth_url;
       idp_relay_state_parameter_name =
         v_idp_relay_state_parameter_name;
       name = v_name;
       service_role = v_service_role;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
       user_role = v_user_role;
       vpc_id = v_vpc_id;
       workspace_security_group_id = v_workspace_security_group_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_workspace_security_group_id
         in
         ("workspace_security_group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         match v_user_role with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_role", arg in
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
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_role in
         ("service_role", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_idp_relay_state_parameter_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_relay_state_parameter_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_idp_auth_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "idp_auth_url", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_engine_security_group_id
         in
         ("engine_security_group_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_default_s3_location
         in
         ("default_s3_location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_mode in
         ("auth_mode", arg) :: bnds
       in
       `Assoc bnds
    : aws_emr_studio -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_studio

[@@@deriving.end]

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
  tf_name : string;
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
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
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
       tf_name = __id;
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
