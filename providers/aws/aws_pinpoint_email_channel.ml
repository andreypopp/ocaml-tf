(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_email_channel = {
  application_id : string prop;  (** application_id *)
  configuration_set : string prop option; [@option]
      (** configuration_set *)
  enabled : bool prop option; [@option]  (** enabled *)
  from_address : string prop;  (** from_address *)
  id : string prop option; [@option]  (** id *)
  identity : string prop;  (** identity *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_pinpoint_email_channel *)

type t = {
  application_id : string prop;
  configuration_set : string prop;
  enabled : bool prop;
  from_address : string prop;
  id : string prop;
  identity : string prop;
  messages_per_second : float prop;
  role_arn : string prop;
}

let aws_pinpoint_email_channel ?configuration_set ?enabled ?id
    ?role_arn ~application_id ~from_address ~identity __resource_id =
  let __resource_type = "aws_pinpoint_email_channel" in
  let __resource =
    ({
       application_id;
       configuration_set;
       enabled;
       from_address;
       id;
       identity;
       role_arn;
     }
      : aws_pinpoint_email_channel)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_email_channel __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       configuration_set =
         Prop.computed __resource_type __resource_id
           "configuration_set";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       from_address =
         Prop.computed __resource_type __resource_id "from_address";
       id = Prop.computed __resource_type __resource_id "id";
       identity =
         Prop.computed __resource_type __resource_id "identity";
       messages_per_second =
         Prop.computed __resource_type __resource_id
           "messages_per_second";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
     }
      : t)
  in
  __resource_attributes
