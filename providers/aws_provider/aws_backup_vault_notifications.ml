(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_backup_vault_notifications = {
  backup_vault_events : string prop list;  (** backup_vault_events *)
  backup_vault_name : string prop;  (** backup_vault_name *)
  id : string prop option; [@option]  (** id *)
  sns_topic_arn : string prop;  (** sns_topic_arn *)
}
[@@deriving yojson_of]
(** aws_backup_vault_notifications *)

type t = {
  backup_vault_arn : string prop;
  backup_vault_events : string list prop;
  backup_vault_name : string prop;
  id : string prop;
  sns_topic_arn : string prop;
}

let aws_backup_vault_notifications ?id ~backup_vault_events
    ~backup_vault_name ~sns_topic_arn __resource_id =
  let __resource_type = "aws_backup_vault_notifications" in
  let __resource =
    ({ backup_vault_events; backup_vault_name; id; sns_topic_arn }
      : aws_backup_vault_notifications)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_vault_notifications __resource);
  let __resource_attributes =
    ({
       backup_vault_arn =
         Prop.computed __resource_type __resource_id
           "backup_vault_arn";
       backup_vault_events =
         Prop.computed __resource_type __resource_id
           "backup_vault_events";
       backup_vault_name =
         Prop.computed __resource_type __resource_id
           "backup_vault_name";
       id = Prop.computed __resource_type __resource_id "id";
       sns_topic_arn =
         Prop.computed __resource_type __resource_id "sns_topic_arn";
     }
      : t)
  in
  __resource_attributes
