(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type auth = {
  auth_scheme : string prop option; [@option]  (** auth_scheme *)
  client_password_auth_type : string prop option; [@option]
      (** client_password_auth_type *)
  description : string prop option; [@option]  (** description *)
  iam_auth : string prop option; [@option]  (** iam_auth *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** auth *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_db_proxy = {
  debug_logging : bool prop option; [@option]  (** debug_logging *)
  engine_family : string prop;  (** engine_family *)
  id : string prop option; [@option]  (** id *)
  idle_client_timeout : float prop option; [@option]
      (** idle_client_timeout *)
  name : string prop;  (** name *)
  require_tls : bool prop option; [@option]  (** require_tls *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  vpc_subnet_ids : string prop list;  (** vpc_subnet_ids *)
  auth : auth list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_db_proxy *)

let auth ?auth_scheme ?client_password_auth_type ?description
    ?iam_auth ?secret_arn ?username () : auth =
  {
    auth_scheme;
    client_password_auth_type;
    description;
    iam_auth;
    secret_arn;
    username;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_db_proxy ?debug_logging ?id ?idle_client_timeout ?require_tls
    ?tags ?tags_all ?vpc_security_group_ids ?timeouts ~engine_family
    ~name ~role_arn ~vpc_subnet_ids ~auth () : aws_db_proxy =
  {
    debug_logging;
    engine_family;
    id;
    idle_client_timeout;
    name;
    require_tls;
    role_arn;
    tags;
    tags_all;
    vpc_security_group_ids;
    vpc_subnet_ids;
    auth;
    timeouts;
  }

type t = {
  arn : string prop;
  debug_logging : bool prop;
  endpoint : string prop;
  engine_family : string prop;
  id : string prop;
  idle_client_timeout : float prop;
  name : string prop;
  require_tls : bool prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
  vpc_subnet_ids : string list prop;
}

let register ?tf_module ?debug_logging ?id ?idle_client_timeout
    ?require_tls ?tags ?tags_all ?vpc_security_group_ids ?timeouts
    ~engine_family ~name ~role_arn ~vpc_subnet_ids ~auth
    __resource_id =
  let __resource_type = "aws_db_proxy" in
  let __resource =
    aws_db_proxy ?debug_logging ?id ?idle_client_timeout ?require_tls
      ?tags ?tags_all ?vpc_security_group_ids ?timeouts
      ~engine_family ~name ~role_arn ~vpc_subnet_ids ~auth ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_proxy __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       debug_logging =
         Prop.computed __resource_type __resource_id "debug_logging";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       engine_family =
         Prop.computed __resource_type __resource_id "engine_family";
       id = Prop.computed __resource_type __resource_id "id";
       idle_client_timeout =
         Prop.computed __resource_type __resource_id
           "idle_client_timeout";
       name = Prop.computed __resource_type __resource_id "name";
       require_tls =
         Prop.computed __resource_type __resource_id "require_tls";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_security_group_ids =
         Prop.computed __resource_type __resource_id
           "vpc_security_group_ids";
       vpc_subnet_ids =
         Prop.computed __resource_type __resource_id "vpc_subnet_ids";
     }
      : t)
  in
  __resource_attributes
