(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_vault_notifications = {
  backup_vault_events : string prop list;  (** backup_vault_events *)
  backup_vault_name : string prop;  (** backup_vault_name *)
  id : string prop option; [@option]  (** id *)
  sns_topic_arn : string prop;  (** sns_topic_arn *)
}
[@@deriving yojson_of]
(** aws_backup_vault_notifications *)

let aws_backup_vault_notifications ?id ~backup_vault_events
    ~backup_vault_name ~sns_topic_arn () :
    aws_backup_vault_notifications =
  { backup_vault_events; backup_vault_name; id; sns_topic_arn }

type t = {
  backup_vault_arn : string prop;
  backup_vault_events : string list prop;
  backup_vault_name : string prop;
  id : string prop;
  sns_topic_arn : string prop;
}

let make ?id ~backup_vault_events ~backup_vault_name ~sns_topic_arn
    __id =
  let __type = "aws_backup_vault_notifications" in
  let __attrs =
    ({
       backup_vault_arn =
         Prop.computed __type __id "backup_vault_arn";
       backup_vault_events =
         Prop.computed __type __id "backup_vault_events";
       backup_vault_name =
         Prop.computed __type __id "backup_vault_name";
       id = Prop.computed __type __id "id";
       sns_topic_arn = Prop.computed __type __id "sns_topic_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_vault_notifications
        (aws_backup_vault_notifications ?id ~backup_vault_events
           ~backup_vault_name ~sns_topic_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~backup_vault_events ~backup_vault_name
    ~sns_topic_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~backup_vault_events ~backup_vault_name ~sns_topic_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
