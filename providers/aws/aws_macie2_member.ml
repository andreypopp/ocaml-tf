(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_macie2_member = {
  account_id : string prop;  (** account_id *)
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
  invitation_disable_email_notification : bool prop option; [@option]
      (** invitation_disable_email_notification *)
  invitation_message : string prop option; [@option]
      (** invitation_message *)
  invite : bool prop option; [@option]  (** invite *)
  status : string prop option; [@option]  (** status *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_macie2_member *)

let timeouts ?create ?update () : timeouts = { create; update }

let aws_macie2_member ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email () : aws_macie2_member =
  {
    account_id;
    email;
    id;
    invitation_disable_email_notification;
    invitation_message;
    invite;
    status;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  account_id : string prop;
  administrator_account_id : string prop;
  arn : string prop;
  email : string prop;
  id : string prop;
  invitation_disable_email_notification : bool prop;
  invitation_message : string prop;
  invite : bool prop;
  invited_at : string prop;
  master_account_id : string prop;
  relationship_status : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  updated_at : string prop;
}

let make ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email __id =
  let __type = "aws_macie2_member" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       administrator_account_id =
         Prop.computed __type __id "administrator_account_id";
       arn = Prop.computed __type __id "arn";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       invitation_disable_email_notification =
         Prop.computed __type __id
           "invitation_disable_email_notification";
       invitation_message =
         Prop.computed __type __id "invitation_message";
       invite = Prop.computed __type __id "invite";
       invited_at = Prop.computed __type __id "invited_at";
       master_account_id =
         Prop.computed __type __id "master_account_id";
       relationship_status =
         Prop.computed __type __id "relationship_status";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_member
        (aws_macie2_member ?id ?invitation_disable_email_notification
           ?invitation_message ?invite ?status ?tags ?tags_all
           ?timeouts ~account_id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email __id =
  let (r : _ Tf_core.resource) =
    make ?id ?invitation_disable_email_notification
      ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
      ~account_id ~email __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
