(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_pinpoint_apns_channel ?bundle_id ?certificate
    ?default_authentication_method ?enabled ?id ?private_key ?team_id
    ?token_key ?token_key_id ~application_id () :
    aws_pinpoint_apns_channel =
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

let make ?bundle_id ?certificate ?default_authentication_method
    ?enabled ?id ?private_key ?team_id ?token_key ?token_key_id
    ~application_id __id =
  let __type = "aws_pinpoint_apns_channel" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       bundle_id = Prop.computed __type __id "bundle_id";
       certificate = Prop.computed __type __id "certificate";
       default_authentication_method =
         Prop.computed __type __id "default_authentication_method";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       private_key = Prop.computed __type __id "private_key";
       team_id = Prop.computed __type __id "team_id";
       token_key = Prop.computed __type __id "token_key";
       token_key_id = Prop.computed __type __id "token_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_apns_channel
        (aws_pinpoint_apns_channel ?bundle_id ?certificate
           ?default_authentication_method ?enabled ?id ?private_key
           ?team_id ?token_key ?token_key_id ~application_id ());
    attrs = __attrs;
  }

let register ?tf_module ?bundle_id ?certificate
    ?default_authentication_method ?enabled ?id ?private_key ?team_id
    ?token_key ?token_key_id ~application_id __id =
  let (r : _ Tf_core.resource) =
    make ?bundle_id ?certificate ?default_authentication_method
      ?enabled ?id ?private_key ?team_id ?token_key ?token_key_id
      ~application_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
