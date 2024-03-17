(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_instance_automated_backups_replication__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_db_instance_automated_backups_replication__timeouts *)

type aws_db_instance_automated_backups_replication = {
  pre_signed_url : string option; [@option]  (** pre_signed_url *)
  retention_period : float option; [@option]  (** retention_period *)
  source_db_instance_arn : string;  (** source_db_instance_arn *)
  timeouts :
    aws_db_instance_automated_backups_replication__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_instance_automated_backups_replication *)

let aws_db_instance_automated_backups_replication ?pre_signed_url
    ?retention_period ?timeouts ~source_db_instance_arn __resource_id
    =
  let __resource_type =
    "aws_db_instance_automated_backups_replication"
  in
  let __resource =
    {
      pre_signed_url;
      retention_period;
      source_db_instance_arn;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_instance_automated_backups_replication
       __resource);
  ()
