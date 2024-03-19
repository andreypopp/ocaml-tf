(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_connect_instance *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_connect_instance ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?id ?instance_alias
    ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled () : aws_connect_instance =
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

type t = {
  arn : string prop;
  auto_resolve_best_voices_enabled : bool prop;
  contact_flow_logs_enabled : bool prop;
  contact_lens_enabled : bool prop;
  created_time : string prop;
  directory_id : string prop;
  early_media_enabled : bool prop;
  id : string prop;
  identity_management_type : string prop;
  inbound_calls_enabled : bool prop;
  instance_alias : string prop;
  multi_party_conference_enabled : bool prop;
  outbound_calls_enabled : bool prop;
  service_role : string prop;
  status : string prop;
}

let register ?tf_module ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?id ?instance_alias
    ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled __resource_id =
  let __resource_type = "aws_connect_instance" in
  let __resource =
    aws_connect_instance ?auto_resolve_best_voices_enabled
      ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
      ?early_media_enabled ?id ?instance_alias
      ?multi_party_conference_enabled ?timeouts
      ~identity_management_type ~inbound_calls_enabled
      ~outbound_calls_enabled ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_instance __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       auto_resolve_best_voices_enabled =
         Prop.computed __resource_type __resource_id
           "auto_resolve_best_voices_enabled";
       contact_flow_logs_enabled =
         Prop.computed __resource_type __resource_id
           "contact_flow_logs_enabled";
       contact_lens_enabled =
         Prop.computed __resource_type __resource_id
           "contact_lens_enabled";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       directory_id =
         Prop.computed __resource_type __resource_id "directory_id";
       early_media_enabled =
         Prop.computed __resource_type __resource_id
           "early_media_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       identity_management_type =
         Prop.computed __resource_type __resource_id
           "identity_management_type";
       inbound_calls_enabled =
         Prop.computed __resource_type __resource_id
           "inbound_calls_enabled";
       instance_alias =
         Prop.computed __resource_type __resource_id "instance_alias";
       multi_party_conference_enabled =
         Prop.computed __resource_type __resource_id
           "multi_party_conference_enabled";
       outbound_calls_enabled =
         Prop.computed __resource_type __resource_id
           "outbound_calls_enabled";
       service_role =
         Prop.computed __resource_type __resource_id "service_role";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
