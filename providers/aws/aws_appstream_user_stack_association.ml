(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appstream_user_stack_association = {
  authentication_type : string prop;
  id : string prop option; [@option]
  send_email_notification : bool prop option; [@option]
  stack_name : string prop;
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appstream_user_stack_association) -> ()

let yojson_of_aws_appstream_user_stack_association =
  (function
   | {
       authentication_type = v_authentication_type;
       id = v_id;
       send_email_notification = v_send_email_notification;
       stack_name = v_stack_name;
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
         let arg = yojson_of_prop yojson_of_string v_stack_name in
         ("stack_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_type
         in
         ("authentication_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_appstream_user_stack_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appstream_user_stack_association

[@@@deriving.end]

let aws_appstream_user_stack_association ?id ?send_email_notification
    ~authentication_type ~stack_name ~user_name () :
    aws_appstream_user_stack_association =
  {
    authentication_type;
    id;
    send_email_notification;
    stack_name;
    user_name;
  }

type t = {
  tf_name : string;
  authentication_type : string prop;
  id : string prop;
  send_email_notification : bool prop;
  stack_name : string prop;
  user_name : string prop;
}

let make ?id ?send_email_notification ~authentication_type
    ~stack_name ~user_name __id =
  let __type = "aws_appstream_user_stack_association" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_type =
         Prop.computed __type __id "authentication_type";
       id = Prop.computed __type __id "id";
       send_email_notification =
         Prop.computed __type __id "send_email_notification";
       stack_name = Prop.computed __type __id "stack_name";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_user_stack_association
        (aws_appstream_user_stack_association ?id
           ?send_email_notification ~authentication_type ~stack_name
           ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_email_notification
    ~authentication_type ~stack_name ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_email_notification ~authentication_type
      ~stack_name ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
