(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_networkmanager_site_to_site_vpn_attachment = {
  core_network_id : string prop;  (** core_network_id *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpn_connection_arn : string prop;  (** vpn_connection_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_site_to_site_vpn_attachment *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_site_to_site_vpn_attachment ?id ?tags
    ?tags_all ?timeouts ~core_network_id ~vpn_connection_arn () :
    aws_networkmanager_site_to_site_vpn_attachment =
  {
    core_network_id;
    id;
    tags;
    tags_all;
    vpn_connection_arn;
    timeouts;
  }

type t = {
  arn : string prop;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpn_connection_arn : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~core_network_id
    ~vpn_connection_arn __id =
  let __type = "aws_networkmanager_site_to_site_vpn_attachment" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
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
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpn_connection_arn =
         Prop.computed __type __id "vpn_connection_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_site_to_site_vpn_attachment
        (aws_networkmanager_site_to_site_vpn_attachment ?id ?tags
           ?tags_all ?timeouts ~core_network_id ~vpn_connection_arn
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~core_network_id ~vpn_connection_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~core_network_id
      ~vpn_connection_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
