(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_vault_notifications = {
  backup_vault_events : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  backup_vault_name : string prop;
  id : string prop option; [@option]
  sns_topic_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_vault_notifications) -> ()

let yojson_of_aws_backup_vault_notifications =
  (function
   | {
       backup_vault_events = v_backup_vault_events;
       backup_vault_name = v_backup_vault_name;
       id = v_id;
       sns_topic_arn = v_sns_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sns_topic_arn in
         ("sns_topic_arn", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_backup_vault_name
         in
         ("backup_vault_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_backup_vault_events then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_backup_vault_events
           in
           let bnd = "backup_vault_events", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_backup_vault_notifications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_vault_notifications

[@@@deriving.end]

let aws_backup_vault_notifications ?id ~backup_vault_events
    ~backup_vault_name ~sns_topic_arn () :
    aws_backup_vault_notifications =
  { backup_vault_events; backup_vault_name; id; sns_topic_arn }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
