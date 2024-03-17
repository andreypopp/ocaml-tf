(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_proxy_target = {
  db_cluster_identifier : string prop option; [@option]
      (** db_cluster_identifier *)
  db_instance_identifier : string prop option; [@option]
      (** db_instance_identifier *)
  db_proxy_name : string prop;  (** db_proxy_name *)
  id : string prop option; [@option]  (** id *)
  target_group_name : string prop;  (** target_group_name *)
}
[@@deriving yojson_of]
(** aws_db_proxy_target *)

let aws_db_proxy_target ?db_cluster_identifier
    ?db_instance_identifier ?id ~db_proxy_name ~target_group_name
    __resource_id =
  let __resource_type = "aws_db_proxy_target" in
  let __resource =
    {
      db_cluster_identifier;
      db_instance_identifier;
      db_proxy_name;
      id;
      target_group_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_proxy_target __resource);
  ()
