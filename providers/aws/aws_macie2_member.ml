(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?invitation_disable_email_notification
    ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
    ~account_id ~email __resource_id =
  let __resource_type = "aws_macie2_member" in
  let __resource =
    aws_macie2_member ?id ?invitation_disable_email_notification
      ?invitation_message ?invite ?status ?tags ?tags_all ?timeouts
      ~account_id ~email ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_member __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       administrator_account_id =
         Prop.computed __resource_type __resource_id
           "administrator_account_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       email = Prop.computed __resource_type __resource_id "email";
       id = Prop.computed __resource_type __resource_id "id";
       invitation_disable_email_notification =
         Prop.computed __resource_type __resource_id
           "invitation_disable_email_notification";
       invitation_message =
         Prop.computed __resource_type __resource_id
           "invitation_message";
       invite = Prop.computed __resource_type __resource_id "invite";
       invited_at =
         Prop.computed __resource_type __resource_id "invited_at";
       master_account_id =
         Prop.computed __resource_type __resource_id
           "master_account_id";
       relationship_status =
         Prop.computed __resource_type __resource_id
           "relationship_status";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       updated_at =
         Prop.computed __resource_type __resource_id "updated_at";
     }
      : t)
  in
  __resource_attributes
