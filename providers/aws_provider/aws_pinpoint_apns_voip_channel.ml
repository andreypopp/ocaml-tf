(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_pinpoint_apns_voip_channel = {
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
(** aws_pinpoint_apns_voip_channel *)

let aws_pinpoint_apns_voip_channel ?bundle_id ?certificate
    ?default_authentication_method ?enabled ?id ?private_key ?team_id
    ?token_key ?token_key_id ~application_id __resource_id =
  let __resource_type = "aws_pinpoint_apns_voip_channel" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_pinpoint_apns_voip_channel __resource);
  ()
