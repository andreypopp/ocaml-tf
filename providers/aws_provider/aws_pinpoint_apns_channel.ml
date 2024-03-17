(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_apns_channel = {
  application_id : string prop;  (** application_id *)
  bundle_id : string prop option; [@option]  (** bundle_id *)
  certificate : string prop option; [@option]  (** certificate *)
  default_authentication_method : string prop option; [@option]
      (** default_authentication_method *)
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  private_key : string prop option; [@option]  (** private_key *)
  team_id : string prop option; [@option]  (** team_id *)
  token_key : string prop option; [@option]  (** token_key *)
  token_key_id : string prop option; [@option]  (** token_key_id *)
}
[@@deriving yojson_of]
(** aws_pinpoint_apns_channel *)

type t = {
  application_id : string prop;
  bundle_id : string prop;
  certificate : string prop;
  default_authentication_method : string prop;
  enabled : bool prop;
  id : string prop;
  private_key : string prop;
  team_id : string prop;
  token_key : string prop;
  token_key_id : string prop;
}

let aws_pinpoint_apns_channel ?bundle_id ?certificate
    ?default_authentication_method ?enabled ?id ?private_key ?team_id
    ?token_key ?token_key_id ~application_id __resource_id =
  let __resource_type = "aws_pinpoint_apns_channel" in
  let __resource =
    ({
       application_id;
       bundle_id;
       certificate;
       default_authentication_method;
       enabled;
       id;
       private_key;
       team_id;
       token_key;
       token_key_id;
     }
      : aws_pinpoint_apns_channel)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_apns_channel __resource);
  let __resource_attributes =
    ({
       application_id =
         Prop.computed __resource_type __resource_id "application_id";
       bundle_id =
         Prop.computed __resource_type __resource_id "bundle_id";
       certificate =
         Prop.computed __resource_type __resource_id "certificate";
       default_authentication_method =
         Prop.computed __resource_type __resource_id
           "default_authentication_method";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       id = Prop.computed __resource_type __resource_id "id";
       private_key =
         Prop.computed __resource_type __resource_id "private_key";
       team_id =
         Prop.computed __resource_type __resource_id "team_id";
       token_key =
         Prop.computed __resource_type __resource_id "token_key";
       token_key_id =
         Prop.computed __resource_type __resource_id "token_key_id";
     }
      : t)
  in
  __resource_attributes
