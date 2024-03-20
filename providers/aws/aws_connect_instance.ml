(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?auto_resolve_best_voices_enabled ?contact_flow_logs_enabled
    ?contact_lens_enabled ?directory_id ?early_media_enabled ?id
    ?instance_alias ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled __id =
  let __type = "aws_connect_instance" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_resolve_best_voices_enabled =
         Prop.computed __type __id "auto_resolve_best_voices_enabled";
       contact_flow_logs_enabled =
         Prop.computed __type __id "contact_flow_logs_enabled";
       contact_lens_enabled =
         Prop.computed __type __id "contact_lens_enabled";
       created_time = Prop.computed __type __id "created_time";
       directory_id = Prop.computed __type __id "directory_id";
       early_media_enabled =
         Prop.computed __type __id "early_media_enabled";
       id = Prop.computed __type __id "id";
       identity_management_type =
         Prop.computed __type __id "identity_management_type";
       inbound_calls_enabled =
         Prop.computed __type __id "inbound_calls_enabled";
       instance_alias = Prop.computed __type __id "instance_alias";
       multi_party_conference_enabled =
         Prop.computed __type __id "multi_party_conference_enabled";
       outbound_calls_enabled =
         Prop.computed __type __id "outbound_calls_enabled";
       service_role = Prop.computed __type __id "service_role";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_instance
        (aws_connect_instance ?auto_resolve_best_voices_enabled
           ?contact_flow_logs_enabled ?contact_lens_enabled
           ?directory_id ?early_media_enabled ?id ?instance_alias
           ?multi_party_conference_enabled ?timeouts
           ~identity_management_type ~inbound_calls_enabled
           ~outbound_calls_enabled ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_resolve_best_voices_enabled
    ?contact_flow_logs_enabled ?contact_lens_enabled ?directory_id
    ?early_media_enabled ?id ?instance_alias
    ?multi_party_conference_enabled ?timeouts
    ~identity_management_type ~inbound_calls_enabled
    ~outbound_calls_enabled __id =
  let (r : _ Tf_core.resource) =
    make ?auto_resolve_best_voices_enabled ?contact_flow_logs_enabled
      ?contact_lens_enabled ?directory_id ?early_media_enabled ?id
      ?instance_alias ?multi_party_conference_enabled ?timeouts
      ~identity_management_type ~inbound_calls_enabled
      ~outbound_calls_enabled __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
