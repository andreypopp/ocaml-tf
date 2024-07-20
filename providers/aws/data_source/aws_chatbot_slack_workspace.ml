(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_chatbot_slack_workspace = { slack_team_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chatbot_slack_workspace) -> ()

let yojson_of_aws_chatbot_slack_workspace =
  (function
   | { slack_team_name = v_slack_team_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_slack_team_name
         in
         ("slack_team_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_chatbot_slack_workspace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chatbot_slack_workspace

[@@@deriving.end]

let aws_chatbot_slack_workspace ~slack_team_name () :
    aws_chatbot_slack_workspace =
  { slack_team_name }

type t = {
  tf_name : string;
  slack_team_id : string prop;
  slack_team_name : string prop;
}

let make ~slack_team_name __id =
  let __type = "aws_chatbot_slack_workspace" in
  let __attrs =
    ({
       tf_name = __id;
       slack_team_id = Prop.computed __type __id "slack_team_id";
       slack_team_name = Prop.computed __type __id "slack_team_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chatbot_slack_workspace
        (aws_chatbot_slack_workspace ~slack_team_name ());
    attrs = __attrs;
  }

let register ?tf_module ~slack_team_name __id =
  let (r : _ Tf_core.resource) = make ~slack_team_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
