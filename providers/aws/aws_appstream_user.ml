(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appstream_user = {
  authentication_type : string prop;
  enabled : bool prop option; [@option]
  first_name : string prop option; [@option]
  id : string prop option; [@option]
  last_name : string prop option; [@option]
  send_email_notification : bool prop option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_user) -> ()

let yojson_of_aws_appstream_user =
  (function
   | {
       authentication_type = v_authentication_type;
       enabled = v_enabled;
       first_name = v_first_name;
       id = v_id;
       last_name = v_last_name;
       send_email_notification = v_send_email_notification;
       user_name = v_user_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         match v_send_email_notification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_email_notification", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
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
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_appstream_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_user

[@@@deriving.end]

let aws_appstream_user ?enabled ?first_name ?id ?last_name
    ?send_email_notification ~authentication_type ~user_name () :
    aws_appstream_user =
  {
    authentication_type;
    enabled;
    first_name;
    id;
    last_name;
    send_email_notification;
    user_name;
  }

type t = {
  tf_name : string;
  arn : string prop;
  authentication_type : string prop;
  created_time : string prop;
  enabled : bool prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  send_email_notification : bool prop;
  user_name : string prop;
}

let make ?enabled ?first_name ?id ?last_name ?send_email_notification
    ~authentication_type ~user_name __id =
  let __type = "aws_appstream_user" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       created_time = Prop.computed __type __id "created_time";
       enabled = Prop.computed __type __id "enabled";
       first_name = Prop.computed __type __id "first_name";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       send_email_notification =
         Prop.computed __type __id "send_email_notification";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_user
        (aws_appstream_user ?enabled ?first_name ?id ?last_name
           ?send_email_notification ~authentication_type ~user_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?first_name ?id ?last_name
    ?send_email_notification ~authentication_type ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?first_name ?id ?last_name ?send_email_notification
      ~authentication_type ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
