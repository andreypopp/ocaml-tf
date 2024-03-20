(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_detective_member = {
  account_id : string prop;  (** account_id *)
  disable_email_notification : bool prop option; [@option]
      (** disable_email_notification *)
  email_address : string prop;  (** email_address *)
  graph_arn : string prop;  (** graph_arn *)
  id : string prop option; [@option]  (** id *)
  message : string prop option; [@option]  (** message *)
}
[@@deriving yojson_of]
(** aws_detective_member *)

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
