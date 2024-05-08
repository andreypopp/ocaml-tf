(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type conversation_logs__log_settings = {
  destination : string prop;
  kms_key_arn : string prop option; [@option]
  log_type : string prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conversation_logs__log_settings) -> ()

let yojson_of_conversation_logs__log_settings =
  (function
   | {
       destination = v_destination;
       kms_key_arn = v_kms_key_arn;
       log_type = v_log_type;
       resource_arn = v_resource_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_type in
         ("log_type", arg) :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_destination in
         ("destination", arg) :: bnds
       in
       `Assoc bnds
    : conversation_logs__log_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conversation_logs__log_settings

[@@@deriving.end]

type conversation_logs = {
  iam_role_arn : string prop;
  log_settings : conversation_logs__log_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : conversation_logs) -> ()

let yojson_of_conversation_logs =
  (function
   | { iam_role_arn = v_iam_role_arn; log_settings = v_log_settings }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_log_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_conversation_logs__log_settings)
               v_log_settings
           in
           let bnd = "log_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_role_arn in
         ("iam_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : conversation_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_conversation_logs

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_lex_bot_alias = {
  bot_name : string prop;
  bot_version : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  conversation_logs : conversation_logs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_bot_alias) -> ()

let yojson_of_aws_lex_bot_alias =
  (function
   | {
       bot_name = v_bot_name;
       bot_version = v_bot_version;
       description = v_description;
       id = v_id;
       name = v_name;
       conversation_logs = v_conversation_logs;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_conversation_logs then bnds
         else
           let arg =
             (yojson_of_list yojson_of_conversation_logs)
               v_conversation_logs
           in
           let bnd = "conversation_logs", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_version in
         ("bot_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lex_bot_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_bot_alias

[@@@deriving.end]

let conversation_logs__log_settings ?kms_key_arn ~destination
    ~log_type ~resource_arn () : conversation_logs__log_settings =
  { destination; kms_key_arn; log_type; resource_arn }

let conversation_logs ~iam_role_arn ~log_settings () :
    conversation_logs =
  { iam_role_arn; log_settings }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lex_bot_alias ?description ?id ?(conversation_logs = [])
    ?timeouts ~bot_name ~bot_version ~name () : aws_lex_bot_alias =
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
  tf_name : string;
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

let make ?description ?id ?(conversation_logs = []) ?timeouts
    ~bot_name ~bot_version ~name __id =
  let __type = "aws_lex_bot_alias" in
  let __attrs =
    ({
       tf_name = __id;
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
        (aws_lex_bot_alias ?description ?id ~conversation_logs
           ?timeouts ~bot_name ~bot_version ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?(conversation_logs = [])
    ?timeouts ~bot_name ~bot_version ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~conversation_logs ?timeouts ~bot_name
      ~bot_version ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
