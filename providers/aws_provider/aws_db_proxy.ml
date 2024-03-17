(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_proxy__auth = {
  auth_scheme : string prop option; [@option]  (** auth_scheme *)
  client_password_auth_type : string prop option; [@option]
      (** client_password_auth_type *)
  description : string prop option; [@option]  (** description *)
  iam_auth : string prop option; [@option]  (** iam_auth *)
  secret_arn : string prop option; [@option]  (** secret_arn *)
  username : string prop option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_db_proxy__auth *)

type aws_db_proxy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_db_proxy__timeouts *)

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
  auth : aws_db_proxy__auth list;
  timeouts : aws_db_proxy__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_proxy *)

let aws_db_proxy ?debug_logging ?id ?idle_client_timeout ?require_tls
    ?tags ?tags_all ?vpc_security_group_ids ?timeouts ~engine_family
    ~name ~role_arn ~vpc_subnet_ids ~auth __resource_id =
  let __resource_type = "aws_db_proxy" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_proxy __resource);
  ()
