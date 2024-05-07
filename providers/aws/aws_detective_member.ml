(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_member = {
  account_id : string prop;
  disable_email_notification : bool prop option; [@option]
  email_address : string prop;
  graph_arn : string prop;
  id : string prop option; [@option]
  message : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_detective_member) -> ()

let yojson_of_aws_detective_member =
  (function
   | {
       account_id = v_account_id;
       disable_email_notification = v_disable_email_notification;
       email_address = v_email_address;
       graph_arn = v_graph_arn;
       id = v_id;
       message = v_message;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
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
         let arg = yojson_of_prop yojson_of_string v_graph_arn in
         ("graph_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       let bnds =
         match v_disable_email_notification with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_email_notification", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_detective_member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_detective_member

[@@@deriving.end]

let aws_detective_member ?disable_email_notification ?id ?message
    ~account_id ~email_address ~graph_arn () : aws_detective_member =
  {
    account_id;
    disable_email_notification;
    email_address;
    graph_arn;
    id;
    message;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  administrator_id : string prop;
  disable_email_notification : bool prop;
  disabled_reason : string prop;
  email_address : string prop;
  graph_arn : string prop;
  id : string prop;
  invited_time : string prop;
  message : string prop;
  status : string prop;
  updated_time : string prop;
  volume_usage_in_bytes : string prop;
}

let make ?disable_email_notification ?id ?message ~account_id
    ~email_address ~graph_arn __id =
  let __type = "aws_detective_member" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       administrator_id =
         Prop.computed __type __id "administrator_id";
       disable_email_notification =
         Prop.computed __type __id "disable_email_notification";
       disabled_reason = Prop.computed __type __id "disabled_reason";
       email_address = Prop.computed __type __id "email_address";
       graph_arn = Prop.computed __type __id "graph_arn";
       id = Prop.computed __type __id "id";
       invited_time = Prop.computed __type __id "invited_time";
       message = Prop.computed __type __id "message";
       status = Prop.computed __type __id "status";
       updated_time = Prop.computed __type __id "updated_time";
       volume_usage_in_bytes =
         Prop.computed __type __id "volume_usage_in_bytes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_detective_member
        (aws_detective_member ?disable_email_notification ?id
           ?message ~account_id ~email_address ~graph_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?disable_email_notification ?id ?message
    ~account_id ~email_address ~graph_arn __id =
  let (r : _ Tf_core.resource) =
    make ?disable_email_notification ?id ?message ~account_id
      ~email_address ~graph_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
