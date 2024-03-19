(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?timeouts ~bot_name
    ~bot_version ~name ~conversation_logs __resource_id =
  let __resource_type = "aws_lex_bot_alias" in
  let __resource =
    aws_lex_bot_alias ?description ?id ?timeouts ~bot_name
      ~bot_version ~name ~conversation_logs ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_bot_alias __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       bot_version =
         Prop.computed __resource_type __resource_id "bot_version";
       checksum =
         Prop.computed __resource_type __resource_id "checksum";
       created_date =
         Prop.computed __resource_type __resource_id "created_date";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       last_updated_date =
         Prop.computed __resource_type __resource_id
           "last_updated_date";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
