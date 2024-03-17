(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_proxy__auth = {
  auth_scheme : string option; [@option]  (** auth_scheme *)
  client_password_auth_type : string option; [@option]
      (** client_password_auth_type *)
  description : string option; [@option]  (** description *)
  iam_auth : string option; [@option]  (** iam_auth *)
  secret_arn : string option; [@option]  (** secret_arn *)
  username : string option; [@option]  (** username *)
}
[@@deriving yojson_of]
(** aws_db_proxy__auth *)

type aws_db_proxy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_db_proxy__timeouts *)

type aws_db_proxy = {
  debug_logging : bool option; [@option]  (** debug_logging *)
  engine_family : string;  (** engine_family *)
  id : string option; [@option]  (** id *)
  idle_client_timeout : float option; [@option]
      (** idle_client_timeout *)
  name : string;  (** name *)
  require_tls : bool option; [@option]  (** require_tls *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  vpc_subnet_ids : string list;  (** vpc_subnet_ids *)
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
