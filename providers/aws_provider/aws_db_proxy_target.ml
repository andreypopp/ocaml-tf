(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_db_proxy_target = {
  db_cluster_identifier : string option; [@option]
      (** db_cluster_identifier *)
  db_instance_identifier : string option; [@option]
      (** db_instance_identifier *)
  db_proxy_name : string;  (** db_proxy_name *)
  target_group_name : string;  (** target_group_name *)
}
[@@deriving yojson_of]
(** aws_db_proxy_target *)

let aws_db_proxy_target ?db_cluster_identifier
    ?db_instance_identifier ~db_proxy_name ~target_group_name
    __resource_id =
  let __resource_type = "aws_db_proxy_target" in
  let __resource =
    {
      db_cluster_identifier;
      db_instance_identifier;
      db_proxy_name;
      target_group_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_proxy_target __resource);
  ()
