(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_vault_notifications = {
  backup_vault_events : string list;  (** backup_vault_events *)
  backup_vault_name : string;  (** backup_vault_name *)
  sns_topic_arn : string;  (** sns_topic_arn *)
}
[@@deriving yojson_of]
(** aws_backup_vault_notifications *)

let aws_backup_vault_notifications ~backup_vault_events
    ~backup_vault_name ~sns_topic_arn __resource_id =
  let __resource_type = "aws_backup_vault_notifications" in
  let __resource =
    { backup_vault_events; backup_vault_name; sns_topic_arn }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault_notifications __resource);
  ()
