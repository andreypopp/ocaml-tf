(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_connect_instance__timeouts *)

type aws_connect_instance = {
  auto_resolve_best_voices_enabled : bool prop option; [@option]
      (** auto_resolve_best_voices_enabled *)
  contact_flow_logs_enabled : bool prop option; [@option]
      (** contact_flow_logs_enabled *)
  contact_lens_enabled : bool prop option; [@option]
      (** contact_lens_enabled *)
  directory_id : string prop option; [@option]  (** directory_id *)
  early_media_enabled : bool prop option; [@option]
      (** early_media_enabled *)
  id : string prop option; [@option]  (** id *)
  identity_management_type : string prop;
      (** identity_management_type *)
  inbound_calls_enabled : bool prop;  (** inbound_calls_enabled *)
  instance_alias : string prop option; [@option]
      (** instance_alias *)
  multi_party_conference_enabled : bool prop option; [@option]
      (** multi_party_conference_enabled *)
  outbound_calls_enabled : bool prop;  (** outbound_calls_enabled *)
  timeouts : aws_connect_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_instance *)

let aws_connect_instance ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?id ?instance_alias
    ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled __resource_id =
  let __resource_type = "aws_connect_instance" in
  let __resource =
    {
      auto_resolve_best_voices_enabled;
      contact_flow_logs_enabled;
      contact_lens_enabled;
      directory_id;
      early_media_enabled;
      id;
      identity_management_type;
      inbound_calls_enabled;
      instance_alias;
      multi_party_conference_enabled;
      outbound_calls_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_instance __resource);
  ()
