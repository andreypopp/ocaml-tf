(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_chatbot_slack_workspace

val aws_chatbot_slack_workspace :
  slack_team_name:string prop -> unit -> aws_chatbot_slack_workspace

val yojson_of_aws_chatbot_slack_workspace :
  aws_chatbot_slack_workspace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  slack_team_id : string prop;
  slack_team_name : string prop;
}

val register :
  ?tf_module:tf_module -> slack_team_name:string prop -> string -> t

val make :
  slack_team_name:string prop -> string -> t Tf_core.resource
