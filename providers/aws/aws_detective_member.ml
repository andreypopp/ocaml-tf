(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_detective_member ?disable_email_notification ?id ?message
    ~account_id ~email_address ~graph_arn __resource_id =
  let __resource_type = "aws_detective_member" in
  let __resource =
    ({
       account_id;
       disable_email_notification;
       email_address;
       graph_arn;
       id;
       message;
     }
      : aws_detective_member)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_detective_member __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       administrator_id =
         Prop.computed __resource_type __resource_id
           "administrator_id";
       disable_email_notification =
         Prop.computed __resource_type __resource_id
           "disable_email_notification";
       disabled_reason =
         Prop.computed __resource_type __resource_id
           "disabled_reason";
       email_address =
         Prop.computed __resource_type __resource_id "email_address";
       graph_arn =
         Prop.computed __resource_type __resource_id "graph_arn";
       id = Prop.computed __resource_type __resource_id "id";
       invited_time =
         Prop.computed __resource_type __resource_id "invited_time";
       message =
         Prop.computed __resource_type __resource_id "message";
       status = Prop.computed __resource_type __resource_id "status";
       updated_time =
         Prop.computed __resource_type __resource_id "updated_time";
       volume_usage_in_bytes =
         Prop.computed __resource_type __resource_id
           "volume_usage_in_bytes";
     }
      : t)
  in
  __resource_attributes
