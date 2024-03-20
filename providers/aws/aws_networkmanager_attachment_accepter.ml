(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_attachment_accepter = {
  attachment_id : string prop;  (** attachment_id *)
  attachment_type : string prop;  (** attachment_type *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_attachment_accepter *)

let timeouts ?create () : timeouts = { create }

let aws_networkmanager_attachment_accepter ?id ?timeouts
    ~attachment_id ~attachment_type () :
    aws_networkmanager_attachment_accepter =
  { attachment_id; attachment_type; id; timeouts }

type t = {
  attachment_id : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
}

let make ?id ?timeouts ~attachment_id ~attachment_type __id =
  let __type = "aws_networkmanager_attachment_accepter" in
  let __attrs =
    ({
       attachment_id = Prop.computed __type __id "attachment_id";
       attachment_policy_rule_number =
         Prop.computed __type __id "attachment_policy_rule_number";
       attachment_type = Prop.computed __type __id "attachment_type";
       core_network_arn =
         Prop.computed __type __id "core_network_arn";
       core_network_id = Prop.computed __type __id "core_network_id";
       edge_location = Prop.computed __type __id "edge_location";
       id = Prop.computed __type __id "id";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       resource_arn = Prop.computed __type __id "resource_arn";
       segment_name = Prop.computed __type __id "segment_name";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_attachment_accepter
        (aws_networkmanager_attachment_accepter ?id ?timeouts
           ~attachment_id ~attachment_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~attachment_id ~attachment_type
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~attachment_id ~attachment_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
