(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lex_bot_alias__conversation_logs__log_settings = {
  destination : string prop;  (** destination *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  log_type : string prop;  (** log_type *)
  resource_arn : string prop;  (** resource_arn *)
  resource_prefix : string prop;  (** resource_prefix *)
}
[@@deriving yojson_of]
(** aws_lex_bot_alias__conversation_logs__log_settings *)

type aws_lex_bot_alias__conversation_logs = {
  iam_role_arn : string prop;  (** iam_role_arn *)
  log_settings :
    aws_lex_bot_alias__conversation_logs__log_settings list;
}
[@@deriving yojson_of]
(** aws_lex_bot_alias__conversation_logs *)

type aws_lex_bot_alias__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lex_bot_alias__timeouts *)

type aws_lex_bot_alias = {
  bot_name : string prop;  (** bot_name *)
  bot_version : string prop;  (** bot_version *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  conversation_logs : aws_lex_bot_alias__conversation_logs list;
  timeouts : aws_lex_bot_alias__timeouts option;
}
[@@deriving yojson_of]
(** aws_lex_bot_alias *)

let aws_lex_bot_alias ?description ?id ?timeouts ~bot_name
    ~bot_version ~name ~conversation_logs __resource_id =
  let __resource_type = "aws_lex_bot_alias" in
  let __resource =
    {
      bot_name;
      bot_version;
      description;
      id;
      name;
      conversation_logs;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lex_bot_alias __resource);
  ()
