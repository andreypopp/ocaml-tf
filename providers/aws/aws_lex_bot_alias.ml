(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type conversation_logs__log_settings = {
  destination : string prop;  (** destination *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  log_type : string prop;  (** log_type *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** conversation_logs__log_settings *)

type conversation_logs = {
  iam_role_arn : string prop;  (** iam_role_arn *)
  log_settings : conversation_logs__log_settings list;
}
[@@deriving yojson_of]
(** conversation_logs *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lex_bot_alias = {
  bot_name : string prop;  (** bot_name *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  conversation_logs : conversation_logs list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_bot_alias *)

let conversation_logs__log_settings ?kms_key_arn ~destination
    ~log_type ~resource_arn () : conversation_logs__log_settings =
  { destination; kms_key_arn; log_type; resource_arn }

let conversation_logs ~iam_role_arn ~log_settings () :
    conversation_logs =
  { iam_role_arn; log_settings }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lex_bot_alias ?description ?id ?timeouts ~bot_name
    ~bot_version ~name ~conversation_logs () : aws_lex_bot_alias =
  {
    bot_name;
    bot_version;
    description;
    id;
    name;
    conversation_logs;
    timeouts;
  }

type t = {
  arn : string prop;
  bot_name : string prop;
  bot_version : string prop;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
}

let make ?description ?id ?timeouts ~bot_name ~bot_version ~name
    ~conversation_logs __id =
  let __type = "aws_lex_bot_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bot_name = Prop.computed __type __id "bot_name";
       bot_version = Prop.computed __type __id "bot_version";
       checksum = Prop.computed __type __id "checksum";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_bot_alias
        (aws_lex_bot_alias ?description ?id ?timeouts ~bot_name
           ~bot_version ~name ~conversation_logs ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?timeouts ~bot_name
    ~bot_version ~name ~conversation_logs __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?timeouts ~bot_name ~bot_version ~name
      ~conversation_logs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
