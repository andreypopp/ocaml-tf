(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_proxy_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_db_proxy_endpoint__timeouts *)

type aws_db_proxy_endpoint = {
  db_proxy_endpoint_name : string prop;
      (** db_proxy_endpoint_name *)
  db_proxy_name : string prop;  (** db_proxy_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_role : string prop option; [@option]  (** target_role *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  vpc_subnet_ids : string prop list;  (** vpc_subnet_ids *)
  timeouts : aws_db_proxy_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_proxy_endpoint *)

let aws_db_proxy_endpoint ?id ?tags ?tags_all ?target_role
    ?vpc_security_group_ids ?timeouts ~db_proxy_endpoint_name
    ~db_proxy_name ~vpc_subnet_ids __resource_id =
  let __resource_type = "aws_db_proxy_endpoint" in
  let __resource =
    {
      db_proxy_endpoint_name;
      db_proxy_name;
      id;
      tags;
      tags_all;
      target_role;
      vpc_security_group_ids;
      vpc_subnet_ids;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_proxy_endpoint __resource);
  ()
