(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_core_network_policy_attachment = {
  core_network_id : string prop;  (** core_network_id *)
  id : string prop option; [@option]  (** id *)
  policy_document : string prop;  (** policy_document *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_core_network_policy_attachment *)

let timeouts ?update () : timeouts = { update }

let aws_networkmanager_core_network_policy_attachment ?id ?timeouts
    ~core_network_id ~policy_document () :
    aws_networkmanager_core_network_policy_attachment =
  { core_network_id; id; policy_document; timeouts }

type t = {
  core_network_id : string prop;
  id : string prop;
  policy_document : string prop;
  state : string prop;
}

let make ?id ?timeouts ~core_network_id ~policy_document __id =
  let __type = "aws_networkmanager_core_network_policy_attachment" in
  let __attrs =
    ({
       core_network_id = Prop.computed __type __id "core_network_id";
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_core_network_policy_attachment
        (aws_networkmanager_core_network_policy_attachment ?id
           ?timeouts ~core_network_id ~policy_document ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~core_network_id
    ~policy_document __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~core_network_id ~policy_document __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
