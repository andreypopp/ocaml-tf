(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_connect_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_connect_instance__timeouts *)

type aws_connect_instance = {
  auto_resolve_best_voices_enabled : bool option; [@option]
      (** auto_resolve_best_voices_enabled *)
  contact_flow_logs_enabled : bool option; [@option]
      (** contact_flow_logs_enabled *)
  contact_lens_enabled : bool option; [@option]
      (** contact_lens_enabled *)
  directory_id : string option; [@option]  (** directory_id *)
  early_media_enabled : bool option; [@option]
      (** early_media_enabled *)
  identity_management_type : string;  (** identity_management_type *)
  inbound_calls_enabled : bool;  (** inbound_calls_enabled *)
  instance_alias : string option; [@option]  (** instance_alias *)
  multi_party_conference_enabled : bool option; [@option]
      (** multi_party_conference_enabled *)
  outbound_calls_enabled : bool;  (** outbound_calls_enabled *)
  timeouts : aws_connect_instance__timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_instance *)

let aws_connect_instance ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?instance_alias
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