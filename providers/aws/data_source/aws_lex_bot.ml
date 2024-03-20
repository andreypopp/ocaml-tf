(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lex_bot = {
  id : string prop option; [@option]
  name : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_bot) -> ()

let yojson_of_aws_lex_bot =
  (function
   | { id = v_id; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_lex_bot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_bot

[@@@deriving.end]

let aws_lex_bot ?id ?version ~name () : aws_lex_bot =
  { id; name; version }

type t = {
  arn : string prop;
  checksum : string prop;
  child_directed : bool prop;
  created_date : string prop;
  description : string prop;
  detect_sentiment : bool prop;
  enable_model_improvements : bool prop;
  failure_reason : string prop;
  id : string prop;
  idle_session_ttl_in_seconds : float prop;
  last_updated_date : string prop;
  locale : string prop;
  name : string prop;
  nlu_intent_confidence_threshold : float prop;
  status : string prop;
  version : string prop;
  voice_id : string prop;
}

let make ?id ?version ~name __id =
  let __type = "aws_lex_bot" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       checksum = Prop.computed __type __id "checksum";
       child_directed = Prop.computed __type __id "child_directed";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       detect_sentiment =
         Prop.computed __type __id "detect_sentiment";
       enable_model_improvements =
         Prop.computed __type __id "enable_model_improvements";
       failure_reason = Prop.computed __type __id "failure_reason";
       id = Prop.computed __type __id "id";
       idle_session_ttl_in_seconds =
         Prop.computed __type __id "idle_session_ttl_in_seconds";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       locale = Prop.computed __type __id "locale";
       name = Prop.computed __type __id "name";
       nlu_intent_confidence_threshold =
         Prop.computed __type __id "nlu_intent_confidence_threshold";
       status = Prop.computed __type __id "status";
       version = Prop.computed __type __id "version";
       voice_id = Prop.computed __type __id "voice_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_lex_bot (aws_lex_bot ?id ?version ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?version ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
